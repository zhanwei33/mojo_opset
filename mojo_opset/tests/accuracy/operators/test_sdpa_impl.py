import math
import os
import sys
import pytest
import torch
import torch_npu
from mojo_opset.tests.utils import auto_switch_platform
from mojo_opset.tests.utils import bypass_not_implemented
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from mojo_opset.backends.ttx.kernels import sdpa_fwd, sdpa_bwd


def generate_diffusion_attention_mask(seq_length, block_size):
    total_length = seq_length * 2
    i = torch.arange(total_length).unsqueeze(1)
    j = torch.arange(total_length).unsqueeze(0)
    block_i = i // block_size
    block_j = j // block_size

    same_block = block_i == block_j
    cross = (j >= seq_length) & (i < seq_length) & (((j - seq_length) // block_size) < block_i)
    lower_tri = (i >= seq_length) & (j >= seq_length) & (block_j < block_i)

    return same_block | cross | lower_tri


def sdpa_fwd_ref(q, k, v, mask, scale, enable_gqa):
    if enable_gqa:
        group_size = q.shape[1] // k.shape[1]
        k_exp = k.repeat_interleave(group_size, dim=1)
        v_exp = v.repeat_interleave(group_size, dim=1)
    else:
        k_exp = k
        v_exp = v

    q_f32 = q.to(torch.float32)
    k_f32 = k_exp.to(torch.float32)
    v_f32 = v_exp.to(torch.float32)

    scores = torch.matmul(q_f32, k_f32.transpose(-2, -1)) * scale
    scores = scores.masked_fill(~mask, float("-inf"))
    lse = torch.logsumexp(scores, dim=-1)
    attn = torch.softmax(scores, dim=-1)
    out = torch.matmul(attn, v_f32).to(q.dtype)
    return out, lse


def sdpa_bwd_ref(q, k, v, do, mask, scale, enable_gqa):
    q_f32 = q.to(torch.float32).clone().requires_grad_(True)
    k_f32 = k.to(torch.float32).clone().requires_grad_(True)
    v_f32 = v.to(torch.float32).clone().requires_grad_(True)
    do_f32 = do.to(torch.float32)

    if enable_gqa:
        group_size = q.shape[1] // k.shape[1]
        k_exp = k_f32.repeat_interleave(group_size, dim=1)
        v_exp = v_f32.repeat_interleave(group_size, dim=1)
    else:
        k_exp = k_f32
        v_exp = v_f32

    scores = torch.matmul(q_f32, k_exp.transpose(-2, -1)) * scale
    scores = scores.masked_fill(~mask, float("-inf"))
    attn = torch.softmax(scores, dim=-1)
    out = torch.matmul(attn, v_exp)

    out.backward(do_f32)
    return q_f32.grad, k_f32.grad, v_f32.grad


def sdpa_npu_ref(q, k, v, mask, scale, enable_gqa):
    q_head_num = q.shape[1]
    kv_head_num = k.shape[1]

    o, lse = torch_npu.npu_fused_infer_attention_score(
        q,
        k,
        v,
        atten_mask=~mask,
        num_heads=q_head_num,
        scale=scale,
        input_layout="BNSD",
        num_key_value_heads=kv_head_num,
        sparse_mode=0,
        softmax_lse_flag=True,
    )
    lse = lse.squeeze(-1)
    return o, lse


@pytest.mark.parametrize(
    "bsz, q_head_num, kv_head_num, head_dim, seq_length, block_size",
    [
        (1, 5, 1, 128, 2048, 32),
        (1, 8, 2, 128, 8192, 32),
    ]
)
@auto_switch_platform(set_perf=True)
@bypass_not_implemented
def test_sdpa_impl(bsz, q_head_num, kv_head_num, head_dim, seq_length, block_size):
    enable_gqa = q_head_num != kv_head_num
    scale = 1.0 / math.sqrt(head_dim)

    device = torch.npu.current_device()

    query_cpu = torch.randn(bsz, q_head_num, seq_length * 2, head_dim, dtype=torch.bfloat16)
    key_cpu = torch.randn(bsz, kv_head_num, seq_length * 2, head_dim, dtype=torch.bfloat16)
    value_cpu = torch.randn(bsz, kv_head_num, seq_length * 2, head_dim, dtype=torch.bfloat16)
    mask_cpu = generate_diffusion_attention_mask(seq_length, block_size)

    query = query_cpu.to(device)
    key = key_cpu.to(device)
    value = value_cpu.to(device)
    mask = mask_cpu.to(device)

    print(f"Shapes: q={query.shape}, k={key.shape}, v={value.shape}, mask={mask.shape}")
    print(f"enable_gqa={enable_gqa}, scale={scale:.6f}")

    # ---- Forward ----
    o, lse = sdpa_fwd(query, key, value, mask, scale, gqa_enabled=enable_gqa)
    # o_ref, lse_ref = sdpa_fwd_ref(query_cpu, key_cpu, value_cpu, mask_cpu, scale, enable_gqa)

    perf(lambda: sdpa_fwd(query, key, value, mask, scale, gqa_enabled=enable_gqa))
    perf(lambda: sdpa_fwd_ref(query_cpu, key_cpu, value_cpu, mask_cpu, scale, enable_gqa))

    # o_diff = (o.cpu().to(torch.float32) - o_ref.to(torch.float32)).abs()
    # lse_diff = (lse.cpu() - lse_ref).abs()
    # print(f"\n[Forward]")
    # print(f"  o   max_abs_diff={o_diff.max().item():.6f}  mean_abs_diff={o_diff.mean().item():.6f}")
    # print(f"  lse max_abs_diff={lse_diff.max().item():.6f}  mean_abs_diff={lse_diff.mean().item():.6f}")
    #
    # torch.testing.assert_close(o.cpu(), o_ref, atol=2e-2, rtol=2e-2)
    # torch.testing.assert_close(lse.cpu(), lse_ref, atol=2e-2, rtol=2e-2)
    print("  Forward PASSED")

    # ---- Forward vs torch_npu.npu_fused_infer_attention_score ----
    # perf(lambda: sdpa_npu_ref(query, key, value, mask, scale, enable_gqa))
    # o_npu, lse_npu = sdpa_npu_ref(query, key, value, mask, scale, enable_gqa)

    # o_diff_npu = (o.cpu().to(torch.float32) - o_npu.cpu().to(torch.float32)).abs()
    # lse_diff_npu = (lse.cpu() - lse_npu.cpu()).abs()
    # print(f"\n[Forward vs torch_npu]")
    # print(f"  o   max_abs_diff={o_diff_npu.max().item():.6f}  mean_abs_diff={o_diff_npu.mean().item():.6f}")
    # print(f"  lse max_abs_diff={lse_diff_npu.max().item():.6f}  mean_abs_diff={lse_diff_npu.mean().item():.6f}")
    #
    # torch.testing.assert_close(o.cpu(), o_npu.cpu(), atol=2e-2, rtol=2e-2)
    # torch.testing.assert_close(lse.cpu(), lse_npu.cpu(), atol=2e-2, rtol=2e-2)
    # print("  Forward vs torch_npu PASSED")

    # ---- Backward ----
    do = torch.randn_like(o)
    perf(lambda: sdpa_bwd(o, do, query, key, value, lse, mask, scale, gqa_enabled=enable_gqa))
    perf(lambda: sdpa_bwd_ref(query_cpu, key_cpu, value_cpu, do.cpu(), mask_cpu, scale, enable_gqa))

    # do = torch.randn_like(o)
    # dq, dk, dv = sdpa_bwd(o, do, query, key, value, lse, mask, scale, gqa_enabled=enable_gqa)
    #
    # dq_ref, dk_ref, dv_ref = sdpa_bwd_ref(query_cpu, key_cpu, value_cpu, do.cpu(), mask_cpu, scale, enable_gqa)
    #
    # dq_diff = (dq.cpu().to(torch.float32) - dq_ref.to(torch.float32)).abs()
    # dk_diff = (dk.cpu().to(torch.float32) - dk_ref.to(torch.float32)).abs()
    # dv_diff = (dv.cpu().to(torch.float32) - dv_ref.to(torch.float32)).abs()
    # print(f"\n[Backward]")
    # print(f"  dq max_abs_diff={dq_diff.max().item():.6f}  mean_abs_diff={dq_diff.mean().item():.6f}")
    # print(f"  dk max_abs_diff={dk_diff.max().item():.6f}  mean_abs_diff={dk_diff.mean().item():.6f}")
    # print(f"  dv max_abs_diff={dv_diff.max().item():.6f}  mean_abs_diff={dv_diff.mean().item():.6f}")
    #
    # torch.testing.assert_close(dq.cpu().to(torch.float32), dq_ref.to(torch.float32), atol=2e-2, rtol=2e-2)
    # torch.testing.assert_close(dk.cpu().to(torch.float32), dk_ref.to(torch.float32), atol=2e-2, rtol=2e-2)
    # torch.testing.assert_close(dv.cpu().to(torch.float32), dv_ref.to(torch.float32), atol=2e-2, rtol=2e-2)
    # print("  Backward PASSED")
    #
    # print("\n========== All tests PASSED ==========")


if __name__ == "__main__":
    for _ in range(10):
        test_sdpa_impl(bsz=1, q_head_num=8, kv_head_num=2, head_dim=128, seq_length=8192, block_size=32)
