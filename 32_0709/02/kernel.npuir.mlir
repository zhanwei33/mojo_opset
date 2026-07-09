[WARNING] --enable-mixed-cv is deprecated.
// -----// IR Dump After GraphSyncSolver (hivm-graph-sync-solver) //----- //
func.func @fag_fp8_kernel_mix_aiv(%arg0: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<sync_block_lock>}, %arg1: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<workspace>}, %arg2: memref<?xf8E4M3FN, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg3: memref<?xf8E4M3FN, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg4: memref<?xf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg5: memref<?xf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg6: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 2 : i32}, %arg7: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 1 : i32}, %arg8: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 1 : i32}, %arg9: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg10: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg11: f32, %arg12: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg13: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg14: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32}, %arg15: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg16: i32, %arg17: i32, %arg18: i32) attributes {SyncBlockLockArgIdx = 0 : i64, WorkspaceArgIdx = 1 : i64, func_dyn_memref_args = dense<[true, true, true, true, true, true, true, true, true, true, true, false, true, true, true, true, false, false, false]> : vector<19xi1>, hacc.entry, hacc.function_kind = #hacc.function_kind<DEVICE>, hivm.func_core_type = #hivm.func_core_type<AIV>, hivm.part_of_mix, hivm.vf_mode = #hivm.vf_mode<SIMD>, mix_mode = "mix", parallel_mode = "simd"} {
  %c16896_i64 = arith.constant 16896 : i64
  %c256_i64 = arith.constant 256 : i64
  %c213760_i64 = arith.constant 213760 : i64
  %c0_i64 = arith.constant 0 : i64
  %c17152_i64 = arith.constant 17152 : i64
  %c180992_i64 = arith.constant 180992 : i64
  %c148224_i64 = arith.constant 148224 : i64
  %c115456_i64 = arith.constant 115456 : i64
  %c82688_i64 = arith.constant 82688 : i64
  %c49920_i64 = arith.constant 49920 : i64
  %c98304_i64 = arith.constant 98304 : i64
  %c81920_i64 = arith.constant 81920 : i64
  %c49152_i64 = arith.constant 49152 : i64
  %0 = llvm.mlir.constant(1024 : i64) : i64
  %1 = llvm.mlir.constant(0 : i64) : i64
  %2 = llvm.mlir.constant(0 : i32) : i32
  %c128_i32 = arith.constant 128 : i32
  %c28_i32 = arith.constant 28 : i32
  %c8192_i32 = arith.constant 8192 : i32
  %c0_i32 = arith.constant 0 : i32
  %c8_i32 = arith.constant 8 : i32
  %c1024_i32 = arith.constant 1024 : i32
  %c131072_i32 = arith.constant 131072 : i32
  %c1048576_i32 = arith.constant 1048576 : i32
  %3 = llvm.mlir.constant(4 : i64) : i64
  %4 = llvm.mlir.constant(1028 : i64) : i64
  %5 = llvm.mlir.constant(8 : i64) : i64
  %6 = llvm.mlir.constant(1032 : i64) : i64
  %7 = llvm.mlir.constant(12 : i64) : i64
  %8 = llvm.mlir.constant(1036 : i64) : i64
  %9 = llvm.mlir.constant(16 : i64) : i64
  %10 = llvm.mlir.constant(1040 : i64) : i64
  %11 = llvm.mlir.constant(20 : i64) : i64
  %12 = llvm.mlir.constant(1044 : i64) : i64
  %c1024_i64 = arith.constant 1024 : i64
  %c20_i64 = arith.constant 20 : i64
  %c8_i64 = arith.constant 8 : i64
  %c12_i64 = arith.constant 12 : i64
  %c4_i64 = arith.constant 4 : i64
  %c16_i64 = arith.constant 16 : i64
  %c2_i32 = arith.constant 2 : i32
  %c31_i32 = arith.constant 31 : i32
  %c1_i32 = arith.constant 1 : i32
  %c0 = arith.constant 0 : index
  %13 = arith.muli %arg16, %arg17 : i32
  %14 = arith.muli %13, %arg18 : i32
  %15 = hivm.hir.get_block_idx -> i64
  %16 = arith.trunci %15 : i64 to i32
  %17 = arith.remsi %16, %arg16 : i32
  %18 = llvm.inttoptr %1 : i64 to !llvm.ptr<11>
  %19 = llvm.inttoptr %0 : i64 to !llvm.ptr<11>
  %20 = llvm.inttoptr %3 : i64 to !llvm.ptr<11>
  %21 = llvm.inttoptr %4 : i64 to !llvm.ptr<11>
  %22 = llvm.inttoptr %5 : i64 to !llvm.ptr<11>
  %23 = llvm.inttoptr %6 : i64 to !llvm.ptr<11>
  %24 = llvm.inttoptr %7 : i64 to !llvm.ptr<11>
  %25 = llvm.inttoptr %8 : i64 to !llvm.ptr<11>
  %26 = llvm.inttoptr %9 : i64 to !llvm.ptr<11>
  %27 = llvm.inttoptr %10 : i64 to !llvm.ptr<11>
  %28 = llvm.inttoptr %11 : i64 to !llvm.ptr<11>
  %29 = llvm.inttoptr %12 : i64 to !llvm.ptr<11>
  %30 = hivm.hir.get_sub_block_idx -> i64
  %31 = arith.muli %30, %c1024_i64 : i64
  %32 = llvm.inttoptr %31 : i64 to !llvm.ptr<11>
  %33 = arith.addi %31, %c20_i64 : i64
  %34 = llvm.inttoptr %33 : i64 to !llvm.ptr<11>
  %35 = arith.addi %31, %c8_i64 : i64
  %36 = llvm.inttoptr %35 : i64 to !llvm.ptr<11>
  %37 = arith.addi %31, %c12_i64 : i64
  %38 = llvm.inttoptr %37 : i64 to !llvm.ptr<11>
  %39 = arith.addi %31, %c4_i64 : i64
  %40 = llvm.inttoptr %39 : i64 to !llvm.ptr<11>
  %41 = arith.addi %31, %c16_i64 : i64
  %42 = llvm.inttoptr %41 : i64 to !llvm.ptr<11>
  %reinterpret_cast = memref.reinterpret_cast %arg15 to offset: [0], sizes: [1], strides: [1] : memref<?xf32, #hivm.address_space<gm>> to memref<1xf32, strided<[1]>, #hivm.address_space<gm>>
  %43 = arith.index_cast %30 : i64 to index
  %44 = affine.apply affine_map<()[s0] -> (s0 * 64)>()[%43]
  %45 = affine.apply affine_map<()[s0] -> (s0 * 4)>()[%43]
  hivm.hir.set_ctrl false at ctrl[60]
  hivm.hir.set_ctrl true at ctrl[48]
  annotation.mark %14 {logical_block_num} : i32
  llvm.store volatile %2, %18 : i32, !llvm.ptr<11>
  llvm.store volatile %2, %19 : i32, !llvm.ptr<11>
  llvm.store volatile %2, %20 : i32, !llvm.ptr<11>
  llvm.store volatile %2, %21 : i32, !llvm.ptr<11>
  llvm.store volatile %2, %22 : i32, !llvm.ptr<11>
  llvm.store volatile %2, %23 : i32, !llvm.ptr<11>
  llvm.store volatile %2, %24 : i32, !llvm.ptr<11>
  llvm.store volatile %2, %25 : i32, !llvm.ptr<11>
  llvm.store volatile %2, %26 : i32, !llvm.ptr<11>
  llvm.store volatile %2, %27 : i32, !llvm.ptr<11>
  llvm.store volatile %2, %28 : i32, !llvm.ptr<11>
  llvm.store volatile %2, %29 : i32, !llvm.ptr<11>
  hivm.hir.set_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID1>]
  hivm.hir.set_flag[<PIPE_MTE3>, <PIPE_MTE2>, <EVENT_ID0>]
  scf.for %arg19 = %17 to %c8192_i32 step %c28_i32  : i32 {
    %46 = arith.divsi %arg19, %c8_i32 : i32
    %47 = arith.muli %46, %c8_i32 : i32
    %48 = arith.subi %arg19, %47 : i32
    %49 = arith.muli %46, %c1024_i32 : i32
    %50 = arith.remsi %46, %c8_i32 : i32
    %51 = arith.muli %50, %c131072_i32 : i32
    %52 = arith.divsi %46, %c8_i32 : i32
    %53 = arith.muli %52, %c1048576_i32 : i32
    %54 = arith.addi %51, %53 : i32
    %55 = arith.index_cast %54 : i32 to index
    %56 = arith.divsi %49, %c128_i32 : i32
    %57 = arith.index_cast %56 : i32 to index
    %58 = memref.load %reinterpret_cast[%c0] : memref<1xf32, strided<[1]>, #hivm.address_space<gm>>
    %59 = arith.muli %48, %c128_i32 : i32
    %60 = arith.divsi %59, %c128_i32 : i32
    %61 = arith.index_cast %60 : i32 to index
    %62 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%57, %61]
    %reinterpret_cast_0 = memref.reinterpret_cast %arg13 to offset: [%62], sizes: [1], strides: [1] : memref<?xf32, #hivm.address_space<gm>> to memref<1xf32, strided<[1], offset: ?>, #hivm.address_space<gm>>
    %63 = memref.load %reinterpret_cast_0[%c0] : memref<1xf32, strided<[1], offset: ?>, #hivm.address_space<gm>>
    %64 = arith.index_cast %49 : i32 to index
    %65 = hivm.hir.pointer_cast(%c49152_i64) : memref<8x8x16x16xf16, #hivm.address_space<cbuf>>
    %subview = memref.subview %65[0, %45, 0, 0] [8, 4, 16, 16] [1, 1, 1, 1] {to_be_bubbled_slice} : memref<8x8x16x16xf16, #hivm.address_space<cbuf>> to memref<8x4x16x16xf16, strided<[2048, 256, 16, 1], offset: ?>, #hivm.address_space<cbuf>>
    annotation.mark %65 {effects = ["write", "read"], hivm.tightly_coupled_buffer = #hivm.tightly_coupled_buffer<0>, hivm.tiling_dim = 1 : index} : memref<8x8x16x16xf16, #hivm.address_space<cbuf>>
    %66 = hivm.hir.pointer_cast(%c81920_i64) : memref<4x8x16x32xf8E4M3FN, #hivm.address_space<cbuf>>
    %subview_1 = memref.subview %66[0, %45, 0, 0] [4, 4, 16, 32] [1, 1, 1, 1] {to_be_bubbled_slice} : memref<4x8x16x32xf8E4M3FN, #hivm.address_space<cbuf>> to memref<4x4x16x32xf8E4M3FN, strided<[4096, 512, 32, 1], offset: ?>, #hivm.address_space<cbuf>>
    annotation.mark %66 {effects = ["write", "read"], hivm.tightly_coupled_buffer = #hivm.tightly_coupled_buffer<1>, hivm.tiling_dim = 1 : index} : memref<4x8x16x32xf8E4M3FN, #hivm.address_space<cbuf>>
    %67 = hivm.hir.pointer_cast(%c98304_i64) : memref<4x8x16x32xf8E4M3FN, #hivm.address_space<cbuf>>
    %subview_2 = memref.subview %67[0, %45, 0, 0] [4, 4, 16, 32] [1, 1, 1, 1] {to_be_bubbled_slice} : memref<4x8x16x32xf8E4M3FN, #hivm.address_space<cbuf>> to memref<4x4x16x32xf8E4M3FN, strided<[4096, 512, 32, 1], offset: ?>, #hivm.address_space<cbuf>>
    annotation.mark %67 {effects = ["write", "read"], hivm.tightly_coupled_buffer = #hivm.tightly_coupled_buffer<2>, hivm.tiling_dim = 1 : index} : memref<4x8x16x32xf8E4M3FN, #hivm.address_space<cbuf>>
    %68 = hivm.hir.pointer_cast(%c49920_i64) : memref<64x128xf32, #hivm.address_space<ub>>
    annotation.mark %68 {effects = ["write", "read"], hivm.tightly_coupled_buffer = #hivm.tightly_coupled_buffer<3>, hivm.tiling_dim = 0 : index, tiledAlloc} : memref<64x128xf32, #hivm.address_space<ub>>
    hivm.hir.sync_block_set[<VECTOR>, <PIPE_V>, <PIPE_FIX>] flag = 4
    %69 = hivm.hir.pointer_cast(%c82688_i64) : memref<64x128xf32, #hivm.address_space<ub>>
    annotation.mark %69 {effects = ["write", "read"], hivm.tightly_coupled_buffer = #hivm.tightly_coupled_buffer<4>, hivm.tiling_dim = 0 : index, tiledAlloc} : memref<64x128xf32, #hivm.address_space<ub>>
    hivm.hir.sync_block_set[<VECTOR>, <PIPE_V>, <PIPE_FIX>] flag = 5
    %70 = hivm.hir.pointer_cast(%c115456_i64) : memref<64x128xf32, #hivm.address_space<ub>>
    annotation.mark %70 {effects = ["write", "read"], hivm.tightly_coupled_buffer = #hivm.tightly_coupled_buffer<5>, hivm.tiling_dim = 0 : index, tiledAlloc} : memref<64x128xf32, #hivm.address_space<ub>>
    hivm.hir.sync_block_set[<VECTOR>, <PIPE_V>, <PIPE_FIX>] flag = 6
    %71 = hivm.hir.pointer_cast(%c148224_i64) : memref<64x128xf32, #hivm.address_space<ub>>
    annotation.mark %71 {effects = ["write", "read"], hivm.tightly_coupled_buffer = #hivm.tightly_coupled_buffer<6>, hivm.tiling_dim = 0 : index, tiledAlloc} : memref<64x128xf32, #hivm.address_space<ub>>
    %72 = hivm.hir.pointer_cast(%c180992_i64) : memref<64x128xf32, #hivm.address_space<ub>>
    annotation.mark %72 {effects = ["write", "read"], hivm.tightly_coupled_buffer = #hivm.tightly_coupled_buffer<7>, hivm.tiling_dim = 0 : index, tiledAlloc} : memref<64x128xf32, #hivm.address_space<ub>>
    hivm.hir.sync_block_set[<VECTOR>, <PIPE_S>, <PIPE_S>] flag = 15
    %73 = hivm.hir.pointer_cast(%c17152_i64) : memref<64x128xf32, #hivm.address_space<ub>>
    hivm.hir.wait_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID1>]
    func.call @fag_fp8_kernel_mix_aiv_outlined_vf_4(%73) {hivm.vector_function, no_inline} : (memref<64x128xf32, #hivm.address_space<ub>>) -> ()
    %74:5 = scf.for %arg20 = %c0_i32 to %c31_i32 step %c1_i32 iter_args(%arg21 = %73, %arg22 = %c0_i32, %arg23 = %c0_i32, %arg24 = %c0_i32, %arg25 = %c0_i32) -> (memref<64x128xf32, #hivm.address_space<ub>>, i32, i32, i32, i32)  : i32 {
      hivm.hir.sync_block_wait[<VECTOR>, <PIPE_S>, <PIPE_S>] flag = 15
      %77 = llvm.load volatile %40 : !llvm.ptr<11> -> i32
      %78 = arith.cmpi sgt, %77, %c0_i32 : i32
      %79 = llvm.load volatile %42 : !llvm.ptr<11> -> i32
      %80 = arith.cmpi slt, %79, %c1_i32 : i32
      %81 = arith.andi %78, %80 : i1
      %82 = arith.cmpi slt, %arg25, %c2_i32 : i32
      %83 = arith.cmpi slt, %arg22, %c8_i32 : i32
      %84 = arith.andi %81, %82 : i1
      %85 = arith.andi %84, %83 : i1
      hivm.hir.wait_flag[<PIPE_MTE3>, <PIPE_MTE2>, <EVENT_ID0>]
      %86:2 = scf.if %85 -> (i32, i32) {
        hivm.hir.sync_block_wait[<VECTOR>, <PIPE_FIX>, <PIPE_V>] flag = 4
        %105 = arith.muli %arg22, %c128_i32 : i32
        %106 = arith.divsi %105, %c128_i32 : i32
        %107 = arith.index_cast %106 : i32 to index
        %108 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%57, %107]
        %reinterpret_cast_6 = memref.reinterpret_cast %arg12 to offset: [%108], sizes: [1], strides: [1] : memref<?xf32, #hivm.address_space<gm>> to memref<1xf32, strided<[1], offset: ?>, #hivm.address_space<gm>>
        %109 = memref.load %reinterpret_cast_6[%c0] {ssbuffer.dep_mark = [1 : i32]} : memref<1xf32, strided<[1], offset: ?>, #hivm.address_space<gm>>
        %110 = arith.index_cast %105 : i32 to index
        %111 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%64, %110]
        %reinterpret_cast_7 = memref.reinterpret_cast %arg9 to offset: [%111], sizes: [128], strides: [1] : memref<?xf32, #hivm.address_space<gm>> to memref<128xf32, strided<[1], offset: ?>, #hivm.address_space<gm>>
        %112 = hivm.hir.pointer_cast(%c0_i64) : memref<64xf32, #hivm.address_space<ub>>
        annotation.mark %112 {hivm.skip_stride_align_for_vload = #hivm.skip_stride_align_for_vload} : memref<64xf32, #hivm.address_space<ub>>
        %subview_8 = memref.subview %reinterpret_cast_7[%44] [64] [1] : memref<128xf32, strided<[1], offset: ?>, #hivm.address_space<gm>> to memref<64xf32, strided<[1], offset: ?>, #hivm.address_space<gm>>
        hivm.hir.load ins(%subview_8 : memref<64xf32, strided<[1], offset: ?>, #hivm.address_space<gm>>) outs(%112 : memref<64xf32, #hivm.address_space<ub>>) eviction_policy = <EvictFirst> core_type = <VECTOR>
        hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_V>, <EVENT_ID0>]
        %113 = hivm.hir.pointer_cast(%c213760_i64) : memref<64x128xf32, #hivm.address_space<ub>>
        hivm.hir.wait_flag[<PIPE_MTE2>, <PIPE_V>, <EVENT_ID0>]
        func.call @fag_fp8_kernel_mix_aiv_outlined_vf_0(%112, %68, %109, %63, %arg11, %113) {hivm.vector_function, no_inline} : (memref<64xf32, #hivm.address_space<ub>>, memref<64x128xf32, #hivm.address_space<ub>>, f32, f32, f32, memref<64x128xf32, #hivm.address_space<ub>>) -> ()
        %114 = arith.remsi %arg22, %c2_i32 : i32
        %115 = arith.cmpi eq, %114, %c0_i32 : i32
        scf.if %115 {
          %collapse_shape_12 = memref.collapse_shape %113 [[0, 1]] : memref<64x128xf32, #hivm.address_space<ub>> into memref<8192xf32, #hivm.address_space<ub>>
          %collapse_shape_13 = memref.collapse_shape %71 [[0, 1]] : memref<64x128xf32, #hivm.address_space<ub>> into memref<8192xf32, #hivm.address_space<ub>>
          hivm.hir.copy ins(%collapse_shape_12 : memref<8192xf32, #hivm.address_space<ub>>) outs(%collapse_shape_13 : memref<8192xf32, #hivm.address_space<ub>>) {tiled_op}
        } else {
          %collapse_shape_12 = memref.collapse_shape %113 [[0, 1]] : memref<64x128xf32, #hivm.address_space<ub>> into memref<8192xf32, #hivm.address_space<ub>>
          %collapse_shape_13 = memref.collapse_shape %72 [[0, 1]] : memref<64x128xf32, #hivm.address_space<ub>> into memref<8192xf32, #hivm.address_space<ub>>
          hivm.hir.copy ins(%collapse_shape_12 : memref<8192xf32, #hivm.address_space<ub>>) outs(%collapse_shape_13 : memref<8192xf32, #hivm.address_space<ub>>) {tiled_op}
        }
        %116 = hivm.hir.pointer_cast(%c256_i64) : memref<8x65x16x1xf16, #hivm.address_space<ub>>
        %subview_9 = memref.subview %116[0, 0, 0, 0] [8, 64, 16, 1] [1, 1, 1, 1] : memref<8x65x16x1xf16, #hivm.address_space<ub>> to memref<8x64x16xf16, strided<[1040, 16, 1]>, #hivm.address_space<ub>>
        func.call @fag_fp8_kernel_mix_aiv_outlined_vf_1(%113, %subview_9) {hivm.vector_function, no_inline} : (memref<64x128xf32, #hivm.address_space<ub>>, memref<8x64x16xf16, strided<[1040, 16, 1]>, #hivm.address_space<ub>>) -> ()
        hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID0>]
        %expand_shape = memref.expand_shape %subview_9 [[0], [1, 2], [3]] output_shape [8, 4, 16, 16] : memref<8x64x16xf16, strided<[1040, 16, 1]>, #hivm.address_space<ub>> into memref<8x4x16x16xf16, strided<[1040, 256, 16, 1]>, #hivm.address_space<ub>>
        hivm.hir.sync_block_wait[<VECTOR>, <PIPE_M>, <PIPE_MTE3>] flag = 1
        %collapse_shape_10 = memref.collapse_shape %expand_shape [[0], [1, 2, 3]] : memref<8x4x16x16xf16, strided<[1040, 256, 16, 1]>, #hivm.address_space<ub>> into memref<8x1024xf16, strided<[1040, 1]>, #hivm.address_space<ub>>
        %collapse_shape_11 = memref.collapse_shape %subview [[0], [1, 2, 3]] : memref<8x4x16x16xf16, strided<[2048, 256, 16, 1], offset: ?>, #hivm.address_space<cbuf>> into memref<8x1024xf16, strided<[2048, 1], offset: ?>, #hivm.address_space<cbuf>>
        hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID0>]
        hivm.hir.copy ins(%collapse_shape_10 : memref<8x1024xf16, strided<[1040, 1]>, #hivm.address_space<ub>>) outs(%collapse_shape_11 : memref<8x1024xf16, strided<[2048, 1], offset: ?>, #hivm.address_space<cbuf>>) {tiled_op}
        hivm.hir.sync_block_set[<VECTOR>, <PIPE_MTE3>, <PIPE_MTE1>] flag = 1
        hivm.hir.sync_block_set[<VECTOR>, <PIPE_V>, <PIPE_FIX>] flag = 4
        %117 = llvm.load volatile %40 : !llvm.ptr<11> -> i32
        %118 = arith.subi %117, %c1_i32 : i32
        llvm.store volatile %118, %40 : i32, !llvm.ptr<11>
        %119 = llvm.load volatile %42 : !llvm.ptr<11> -> i32
        %120 = arith.addi %119, %c1_i32 : i32
        llvm.store volatile %120, %42 : i32, !llvm.ptr<11>
        %121 = arith.addi %arg25, %c1_i32 : i32
        %122 = arith.addi %arg22, %c1_i32 : i32
        scf.yield %121, %122 : i32, i32
      } else {
        scf.yield %arg25, %arg22 : i32, i32
      } {hivm.matmul_limited_in_cube, ssbuffer.if = 14 : i32}
      hivm.hir.set_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID0>]
      %87 = llvm.load volatile %34 : !llvm.ptr<11> -> i32
      %88 = arith.cmpi sgt, %87, %c0_i32 : i32
      %89 = llvm.load volatile %36 : !llvm.ptr<11> -> i32
      %90 = arith.cmpi slt, %89, %c1_i32 : i32
      %91 = arith.andi %88, %90 : i1
      %92 = llvm.load volatile %38 : !llvm.ptr<11> -> i32
      %93 = arith.cmpi slt, %92, %c1_i32 : i32
      %94 = arith.andi %91, %93 : i1
      %95 = arith.cmpi sgt, %86#0, %c0_i32 : i32
      %96 = arith.cmpi slt, %arg23, %c8_i32 : i32
      %97 = arith.andi %94, %95 : i1
      %98 = arith.andi %97, %96 : i1
      hivm.hir.wait_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID0>]
      %99:2 = scf.if %98 -> (i32, i32) {
        %105 = arith.muli %arg23, %c128_i32 : i32
        %106 = arith.index_cast %105 : i32 to index
        %107 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%64, %106]
        hivm.hir.sync_block_wait[<VECTOR>, <PIPE_FIX>, <PIPE_V>] flag = 5
        %reinterpret_cast_6 = memref.reinterpret_cast %arg10 to offset: [%107], sizes: [128], strides: [1] {ssbuffer.dep_mark = [2 : i32]} : memref<?xf32, #hivm.address_space<gm>> to memref<128xf32, strided<[1], offset: ?>, #hivm.address_space<gm>>
        %108 = hivm.hir.pointer_cast(%c16896_i64) : memref<64xf32, #hivm.address_space<ub>>
        annotation.mark %108 {hivm.skip_stride_align_for_vload = #hivm.skip_stride_align_for_vload} : memref<64xf32, #hivm.address_space<ub>>
        %subview_7 = memref.subview %reinterpret_cast_6[%44] [64] [1] : memref<128xf32, strided<[1], offset: ?>, #hivm.address_space<gm>> to memref<64xf32, strided<[1], offset: ?>, #hivm.address_space<gm>>
        hivm.hir.load ins(%subview_7 : memref<64xf32, strided<[1], offset: ?>, #hivm.address_space<gm>>) outs(%108 : memref<64xf32, #hivm.address_space<ub>>) eviction_policy = <EvictFirst> core_type = <VECTOR>
        hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_V>, <EVENT_ID0>]
        %109 = arith.remsi %arg23, %c2_i32 : i32
        %110 = arith.cmpi eq, %109, %c0_i32 : i32
        %111 = arith.select %110, %71, %72 : memref<64x128xf32, #hivm.address_space<ub>>
        %112 = hivm.hir.pointer_cast(%c0_i64) : memref<4x65x32x1xf8E4M3FN, #hivm.address_space<ub>>
        %subview_8 = memref.subview %112[0, 0, 0, 0] [4, 64, 32, 1] [1, 1, 1, 1] : memref<4x65x32x1xf8E4M3FN, #hivm.address_space<ub>> to memref<4x64x32xf8E4M3FN, strided<[2080, 32, 1]>, #hivm.address_space<ub>>
        hivm.hir.wait_flag[<PIPE_MTE2>, <PIPE_V>, <EVENT_ID0>]
        func.call @fag_fp8_kernel_mix_aiv_outlined_vf_2(%108, %111, %69, %arg11, %58, %subview_8) {hivm.vector_function, no_inline} : (memref<64xf32, #hivm.address_space<ub>>, memref<64x128xf32, #hivm.address_space<ub>>, memref<64x128xf32, #hivm.address_space<ub>>, f32, f32, memref<4x64x32xf8E4M3FN, strided<[2080, 32, 1]>, #hivm.address_space<ub>>) -> ()
        hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID0>]
        %expand_shape = memref.expand_shape %subview_8 [[0], [1, 2], [3]] output_shape [4, 4, 16, 32] : memref<4x64x32xf8E4M3FN, strided<[2080, 32, 1]>, #hivm.address_space<ub>> into memref<4x4x16x32xf8E4M3FN, strided<[2080, 512, 32, 1]>, #hivm.address_space<ub>>
        hivm.hir.sync_block_wait[<VECTOR>, <PIPE_M>, <PIPE_MTE3>] flag = 2
        %collapse_shape_9 = memref.collapse_shape %expand_shape [[0], [1, 2, 3]] : memref<4x4x16x32xf8E4M3FN, strided<[2080, 512, 32, 1]>, #hivm.address_space<ub>> into memref<4x2048xf8E4M3FN, strided<[2080, 1]>, #hivm.address_space<ub>>
        %collapse_shape_10 = memref.collapse_shape %subview_1 [[0], [1, 2, 3]] : memref<4x4x16x32xf8E4M3FN, strided<[4096, 512, 32, 1], offset: ?>, #hivm.address_space<cbuf>> into memref<4x2048xf8E4M3FN, strided<[4096, 1], offset: ?>, #hivm.address_space<cbuf>>
        hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID0>]
        hivm.hir.copy ins(%collapse_shape_9 : memref<4x2048xf8E4M3FN, strided<[2080, 1]>, #hivm.address_space<ub>>) outs(%collapse_shape_10 : memref<4x2048xf8E4M3FN, strided<[4096, 1], offset: ?>, #hivm.address_space<cbuf>>) {tiled_op}
        hivm.hir.sync_block_set[<VECTOR>, <PIPE_MTE3>, <PIPE_MTE1>] flag = 2
        hivm.hir.sync_block_wait[<VECTOR>, <PIPE_M>, <PIPE_MTE3>] flag = 3
        %collapse_shape_11 = memref.collapse_shape %subview_2 [[0], [1, 2, 3]] : memref<4x4x16x32xf8E4M3FN, strided<[4096, 512, 32, 1], offset: ?>, #hivm.address_space<cbuf>> into memref<4x2048xf8E4M3FN, strided<[4096, 1], offset: ?>, #hivm.address_space<cbuf>>
        hivm.hir.copy ins(%collapse_shape_9 : memref<4x2048xf8E4M3FN, strided<[2080, 1]>, #hivm.address_space<ub>>) outs(%collapse_shape_11 : memref<4x2048xf8E4M3FN, strided<[4096, 1], offset: ?>, #hivm.address_space<cbuf>>) {tiled_op}
        hivm.hir.sync_block_set[<VECTOR>, <PIPE_MTE3>, <PIPE_MTE1>] flag = 3
        hivm.hir.sync_block_set[<VECTOR>, <PIPE_V>, <PIPE_FIX>] flag = 5
        %113 = llvm.load volatile %34 : !llvm.ptr<11> -> i32
        %114 = arith.subi %113, %c1_i32 : i32
        llvm.store volatile %114, %34 : i32, !llvm.ptr<11>
        %115 = llvm.load volatile %36 : !llvm.ptr<11> -> i32
        %116 = arith.addi %115, %c1_i32 : i32
        llvm.store volatile %116, %36 : i32, !llvm.ptr<11>
        %117 = llvm.load volatile %38 : !llvm.ptr<11> -> i32
        %118 = arith.addi %117, %c1_i32 : i32
        llvm.store volatile %118, %38 : i32, !llvm.ptr<11>
        %119 = arith.subi %86#0, %c1_i32 : i32
        %120 = arith.addi %arg23, %c1_i32 : i32
        scf.yield %119, %120 : i32, i32
      } else {
        scf.yield %86#0, %arg23 : i32, i32
      } {hivm.matmul_limited_in_cube, ssbuffer.if = 15 : i32}
      hivm.hir.set_flag[<PIPE_MTE3>, <PIPE_MTE2>, <EVENT_ID0>]
      %100 = llvm.load volatile %32 : !llvm.ptr<11> -> i32
      %101 = arith.cmpi sgt, %100, %c0_i32 : i32
      %102 = arith.cmpi slt, %arg24, %c8_i32 : i32
      %103 = arith.andi %101, %102 : i1
      %104:2 = scf.if %103 -> (memref<64x128xf32, #hivm.address_space<ub>>, i32) {
        %105 = arith.muli %arg24, %c128_i32 : i32
        %106 = arith.divsi %105, %c128_i32 : i32
        %107 = arith.index_cast %106 : i32 to index
        %108 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%57, %107]
        %reinterpret_cast_6 = memref.reinterpret_cast %arg12 to offset: [%108], sizes: [1], strides: [1] : memref<?xf32, #hivm.address_space<gm>> to memref<1xf32, strided<[1], offset: ?>, #hivm.address_space<gm>>
        %109 = memref.load %reinterpret_cast_6[%c0] {ssbuffer.dep_mark = [1 : i32]} : memref<1xf32, strided<[1], offset: ?>, #hivm.address_space<gm>>
        hivm.hir.sync_block_wait[<VECTOR>, <PIPE_FIX>, <PIPE_V>] flag = 6
        %110 = arith.divf %109, %58 {ssbuffer.dep_mark = [1 : i32]} : f32
        %111 = hivm.hir.pointer_cast(%c17152_i64) : memref<64x128xf32, #hivm.address_space<ub>>
        func.call @fag_fp8_kernel_mix_aiv_outlined_vf_3(%arg21, %70, %110, %111) {hivm.vector_function, no_inline} : (memref<64x128xf32, #hivm.address_space<ub>>, memref<64x128xf32, #hivm.address_space<ub>>, f32, memref<64x128xf32, #hivm.address_space<ub>>) -> ()
        hivm.hir.sync_block_set[<VECTOR>, <PIPE_V>, <PIPE_FIX>] flag = 6
        %112 = llvm.load volatile %32 : !llvm.ptr<11> -> i32
        %113 = arith.subi %112, %c1_i32 : i32
        llvm.store volatile %113, %32 : i32, !llvm.ptr<11>
        %114 = arith.addi %arg24, %c1_i32 : i32
        scf.yield %111, %114 : memref<64x128xf32, #hivm.address_space<ub>>, i32
      } else {
        scf.yield %arg21, %arg24 : memref<64x128xf32, #hivm.address_space<ub>>, i32
      }
      hivm.hir.sync_block_set[<VECTOR>, <PIPE_S>, <PIPE_S>] flag = 15
      scf.yield %104#0, %86#1, %99#1, %104#1, %99#0 : memref<64x128xf32, #hivm.address_space<ub>>, i32, i32, i32, i32
    }
    hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID0>]
    hivm.hir.sync_block_wait[<VECTOR>, <PIPE_M>, <PIPE_MTE3>] flag = 3
    hivm.hir.sync_block_wait[<VECTOR>, <PIPE_M>, <PIPE_MTE3>] flag = 2
    hivm.hir.sync_block_wait[<VECTOR>, <PIPE_M>, <PIPE_MTE3>] flag = 1
    %75 = arith.index_cast %59 : i32 to index
    %76 = affine.apply affine_map<()[s0, s1] -> (s0 + s1 * 128)>()[%55, %75]
    %reinterpret_cast_3 = memref.reinterpret_cast %arg7 to offset: [%76], sizes: [128, 128], strides: [128, 1] : memref<?xf32, #hivm.address_space<gm>> to memref<128x128xf32, strided<[128, 1], offset: ?>, #hivm.address_space<gm>>
    %subview_4 = memref.subview %reinterpret_cast_3[%44, 0] [64, 128] [1, 1] {to_be_bubbled_slice} : memref<128x128xf32, strided<[128, 1], offset: ?>, #hivm.address_space<gm>> to memref<64x128xf32, strided<[128, 1], offset: ?>, #hivm.address_space<gm>>
    %collapse_shape = memref.collapse_shape %74#0 [[0, 1]] : memref<64x128xf32, #hivm.address_space<ub>> into memref<8192xf32, #hivm.address_space<ub>>
    %collapse_shape_5 = memref.collapse_shape %subview_4 [[0, 1]] : memref<64x128xf32, strided<[128, 1], offset: ?>, #hivm.address_space<gm>> into memref<8192xf32, strided<[1], offset: ?>, #hivm.address_space<gm>>
    hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID0>]
    hivm.hir.store ins(%collapse_shape : memref<8192xf32, #hivm.address_space<ub>>) outs(%collapse_shape_5 : memref<8192xf32, strided<[1], offset: ?>, #hivm.address_space<gm>>) {tiled_op}
    hivm.hir.set_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID1>]
  }
  hivm.hir.wait_flag[<PIPE_MTE3>, <PIPE_MTE2>, <EVENT_ID0>]
  hivm.hir.wait_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID1>]
  hivm.hir.set_ctrl true at ctrl[60]
  hivm.hir.pipe_barrier[<PIPE_ALL>]
  return
}

// -----// IR Dump After GraphSyncSolver (hivm-graph-sync-solver) //----- //
func.func @fag_fp8_kernel_mix_aic(%arg0: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<sync_block_lock>}, %arg1: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<workspace>}, %arg2: memref<?xf8E4M3FN, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg3: memref<?xf8E4M3FN, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg4: memref<?xf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg5: memref<?xf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg6: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 2 : i32}, %arg7: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 1 : i32}, %arg8: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 1 : i32}, %arg9: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg10: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg11: f32, %arg12: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg13: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg14: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32}, %arg15: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg16: i32, %arg17: i32, %arg18: i32) attributes {SyncBlockLockArgIdx = 0 : i64, WorkspaceArgIdx = 1 : i64, func_dyn_memref_args = dense<[true, true, true, true, true, true, true, true, true, true, true, false, true, true, true, true, false, false, false]> : vector<19xi1>, hacc.entry, hacc.function_kind = #hacc.function_kind<DEVICE>, hivm.func_core_type = #hivm.func_core_type<AIC>, hivm.part_of_mix, hivm.vf_mode = #hivm.vf_mode<SIMD>, mix_mode = "mix", parallel_mode = "simd"} {
  %c4_i64 = arith.constant 4 : i64
  %c3_i64 = arith.constant 3 : i64
  %c2_i64 = arith.constant 2 : i64
  %c1_i64 = arith.constant 1 : i64
  %c0_i64 = arith.constant 0 : i64
  %c0_i64_0 = arith.constant 0 : i64
  %c0_i64_1 = arith.constant 0 : i64
  %c0_i64_2 = arith.constant 0 : i64
  %c344064_i64 = arith.constant 344064 : i64
  %c196608_i64 = arith.constant 196608 : i64
  %c311296_i64 = arith.constant 311296 : i64
  %c163840_i64 = arith.constant 163840 : i64
  %c278528_i64 = arith.constant 278528 : i64
  %c131072_i64 = arith.constant 131072 : i64
  %c65536_i64 = arith.constant 65536 : i64
  %c262144_i64 = arith.constant 262144 : i64
  %c114688_i64 = arith.constant 114688 : i64
  %c115456_i64 = arith.constant 115456 : i64
  %c82688_i64 = arith.constant 82688 : i64
  %c49920_i64 = arith.constant 49920 : i64
  %c98304_i64 = arith.constant 98304 : i64
  %c81920_i64 = arith.constant 81920 : i64
  %c49152_i64 = arith.constant 49152 : i64
  %c229376_i64 = arith.constant 229376 : i64
  %c16384_i64 = arith.constant 16384 : i64
  %c212992_i64 = arith.constant 212992 : i64
  %c0_i64_3 = arith.constant 0 : i64
  %true = arith.constant true
  %c1_i32 = arith.constant 1 : i32
  %c31_i32 = arith.constant 31 : i32
  %0 = llvm.mlir.constant(1044 : i64) : i64
  %1 = llvm.mlir.constant(20 : i64) : i64
  %2 = llvm.mlir.constant(1040 : i64) : i64
  %3 = llvm.mlir.constant(16 : i64) : i64
  %4 = llvm.mlir.constant(1036 : i64) : i64
  %5 = llvm.mlir.constant(12 : i64) : i64
  %6 = llvm.mlir.constant(1032 : i64) : i64
  %7 = llvm.mlir.constant(8 : i64) : i64
  %8 = llvm.mlir.constant(1028 : i64) : i64
  %9 = llvm.mlir.constant(4 : i64) : i64
  %c1048576_i32 = arith.constant 1048576 : i32
  %c131072_i32 = arith.constant 131072 : i32
  %c1024_i32 = arith.constant 1024 : i32
  %c8_i32 = arith.constant 8 : i32
  %c0_i32 = arith.constant 0 : i32
  %c8192_i32 = arith.constant 8192 : i32
  %c28_i32 = arith.constant 28 : i32
  %c128 = arith.constant 128 : index
  %c128_i32 = arith.constant 128 : i32
  %c0 = arith.constant 0 : index
  %10 = llvm.mlir.constant(0 : i32) : i32
  %11 = llvm.mlir.constant(0 : i64) : i64
  %12 = llvm.mlir.constant(1024 : i64) : i64
  hivm.hir.set_ctrl false at ctrl[60]
  hivm.hir.set_ctrl true at ctrl[48]
  %13 = arith.muli %arg16, %arg17 : i32
  %14 = arith.muli %13, %arg18 : i32
  annotation.mark %14 {logical_block_num} : i32
  %15 = hivm.hir.get_block_idx -> i64
  %16 = arith.trunci %15 : i64 to i32
  %17 = arith.remsi %16, %arg16 : i32
  %18 = llvm.inttoptr %11 : i64 to !llvm.ptr<11>
  %19 = llvm.inttoptr %12 : i64 to !llvm.ptr<11>
  llvm.store volatile %10, %18 : i32, !llvm.ptr<11>
  llvm.store volatile %10, %19 : i32, !llvm.ptr<11>
  %20 = llvm.inttoptr %9 : i64 to !llvm.ptr<11>
  %21 = llvm.inttoptr %8 : i64 to !llvm.ptr<11>
  llvm.store volatile %10, %20 : i32, !llvm.ptr<11>
  llvm.store volatile %10, %21 : i32, !llvm.ptr<11>
  %22 = llvm.inttoptr %7 : i64 to !llvm.ptr<11>
  %23 = llvm.inttoptr %6 : i64 to !llvm.ptr<11>
  llvm.store volatile %10, %22 : i32, !llvm.ptr<11>
  llvm.store volatile %10, %23 : i32, !llvm.ptr<11>
  %24 = llvm.inttoptr %5 : i64 to !llvm.ptr<11>
  %25 = llvm.inttoptr %4 : i64 to !llvm.ptr<11>
  llvm.store volatile %10, %24 : i32, !llvm.ptr<11>
  llvm.store volatile %10, %25 : i32, !llvm.ptr<11>
  %26 = llvm.inttoptr %3 : i64 to !llvm.ptr<11>
  %27 = llvm.inttoptr %2 : i64 to !llvm.ptr<11>
  llvm.store volatile %10, %26 : i32, !llvm.ptr<11>
  llvm.store volatile %10, %27 : i32, !llvm.ptr<11>
  %28 = llvm.inttoptr %1 : i64 to !llvm.ptr<11>
  %29 = llvm.inttoptr %0 : i64 to !llvm.ptr<11>
  llvm.store volatile %10, %28 : i32, !llvm.ptr<11>
  llvm.store volatile %10, %29 : i32, !llvm.ptr<11>
  %reinterpret_cast = memref.reinterpret_cast %arg15 to offset: [0], sizes: [1], strides: [1] : memref<?xf32, #hivm.address_space<gm>> to memref<1xf32, strided<[1]>, #hivm.address_space<gm>>
  hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID0>]
  hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID1>]
  hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID2>]
  hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID3>]
  hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID4>]
  hivm.hir.set_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID0>]
  hivm.hir.set_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID1>]
  hivm.hir.set_flag[<PIPE_M>, <PIPE_MTE1>, <EVENT_ID0>]
  hivm.hir.set_flag[<PIPE_M>, <PIPE_MTE1>, <EVENT_ID1>]
  scf.for %arg19 = %17 to %c8192_i32 step %c28_i32  : i32 {
    %30 = hivm.hir.pointer_cast(%c16384_i64, %c229376_i64) : memref<8x8x16x16xf16, #hivm.address_space<cbuf>>
    annotation.mark %30 {hivm.multi_buffer = 2 : i32} : memref<8x8x16x16xf16, #hivm.address_space<cbuf>>
    %31 = hivm.hir.pointer_cast(%c0_i64_3, %c212992_i64) : memref<4x4x32x32xf8E4M3FN, #hivm.address_space<cbuf>>
    annotation.mark %31 {hivm.multi_buffer = 2 : i32} : memref<4x4x32x32xf8E4M3FN, #hivm.address_space<cbuf>>
    %32 = arith.divsi %arg19, %c8_i32 : i32
    %33 = arith.muli %32, %c8_i32 : i32
    %34 = arith.subi %arg19, %33 : i32
    %35 = arith.muli %32, %c1024_i32 : i32
    %36 = arith.remsi %32, %c8_i32 : i32
    %37 = arith.muli %36, %c131072_i32 : i32
    %38 = arith.divsi %32, %c8_i32 : i32
    %39 = arith.muli %38, %c1048576_i32 : i32
    %40 = arith.addi %37, %39 : i32
    %41 = arith.index_cast %40 : i32 to index
    %42 = arith.divsi %35, %c128_i32 : i32
    %43 = arith.index_cast %42 : i32 to index
    %44 = memref.load %reinterpret_cast[%c0] : memref<1xf32, strided<[1]>, #hivm.address_space<gm>>
    %45 = arith.muli %34, %c128_i32 : i32
    %46 = arith.divsi %45, %c128_i32 : i32
    %47 = arith.index_cast %46 : i32 to index
    %48 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%43, %47]
    %reinterpret_cast_4 = memref.reinterpret_cast %arg13 to offset: [%48], sizes: [1], strides: [1] : memref<?xf32, #hivm.address_space<gm>> to memref<1xf32, strided<[1], offset: ?>, #hivm.address_space<gm>>
    %49 = memref.load %reinterpret_cast_4[%c0] : memref<1xf32, strided<[1], offset: ?>, #hivm.address_space<gm>>
    %50 = arith.divf %49, %44 : f32
    %51 = arith.index_cast %45 : i32 to index
    %52 = affine.apply affine_map<()[s0, s1] -> (s0 + s1 * 128)>()[%41, %51]
    %reinterpret_cast_5 = memref.reinterpret_cast %arg3 to offset: [%52], sizes: [128, 128], strides: [128, 1] : memref<?xf8E4M3FN, #hivm.address_space<gm>> to memref<128x128xf8E4M3FN, strided<[128, 1], offset: ?>, #hivm.address_space<gm>>
    %cast = memref.cast %31 : memref<4x4x32x32xf8E4M3FN, #hivm.address_space<cbuf>> to memref<?x?x?x?xf8E4M3FN, #hivm.address_space<cbuf>>
    hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID0>]
    hivm.hir.nd2nz {dst_continuous} ins(%reinterpret_cast_5 : memref<128x128xf8E4M3FN, strided<[128, 1], offset: ?>, #hivm.address_space<gm>>) outs(%cast : memref<?x?x?x?xf8E4M3FN, #hivm.address_space<cbuf>>)
    hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID0>]
    %reinterpret_cast_6 = memref.reinterpret_cast %arg4 to offset: [%52], sizes: [128, 128], strides: [128, 1] : memref<?xf16, #hivm.address_space<gm>> to memref<128x128xf16, strided<[128, 1], offset: ?>, #hivm.address_space<gm>>
    %cast_7 = memref.cast %30 : memref<8x8x16x16xf16, #hivm.address_space<cbuf>> to memref<?x?x?x?xf16, #hivm.address_space<cbuf>>
    hivm.hir.pipe_barrier[<PIPE_MTE2>]
    hivm.hir.nd2nz {dst_continuous} ins(%reinterpret_cast_6 : memref<128x128xf16, strided<[128, 1], offset: ?>, #hivm.address_space<gm>>) outs(%cast_7 : memref<?x?x?x?xf16, #hivm.address_space<cbuf>>)
    %reinterpret_cast_8 = memref.reinterpret_cast %arg8 to offset: [%52], sizes: [128, 128], strides: [128, 1] : memref<?xf32, #hivm.address_space<gm>> to memref<128x128xf32, strided<[128, 1], offset: ?>, #hivm.address_space<gm>>
    %53 = hivm.hir.pointer_cast(%c49152_i64) : memref<8x8x16x16xf16, #hivm.address_space<cbuf>>
    annotation.mark %53 {effects = ["write", "read"], hivm.tightly_coupled_buffer = #hivm.tightly_coupled_buffer<0>, hivm.tiling_dim = 1 : index} : memref<8x8x16x16xf16, #hivm.address_space<cbuf>>
    hivm.hir.sync_block_set[<CUBE>, <PIPE_M>, <PIPE_MTE3>] flag = 1
    %54 = hivm.hir.pointer_cast(%c81920_i64) : memref<4x8x16x32xf8E4M3FN, #hivm.address_space<cbuf>>
    annotation.mark %54 {effects = ["write", "read"], hivm.tightly_coupled_buffer = #hivm.tightly_coupled_buffer<1>, hivm.tiling_dim = 1 : index} : memref<4x8x16x32xf8E4M3FN, #hivm.address_space<cbuf>>
    hivm.hir.sync_block_set[<CUBE>, <PIPE_M>, <PIPE_MTE3>] flag = 2
    %55 = hivm.hir.pointer_cast(%c98304_i64) : memref<4x8x16x32xf8E4M3FN, #hivm.address_space<cbuf>>
    annotation.mark %55 {effects = ["write", "read"], hivm.tightly_coupled_buffer = #hivm.tightly_coupled_buffer<2>, hivm.tiling_dim = 1 : index} : memref<4x8x16x32xf8E4M3FN, #hivm.address_space<cbuf>>
    hivm.hir.sync_block_set[<CUBE>, <PIPE_M>, <PIPE_MTE3>] flag = 3
    %56 = hivm.hir.pointer_cast(%c49920_i64) : memref<64x128xf32, #hivm.address_space<ub>>
    annotation.mark %56 {effects = ["write", "read"], hivm.tightly_coupled_buffer = #hivm.tightly_coupled_buffer<3>, hivm.tiling_dim = 0 : index} : memref<64x128xf32, #hivm.address_space<ub>>
    %57 = hivm.hir.pointer_cast(%c82688_i64) : memref<64x128xf32, #hivm.address_space<ub>>
    annotation.mark %57 {effects = ["write", "read"], hivm.tightly_coupled_buffer = #hivm.tightly_coupled_buffer<4>, hivm.tiling_dim = 0 : index} : memref<64x128xf32, #hivm.address_space<ub>>
    %58 = hivm.hir.pointer_cast(%c115456_i64) : memref<64x128xf32, #hivm.address_space<ub>>
    annotation.mark %58 {effects = ["write", "read"], hivm.tightly_coupled_buffer = #hivm.tightly_coupled_buffer<5>, hivm.tiling_dim = 0 : index} : memref<64x128xf32, #hivm.address_space<ub>>
    %alloca = memref.alloca() {normalize_matmul_counter} : memref<i32>
    memref.store %c0_i32, %alloca[] {hivm.tcore_type = #hivm.tcore_type<CUBE_AND_VECTOR>} : memref<i32>
    %59 = hivm.hir.pointer_cast(%c0_i64_3) : memref<8x8x16x16xf32, #hivm.address_space<cc>>
    %cast_9 = memref.cast %59 : memref<8x8x16x16xf32, #hivm.address_space<cc>> to memref<?x?x?x?xf32, #hivm.address_space<cc>>
    hivm.hir.wait_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID0>]
    hivm.hir.wait_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID0>]
    %60:7 = scf.for %arg20 = %c0_i32 to %c31_i32 step %c1_i32 iter_args(%arg21 = %c0_i32, %arg22 = %c0_i32, %arg23 = %c0_i32, %arg24 = %c0_i32, %arg25 = %c0_i32, %arg26 = %c0_i32, %arg27 = %c0_i32) -> (i32, i32, i32, i32, i32, i32, i32)  : i32 {
      %61 = hivm.hir.pointer_cast(%c196608_i64, %c344064_i64) : memref<4x4x32x32xf8E4M3FN, #hivm.address_space<cbuf>>
      annotation.mark %61 {hivm.multi_buffer = 2 : i32} : memref<4x4x32x32xf8E4M3FN, #hivm.address_space<cbuf>>
      %62 = hivm.hir.pointer_cast(%c163840_i64, %c311296_i64) : memref<8x8x16x16xf16, #hivm.address_space<cbuf>>
      annotation.mark %62 {hivm.multi_buffer = 2 : i32} : memref<8x8x16x16xf16, #hivm.address_space<cbuf>>
      %63 = hivm.hir.pointer_cast(%c131072_i64, %c278528_i64) : memref<8x8x16x16xf16, #hivm.address_space<cbuf>>
      annotation.mark %63 {hivm.multi_buffer = 2 : i32} : memref<8x8x16x16xf16, #hivm.address_space<cbuf>>
      %64 = hivm.hir.pointer_cast(%c114688_i64, %c262144_i64) : memref<4x8x16x32xf8E4M3FN, #hivm.address_space<cbuf>>
      annotation.mark %64 {hivm.multi_buffer = 2 : i32} : memref<4x8x16x32xf8E4M3FN, #hivm.address_space<cbuf>>
      hivm.hir.sync_block_wait[<CUBE>, <PIPE_S>, <PIPE_S>] flag = 15
      %65 = arith.cmpi slt, %arg21, %c8_i32 : i32
      %66 = scf.if %65 -> (i32) {
        %115 = arith.addi %arg21, %c1_i32 : i32
        scf.yield %115 : i32
      } else {
        scf.yield %arg21 : i32
      } {hivm.matmul_limited_in_cube, ssbuffer.if = 14 : i32}
      %67 = arith.cmpi slt, %arg22, %c8_i32 : i32
      %68 = scf.if %67 -> (i32) {
        %115 = arith.addi %arg22, %c1_i32 : i32
        scf.yield %115 : i32
      } else {
        scf.yield %arg22 : i32
      } {hivm.matmul_limited_in_cube, ssbuffer.if = 16 : i32}
      %69 = llvm.load volatile %20 : !llvm.ptr<11> -> i32
      %70 = llvm.load volatile %21 : !llvm.ptr<11> -> i32
      %71 = arith.cmpi slt, %69, %c1_i32 : i32
      %72 = arith.cmpi slt, %70, %c1_i32 : i32
      %73 = arith.andi %71, %72 : i1
      %74 = arith.cmpi slt, %arg23, %c8_i32 : i32
      %75 = arith.andi %73, %74 : i1
      hivm.hir.wait_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID1>]
      %76 = scf.if %75 -> (i32) {
        %115 = arith.muli %arg23, %c128_i32 : i32
        %116 = arith.index_cast %115 : i32 to index
        %117 = affine.apply affine_map<()[s0, s1] -> (s0 + s1 * 128)>()[%41, %116]
        %reinterpret_cast_10 = memref.reinterpret_cast %arg2 to offset: [%117], sizes: [128, 128], strides: [128, 1] : memref<?xf8E4M3FN, #hivm.address_space<gm>> to memref<128x128xf8E4M3FN, strided<[128, 1], offset: ?>, #hivm.address_space<gm>>
        %cast_11 = memref.cast %64 : memref<4x8x16x32xf8E4M3FN, #hivm.address_space<cbuf>> to memref<?x?x?x?xf8E4M3FN, #hivm.address_space<cbuf>>
        hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID1>]
        hivm.hir.nd2nz {dst_continuous} ins(%reinterpret_cast_10 : memref<128x128xf8E4M3FN, strided<[128, 1], offset: ?>, #hivm.address_space<gm>>) outs(%cast_11 : memref<?x?x?x?xf8E4M3FN, #hivm.address_space<cbuf>>)
        hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID0>]
        %118 = hivm.hir.pointer_cast(%c65536_i64) : memref<8x8x16x16xf32, #hivm.address_space<cc>>
        %cast_12 = memref.cast %118 : memref<8x8x16x16xf32, #hivm.address_space<cc>> to memref<?x?x?x?xf32, #hivm.address_space<cc>>
        %c-1_i64 = arith.constant -1 : i64
        hivm.hir.mmadL1 {already_set_real_mkn, b_transpose, normalized_in_L0C} ins(%cast_11, %cast, %true, %c128, %c128, %c128 : memref<?x?x?x?xf8E4M3FN, #hivm.address_space<cbuf>>, memref<?x?x?x?xf8E4M3FN, #hivm.address_space<cbuf>>, i1, index, index, index) outs(%cast_12 : memref<?x?x?x?xf32, #hivm.address_space<cc>>) sync_related_args(%c0_i64_2, %c-1_i64, %c1_i64, %c-1_i64, %c-1_i64, %c-1_i64, %c-1_i64 : i64, i64, i64, i64, i64, i64, i64)
        hivm.hir.set_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID0>]
        hivm.hir.sync_block_wait[<CUBE>, <PIPE_V>, <PIPE_FIX>] flag = 4
        hivm.hir.wait_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID0>]
        hivm.hir.fixpipe {dma_mode = #hivm.dma_mode<nz2nd>} ins(%118 : memref<8x8x16x16xf32, #hivm.address_space<cc>>) outs(%56 : memref<64x128xf32, #hivm.address_space<ub>>) dual_dst_mode = <ROW_SPLIT>
        hivm.hir.sync_block_set[<CUBE>, <PIPE_FIX>, <PIPE_V>] flag = 4
        %119 = llvm.load volatile %20 : !llvm.ptr<11> -> i32
        %120 = llvm.load volatile %21 : !llvm.ptr<11> -> i32
        %121 = arith.addi %119, %c1_i32 : i32
        %122 = arith.addi %120, %c1_i32 : i32
        llvm.store volatile %121, %20 : i32, !llvm.ptr<11>
        llvm.store volatile %122, %21 : i32, !llvm.ptr<11>
        %123 = arith.addi %arg23, %c1_i32 : i32
        scf.yield %123 : i32
      } else {
        scf.yield %arg23 : i32
      } {hivm.matmul_limited_in_cube, ssbuffer.if = 2 : i32}
      hivm.hir.set_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID0>]
      %77 = llvm.load volatile %26 : !llvm.ptr<11> -> i32
      %78 = llvm.load volatile %27 : !llvm.ptr<11> -> i32
      %79 = arith.cmpi sgt, %77, %c0_i32 : i32
      %80 = arith.cmpi sgt, %78, %c0_i32 : i32
      %81 = arith.andi %79, %80 : i1
      %82 = arith.cmpi slt, %arg24, %c8_i32 : i32
      %83 = arith.andi %81, %82 : i1
      %84 = scf.if %83 -> (i32) {
        %115 = arith.muli %arg24, %c128_i32 : i32
        %116 = arith.index_cast %115 : i32 to index
        %117 = affine.apply affine_map<()[s0, s1] -> (s0 + s1 * 128)>()[%41, %116]
        %reinterpret_cast_10 = memref.reinterpret_cast %arg5 to offset: [%117], sizes: [128, 128], strides: [128, 1] : memref<?xf16, #hivm.address_space<gm>> to memref<128x128xf16, strided<[128, 1], offset: ?>, #hivm.address_space<gm>>
        %cast_11 = memref.cast %63 : memref<8x8x16x16xf16, #hivm.address_space<cbuf>> to memref<?x?x?x?xf16, #hivm.address_space<cbuf>>
        hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID2>]
        hivm.hir.nd2nz {dst_continuous} ins(%reinterpret_cast_10 : memref<128x128xf16, strided<[128, 1], offset: ?>, #hivm.address_space<gm>>) outs(%cast_11 : memref<?x?x?x?xf16, #hivm.address_space<cbuf>>)
        hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID0>]
        hivm.hir.sync_block_wait[<CUBE>, <PIPE_MTE3>, <PIPE_MTE1>] flag = 1
        %118 = memref.load %alloca[] : memref<i32>
        %119 = arith.cmpi eq, %118, %c0_i32 : i32
        %c-1_i64 = arith.constant -1 : i64
        hivm.hir.mmadL1 {a_transpose, already_set_real_mkn, fixpipe_for_result_already_inserted = true, normalized_in_L0C} ins(%53, %cast_11, %119, %c128, %c128, %c128 : memref<8x8x16x16xf16, #hivm.address_space<cbuf>>, memref<?x?x?x?xf16, #hivm.address_space<cbuf>>, i1, index, index, index) outs(%cast_9 : memref<?x?x?x?xf32, #hivm.address_space<cc>>) sync_related_args(%c-1_i64, %c0_i64_1, %c-1_i64, %c2_i64, %c-1_i64, %c-1_i64, %c-1_i64 : i64, i64, i64, i64, i64, i64, i64)
        %120 = arith.addi %118, %c1_i32 : i32
        memref.store %120, %alloca[] : memref<i32>
        hivm.hir.sync_block_set[<CUBE>, <PIPE_M>, <PIPE_MTE3>] flag = 1
        %121 = llvm.load volatile %26 : !llvm.ptr<11> -> i32
        %122 = llvm.load volatile %27 : !llvm.ptr<11> -> i32
        %123 = arith.subi %121, %c1_i32 : i32
        %124 = arith.subi %122, %c1_i32 : i32
        llvm.store volatile %123, %26 : i32, !llvm.ptr<11>
        llvm.store volatile %124, %27 : i32, !llvm.ptr<11>
        %125 = arith.addi %arg24, %c1_i32 : i32
        scf.yield %125 : i32
      } else {
        scf.yield %arg24 : i32
      }
      %85 = llvm.load volatile %28 : !llvm.ptr<11> -> i32
      %86 = llvm.load volatile %29 : !llvm.ptr<11> -> i32
      %87 = arith.cmpi slt, %85, %c1_i32 : i32
      %88 = arith.cmpi slt, %86, %c1_i32 : i32
      %89 = arith.andi %87, %88 : i1
      %90 = arith.cmpi slt, %arg25, %c8_i32 : i32
      %91 = arith.andi %89, %90 : i1
      hivm.hir.wait_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID0>]
      %92 = scf.if %91 -> (i32) {
        %115 = arith.muli %arg25, %c128_i32 : i32
        %116 = arith.index_cast %115 : i32 to index
        %117 = affine.apply affine_map<()[s0, s1] -> (s0 + s1 * 128)>()[%41, %116]
        %reinterpret_cast_10 = memref.reinterpret_cast %arg5 to offset: [%117], sizes: [128, 128], strides: [128, 1] : memref<?xf16, #hivm.address_space<gm>> to memref<128x128xf16, strided<[128, 1], offset: ?>, #hivm.address_space<gm>>
        %cast_11 = memref.cast %62 : memref<8x8x16x16xf16, #hivm.address_space<cbuf>> to memref<?x?x?x?xf16, #hivm.address_space<cbuf>>
        hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID3>]
        hivm.hir.nd2nz {dst_continuous} ins(%reinterpret_cast_10 : memref<128x128xf16, strided<[128, 1], offset: ?>, #hivm.address_space<gm>>) outs(%cast_11 : memref<?x?x?x?xf16, #hivm.address_space<cbuf>>)
        hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID0>]
        %118 = hivm.hir.pointer_cast(%c65536_i64) : memref<8x8x16x16xf32, #hivm.address_space<cc>>
        %cast_12 = memref.cast %118 : memref<8x8x16x16xf32, #hivm.address_space<cc>> to memref<?x?x?x?xf32, #hivm.address_space<cc>>
        %c-1_i64 = arith.constant -1 : i64
        hivm.hir.mmadL1 {already_set_real_mkn, b_transpose, normalized_in_L0C} ins(%cast_11, %cast_7, %true, %c128, %c128, %c128 : memref<?x?x?x?xf16, #hivm.address_space<cbuf>>, memref<?x?x?x?xf16, #hivm.address_space<cbuf>>, i1, index, index, index) outs(%cast_12 : memref<?x?x?x?xf32, #hivm.address_space<cc>>) sync_related_args(%c0_i64_0, %c-1_i64, %c3_i64, %c-1_i64, %c-1_i64, %c-1_i64, %c-1_i64 : i64, i64, i64, i64, i64, i64, i64)
        hivm.hir.set_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID0>]
        hivm.hir.sync_block_wait[<CUBE>, <PIPE_V>, <PIPE_FIX>] flag = 5
        hivm.hir.wait_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID0>]
        hivm.hir.fixpipe {dma_mode = #hivm.dma_mode<nz2nd>} ins(%118 : memref<8x8x16x16xf32, #hivm.address_space<cc>>) outs(%57 : memref<64x128xf32, #hivm.address_space<ub>>) dual_dst_mode = <ROW_SPLIT>
        hivm.hir.sync_block_set[<CUBE>, <PIPE_FIX>, <PIPE_V>] flag = 5
        %119 = llvm.load volatile %28 : !llvm.ptr<11> -> i32
        %120 = llvm.load volatile %29 : !llvm.ptr<11> -> i32
        %121 = arith.addi %119, %c1_i32 : i32
        %122 = arith.addi %120, %c1_i32 : i32
        llvm.store volatile %121, %28 : i32, !llvm.ptr<11>
        llvm.store volatile %122, %29 : i32, !llvm.ptr<11>
        %123 = arith.addi %arg25, %c1_i32 : i32
        scf.yield %123 : i32
      } else {
        scf.yield %arg25 : i32
      } {hivm.matmul_limited_in_cube, ssbuffer.if = 6 : i32}
      hivm.hir.set_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID0>]
      %93 = llvm.load volatile %24 : !llvm.ptr<11> -> i32
      %94 = llvm.load volatile %25 : !llvm.ptr<11> -> i32
      %95 = arith.cmpi sgt, %93, %c0_i32 : i32
      %96 = arith.cmpi sgt, %94, %c0_i32 : i32
      %97 = arith.andi %95, %96 : i1
      %98 = llvm.load volatile %18 : !llvm.ptr<11> -> i32
      %99 = llvm.load volatile %19 : !llvm.ptr<11> -> i32
      %100 = arith.cmpi slt, %98, %c1_i32 : i32
      %101 = arith.cmpi slt, %99, %c1_i32 : i32
      %102 = arith.andi %100, %101 : i1
      %103 = arith.andi %97, %102 : i1
      %104 = arith.cmpi slt, %arg26, %c8_i32 : i32
      %105 = arith.andi %103, %104 : i1
      hivm.hir.wait_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID0>]
      %106 = scf.if %105 -> (i32) {
        %115 = arith.muli %arg26, %c128_i32 : i32
        %116 = arith.index_cast %115 : i32 to index
        %117 = affine.apply affine_map<()[s0, s1] -> (s0 + s1 * 128)>()[%41, %116]
        %reinterpret_cast_10 = memref.reinterpret_cast %arg2 to offset: [%117], sizes: [128, 128], strides: [128, 1] : memref<?xf8E4M3FN, #hivm.address_space<gm>> to memref<128x128xf8E4M3FN, strided<[128, 1], offset: ?>, #hivm.address_space<gm>>
        %cast_11 = memref.cast %61 : memref<4x4x32x32xf8E4M3FN, #hivm.address_space<cbuf>> to memref<?x?x?x?xf8E4M3FN, #hivm.address_space<cbuf>>
        hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID4>]
        hivm.hir.nd2nz {dst_continuous} ins(%reinterpret_cast_10 : memref<128x128xf8E4M3FN, strided<[128, 1], offset: ?>, #hivm.address_space<gm>>) outs(%cast_11 : memref<?x?x?x?xf8E4M3FN, #hivm.address_space<cbuf>>)
        hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID0>]
        hivm.hir.sync_block_wait[<CUBE>, <PIPE_MTE3>, <PIPE_MTE1>] flag = 2
        %118 = hivm.hir.pointer_cast(%c65536_i64) : memref<8x8x16x16xf32, #hivm.address_space<cc>>
        %cast_12 = memref.cast %118 : memref<8x8x16x16xf32, #hivm.address_space<cc>> to memref<?x?x?x?xf32, #hivm.address_space<cc>>
        %c-1_i64 = arith.constant -1 : i64
        hivm.hir.mmadL1 {a_transpose, already_set_real_mkn, normalized_in_L0C} ins(%54, %cast_11, %true, %c128, %c128, %c128 : memref<4x8x16x32xf8E4M3FN, #hivm.address_space<cbuf>>, memref<?x?x?x?xf8E4M3FN, #hivm.address_space<cbuf>>, i1, index, index, index) outs(%cast_12 : memref<?x?x?x?xf32, #hivm.address_space<cc>>) sync_related_args(%c-1_i64, %c0_i64, %c-1_i64, %c4_i64, %c-1_i64, %c-1_i64, %c-1_i64 : i64, i64, i64, i64, i64, i64, i64)
        hivm.hir.set_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID0>]
        hivm.hir.sync_block_set[<CUBE>, <PIPE_M>, <PIPE_MTE3>] flag = 2
        hivm.hir.sync_block_wait[<CUBE>, <PIPE_V>, <PIPE_FIX>] flag = 6
        hivm.hir.wait_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID0>]
        hivm.hir.fixpipe {dma_mode = #hivm.dma_mode<nz2nd>} ins(%118 : memref<8x8x16x16xf32, #hivm.address_space<cc>>) outs(%58 : memref<64x128xf32, #hivm.address_space<ub>>) dual_dst_mode = <ROW_SPLIT>
        hivm.hir.sync_block_set[<CUBE>, <PIPE_FIX>, <PIPE_V>] flag = 6
        %119 = llvm.load volatile %24 : !llvm.ptr<11> -> i32
        %120 = llvm.load volatile %25 : !llvm.ptr<11> -> i32
        %121 = arith.subi %119, %c1_i32 : i32
        %122 = arith.subi %120, %c1_i32 : i32
        llvm.store volatile %121, %24 : i32, !llvm.ptr<11>
        llvm.store volatile %122, %25 : i32, !llvm.ptr<11>
        %123 = llvm.load volatile %18 : !llvm.ptr<11> -> i32
        %124 = llvm.load volatile %19 : !llvm.ptr<11> -> i32
        %125 = arith.addi %123, %c1_i32 : i32
        %126 = arith.addi %124, %c1_i32 : i32
        llvm.store volatile %125, %18 : i32, !llvm.ptr<11>
        llvm.store volatile %126, %19 : i32, !llvm.ptr<11>
        %127 = arith.addi %arg26, %c1_i32 : i32
        scf.yield %127 : i32
      } else {
        scf.yield %arg26 : i32
      } {hivm.matmul_limited_in_cube, ssbuffer.if = 10 : i32}
      hivm.hir.set_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID0>]
      %107 = llvm.load volatile %22 : !llvm.ptr<11> -> i32
      %108 = llvm.load volatile %23 : !llvm.ptr<11> -> i32
      %109 = arith.cmpi sgt, %107, %c0_i32 : i32
      %110 = arith.cmpi sgt, %108, %c0_i32 : i32
      %111 = arith.andi %109, %110 : i1
      %112 = arith.cmpi slt, %arg27, %c8_i32 : i32
      %113 = arith.andi %111, %112 : i1
      hivm.hir.wait_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID0>]
      %114 = scf.if %113 -> (i32) {
        %115 = arith.muli %arg27, %c128_i32 : i32
        %116 = arith.index_cast %115 : i32 to index
        %117 = affine.apply affine_map<()[s0, s1] -> (s0 + s1 * 128)>()[%41, %116]
        hivm.hir.sync_block_wait[<CUBE>, <PIPE_MTE3>, <PIPE_MTE1>] flag = 3
        %118 = hivm.hir.pointer_cast(%c65536_i64) : memref<8x8x16x16xf32, #hivm.address_space<cc>>
        %cast_10 = memref.cast %118 : memref<8x8x16x16xf32, #hivm.address_space<cc>> to memref<?x?x?x?xf32, #hivm.address_space<cc>>
        hivm.hir.mmadL1 {already_set_real_mkn, fixpipe_for_result_already_inserted = true, normalized_in_L0C} ins(%55, %cast, %true, %c128, %c128, %c128 : memref<4x8x16x32xf8E4M3FN, #hivm.address_space<cbuf>>, memref<?x?x?x?xf8E4M3FN, #hivm.address_space<cbuf>>, i1, index, index, index) outs(%cast_10 : memref<?x?x?x?xf32, #hivm.address_space<cc>>)
        hivm.hir.set_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID0>]
        %reinterpret_cast_11 = memref.reinterpret_cast %arg6 to offset: [%117], sizes: [128, 128], strides: [128, 1] : memref<?xf32, #hivm.address_space<gm>> to memref<128x128xf32, strided<[128, 1], offset: ?>, #hivm.address_space<gm>>
        hivm.hir.set_ctrl true at ctrl[6]
        hivm.hir.set_ctrl false at ctrl[7]
        hivm.hir.set_ctrl false at ctrl[8]
        hivm.hir.set_ctrl false at ctrl[9]
        hivm.hir.set_ctrl false at ctrl[10]
        hivm.hir.wait_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID0>]
        hivm.hir.fixpipe {dma_mode = #hivm.dma_mode<nz2nd>, inlined_fast_tf32_mul, pre_quant = #hivm.fixpipe_pre_quant_mode<QF322F32_PRE>} ins(%118 : memref<8x8x16x16xf32, #hivm.address_space<cc>>) outs(%reinterpret_cast_11 : memref<128x128xf32, strided<[128, 1], offset: ?>, #hivm.address_space<gm>>) quant_scale = %50 : f32
        hivm.hir.set_ctrl false at ctrl[6]
        hivm.hir.set_ctrl false at ctrl[7]
        hivm.hir.set_ctrl false at ctrl[8]
        hivm.hir.sync_block_set[<CUBE>, <PIPE_M>, <PIPE_MTE3>] flag = 3
        %119 = llvm.load volatile %22 : !llvm.ptr<11> -> i32
        %120 = llvm.load volatile %23 : !llvm.ptr<11> -> i32
        %121 = arith.subi %119, %c1_i32 : i32
        %122 = arith.subi %120, %c1_i32 : i32
        llvm.store volatile %121, %22 : i32, !llvm.ptr<11>
        llvm.store volatile %122, %23 : i32, !llvm.ptr<11>
        %123 = arith.addi %arg27, %c1_i32 : i32
        scf.yield %123 : i32
      } else {
        scf.yield %arg27 : i32
      } {hivm.matmul_limited_in_cube, ssbuffer.if = 8 : i32}
      hivm.hir.set_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID1>]
      hivm.hir.sync_block_set[<CUBE>, <PIPE_S>, <PIPE_S>] flag = 15
      scf.yield %66, %68, %76, %84, %92, %106, %114 : i32, i32, i32, i32, i32, i32, i32
    } {fixpipe_for_mmad_result_already_inserted = true, normalized_in_L0C = [0 : i32]}
    hivm.hir.set_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID0>]
    hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID0>]
    hivm.hir.sync_block_wait[<CUBE>, <PIPE_S>, <PIPE_S>] flag = 15
    hivm.hir.sync_block_wait[<CUBE>, <PIPE_V>, <PIPE_FIX>] flag = 6
    hivm.hir.sync_block_wait[<CUBE>, <PIPE_V>, <PIPE_FIX>] flag = 5
    hivm.hir.sync_block_wait[<CUBE>, <PIPE_V>, <PIPE_FIX>] flag = 4
    hivm.hir.wait_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID0>]
    hivm.hir.fixpipe {dma_mode = #hivm.dma_mode<nz2nd>} ins(%59 : memref<8x8x16x16xf32, #hivm.address_space<cc>>) outs(%reinterpret_cast_8 : memref<128x128xf32, strided<[128, 1], offset: ?>, #hivm.address_space<gm>>)
    hivm.hir.set_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID0>]
  }
  hivm.hir.wait_flag[<PIPE_M>, <PIPE_MTE1>, <EVENT_ID0>]
  hivm.hir.wait_flag[<PIPE_M>, <PIPE_MTE1>, <EVENT_ID1>]
  hivm.hir.wait_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID0>]
  hivm.hir.wait_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID1>]
  hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID0>]
  hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID1>]
  hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID2>]
  hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID3>]
  hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID4>]
  hivm.hir.set_ctrl true at ctrl[60]
  hivm.hir.pipe_barrier[<PIPE_ALL>]
  return
}

bisheng: warning: the flag '--cce-aicore-input-parameter-size=1536' has been deprecated and will be ignored [-Wunused-command-line-argument]
bisheng: warning: the flag '--cce-aicore-input-parameter-size=1536' has been deprecated and will be ignored [-Wunused-command-line-argument]
ld.lld: warning: -z separate-code and -z separate-loadable-segments will be ignored
