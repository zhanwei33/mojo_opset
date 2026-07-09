// -----// IR Dump After GraphSyncSolver (hivm-graph-sync-solver) //----- //
func.func @_attn_backward_preprocess(%arg0: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<sync_block_lock>}, %arg1: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<workspace>}, %arg2: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg3: memref<?xf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg4: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 1 : i32}, %arg5: i32 {tt.divisibility = 16 : i32}, %arg6: i32, %arg7: i32 {tt.divisibility = 16 : i32}, %arg8: i32, %arg9: i32, %arg10: i32) attributes {SyncBlockLockArgIdx = 0 : i64, WorkspaceArgIdx = 1 : i64, func_dyn_memref_args = dense<[true, true, true, true, true, false, false, false, false, false, false]> : vector<11xi1>, hacc.entry, hacc.function_kind = #hacc.function_kind<DEVICE>, hivm.func_core_type = #hivm.func_core_type<AIV>, hivm.vf_mode = #hivm.vf_mode<SIMD>, mix_mode = "aiv", parallel_mode = "simd"} {
  %alloca = memref.alloca() {hivm.multi_buffer_counter_for = 0 : i64} : memref<1xi64>
  %c0_i64 = arith.constant 0 : i64
  %c0 = arith.constant 0 : index
  memref.store %c0_i64, %alloca[%c0] : memref<1xi64>
  %c98560_i64 = arith.constant 98560 : i64
  %c49152_i64 = arith.constant 49152 : i64
  %c82176_i64 = arith.constant 82176 : i64
  %c32768_i64 = arith.constant 32768 : i64
  %c49408_i64 = arith.constant 49408 : i64
  %c0_i64_0 = arith.constant 0 : i64
  %c28_i32 = arith.constant 28 : i32
  %c128_i32 = arith.constant 128 : i32
  %c64_i32 = arith.constant 64 : i32
  %c56_i32 = arith.constant 56 : i32
  %0 = arith.muli %arg8, %arg9 : i32
  %1 = arith.muli %0, %arg10 : i32
  annotation.mark %1 {logical_block_num} : i32
  %2 = hivm.hir.get_block_idx -> i64
  %3 = arith.trunci %2 : i64 to i32
  %4 = arith.divsi %arg7, %c64_i32 : i32
  %5 = arith.muli %arg5, %arg6 : i32
  %6 = arith.muli %5, %4 : i32
  hivm.hir.set_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID0>]
  hivm.hir.set_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID1>]
  hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID0>]
  hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID1>]
  scf.for %arg11 = %3 to %1 step %c56_i32  : i32 {
    hivm.hir.set_ctrl false at ctrl[60]
    hivm.hir.set_ctrl true at ctrl[48]
    %7 = arith.remsi %arg11, %arg8 : i32
    scf.for %arg12 = %7 to %6 step %c28_i32  : i32 {
      %c0_1 = arith.constant 0 : index
      %8 = memref.load %alloca[%c0_1] : memref<1xi64>
      %c2_i64 = arith.constant 2 : i64
      %9 = arith.remui %8, %c2_i64 : i64
      %10 = arith.index_cast %9 : i64 to index
      %11 = arith.index_cast %10 : index to i1
      %c0_i64_2 = arith.constant 0 : i64
      %c1_i64 = arith.constant 1 : i64
      %12 = arith.select %11, %c0_i64_2, %c1_i64 : i64
      %13 = hivm.hir.pointer_cast(%c49152_i64, %c98560_i64) : memref<64xf32, #hivm.address_space<ub>>
      annotation.mark %13 {hivm.multi_buffer = 2 : i32} : memref<64xf32, #hivm.address_space<ub>>
      %14 = hivm.hir.pointer_cast(%c32768_i64, %c82176_i64) : memref<64x128xf16, #hivm.address_space<ub>>
      annotation.mark %14 {hivm.multi_buffer = 2 : i32} : memref<64x128xf16, #hivm.address_space<ub>>
      %15 = hivm.hir.pointer_cast(%c0_i64_0, %c49408_i64) : memref<64x128xf32, #hivm.address_space<ub>>
      annotation.mark %15 {hivm.multi_buffer = 2 : i32} : memref<64x128xf32, #hivm.address_space<ub>>
      %16 = arith.divsi %arg12, %4 : i32
      %17 = arith.muli %16, %4 : i32
      %18 = arith.subi %arg12, %17 : i32
      %19 = arith.muli %18, %c64_i32 : i32
      %20 = arith.muli %16, %c128_i32 : i32
      %21 = arith.muli %20, %arg7 : i32
      %22 = arith.index_cast %21 : i32 to index
      %23 = arith.index_cast %19 : i32 to index
      %24 = affine.apply affine_map<()[s0, s1] -> (s0 + s1 * 128)>()[%22, %23]
      %reinterpret_cast = memref.reinterpret_cast %arg2 to offset: [%24], sizes: [64, 128], strides: [128, 1] : memref<?xf32, #hivm.address_space<gm>> to memref<64x128xf32, strided<[128, 1], offset: ?>, #hivm.address_space<gm>>
      annotation.mark %15 {hivm.skip_stride_align_for_vload = #hivm.skip_stride_align_for_vload} : memref<64x128xf32, #hivm.address_space<ub>>
      %collapse_shape = memref.collapse_shape %reinterpret_cast [[0, 1]] : memref<64x128xf32, strided<[128, 1], offset: ?>, #hivm.address_space<gm>> into memref<8192xf32, strided<[1], offset: ?>, #hivm.address_space<gm>>
      %collapse_shape_3 = memref.collapse_shape %15 [[0, 1]] : memref<64x128xf32, #hivm.address_space<ub>> into memref<8192xf32, #hivm.address_space<ub>>
      hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE2>, %12]
      hivm.hir.load ins(%collapse_shape : memref<8192xf32, strided<[1], offset: ?>, #hivm.address_space<gm>>) outs(%collapse_shape_3 : memref<8192xf32, #hivm.address_space<ub>>) eviction_policy = <EvictFirst> core_type = <VECTOR>
      %reinterpret_cast_4 = memref.reinterpret_cast %arg3 to offset: [%24], sizes: [64, 128], strides: [128, 1] : memref<?xf16, #hivm.address_space<gm>> to memref<64x128xf16, strided<[128, 1], offset: ?>, #hivm.address_space<gm>>
      annotation.mark %14 {hivm.skip_stride_align_for_vload = #hivm.skip_stride_align_for_vload} : memref<64x128xf16, #hivm.address_space<ub>>
      %collapse_shape_5 = memref.collapse_shape %reinterpret_cast_4 [[0, 1]] : memref<64x128xf16, strided<[128, 1], offset: ?>, #hivm.address_space<gm>> into memref<8192xf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
      %collapse_shape_6 = memref.collapse_shape %14 [[0, 1]] : memref<64x128xf16, #hivm.address_space<ub>> into memref<8192xf16, #hivm.address_space<ub>>
      hivm.hir.load ins(%collapse_shape_5 : memref<8192xf16, strided<[1], offset: ?>, #hivm.address_space<gm>>) outs(%collapse_shape_6 : memref<8192xf16, #hivm.address_space<ub>>) eviction_policy = <EvictFirst> core_type = <VECTOR>
      hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_V>, <EVENT_ID0>]
      hivm.hir.wait_flag[<PIPE_MTE3>, <PIPE_V>, %12]
      hivm.hir.wait_flag[<PIPE_MTE2>, <PIPE_V>, <EVENT_ID0>]
      func.call @_attn_backward_preprocess_fused_0_outlined_vf_0(%15, %14, %13) {hivm.vector_function, no_inline} : (memref<64x128xf32, #hivm.address_space<ub>>, memref<64x128xf16, #hivm.address_space<ub>>, memref<64xf32, #hivm.address_space<ub>>) -> ()
      hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID0>]
      hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE2>, %12]
      %25 = arith.muli %16, %arg7 : i32
      %26 = arith.index_cast %25 : i32 to index
      %27 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%26, %23]
      %reinterpret_cast_7 = memref.reinterpret_cast %arg4 to offset: [%27], sizes: [64], strides: [1] : memref<?xf32, #hivm.address_space<gm>> to memref<64xf32, strided<[1], offset: ?>, #hivm.address_space<gm>>
      hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID0>]
      hivm.hir.pipe_barrier[<PIPE_MTE3>]
      hivm.hir.store ins(%13 : memref<64xf32, #hivm.address_space<ub>>) outs(%reinterpret_cast_7 : memref<64xf32, strided<[1], offset: ?>, #hivm.address_space<gm>>)
      hivm.hir.set_flag[<PIPE_MTE3>, <PIPE_V>, %12]
      %c1_i64_8 = arith.constant 1 : i64
      %28 = arith.addi %8, %c1_i64_8 : i64
      %c0_9 = arith.constant 0 : index
      memref.store %28, %alloca[%c0_9] : memref<1xi64>
    } {hivm.multi_buffer_loop_id = 0 : i64}
    hivm.hir.set_ctrl true at ctrl[60]
  } {autoblockify.subloop}
  hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID0>]
  hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID1>]
  hivm.hir.wait_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID0>]
  hivm.hir.wait_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID1>]
  hivm.hir.pipe_barrier[<PIPE_ALL>]
  return
}

bisheng: warning: the flag '--cce-aicore-input-parameter-size=1536' has been deprecated and will be ignored [-Wunused-command-line-argument]
