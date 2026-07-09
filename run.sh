source /data/setenv.bash
export TRITON_ALWAYS_COMPILE=1
export TRITON_DEBUG=1

export TRITON_CACHE_DIR=/data/c00961524/0704/triton_cache
export TRITON_PRINT_AUTOTUNING=1
export TRITON_BENCH_METHOD='npu'

rm -r $TRITON_CACHE_DIR
ASCEND_RT_VISIBLE_DEVICES=5 pytest -sv /data/w00609825/mojo_opset/mojo_opset/tests/accuracy/functions/test_attention.py::test_swa_function_perf 2>&1 | tee /data/w00609825/mojo_opset/run.log
