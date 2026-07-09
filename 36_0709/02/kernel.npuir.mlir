[WARNING] --enable-mixed-cv is deprecated.
loc("/home/w00609825/triton-ops-master/native/fa/test_fa_bwd_fp8.py":542:0): error: Failed to run buildFinalHIVMPipelines pipeline

loc("/home/w00609825/triton-ops-master/native/fa/test_fa_bwd_fp8.py":542:0): error: ub overflow, requires 2359296 bits while 2031616 bits available!
loc("ds"("/home/w00609825/triton-ops-master/native/fa/test_fa_bwd_fp8.py":634:23)): error: 'scf.for' op trying to schedule a pass on an operation not marked as 'IsolatedFromAbove'
loc("ds"("/home/w00609825/triton-ops-master/native/fa/test_fa_bwd_fp8.py":634:23)): error: 'scf.for' op trying to schedule a pass on an operation not marked as 'IsolatedFromAbove'
loc(callsite("p"("/home/w00609825/triton-ops-master/native/fa/test_fa_bwd_fp8.py":506:13) at "dv"("/home/w00609825/triton-ops-master/native/fa/test_fa_bwd_fp8.py":627:76))): error: 'scf.for' op trying to schedule a pass on an operation not marked as 'IsolatedFromAbove'
loc(callsite("p"("/home/w00609825/triton-ops-master/native/fa/test_fa_bwd_fp8.py":506:13) at "dv"("/home/w00609825/triton-ops-master/native/fa/test_fa_bwd_fp8.py":627:76))): error: 'scf.for' op trying to schedule a pass on an operation not marked as 'IsolatedFromAbove'
loc("/home/w00609825/triton-ops-master/native/fa/test_fa_bwd_fp8.py":542:0): error: Failed to run buildFinalHIVMPipelines pipeline

loc("/home/w00609825/triton-ops-master/native/fa/test_fa_bwd_fp8.py":542:0): error: ub overflow, requires 2359296 bits while 2031616 bits available!
loc("ds"("/home/w00609825/triton-ops-master/native/fa/test_fa_bwd_fp8.py":634:23)): error: 'scf.for' op trying to schedule a pass on an operation not marked as 'IsolatedFromAbove'
loc("ds"("/home/w00609825/triton-ops-master/native/fa/test_fa_bwd_fp8.py":634:23)): error: 'scf.for' op trying to schedule a pass on an operation not marked as 'IsolatedFromAbove'
loc(callsite("p"("/home/w00609825/triton-ops-master/native/fa/test_fa_bwd_fp8.py":506:13) at "dv"("/home/w00609825/triton-ops-master/native/fa/test_fa_bwd_fp8.py":627:76))): error: 'scf.for' op trying to schedule a pass on an operation not marked as 'IsolatedFromAbove'
loc(callsite("p"("/home/w00609825/triton-ops-master/native/fa/test_fa_bwd_fp8.py":506:13) at "dv"("/home/w00609825/triton-ops-master/native/fa/test_fa_bwd_fp8.py":627:76))): error: 'scf.for' op trying to schedule a pass on an operation not marked as 'IsolatedFromAbove'
loc("/home/w00609825/triton-ops-master/native/fa/test_fa_bwd_fp8.py":542:0): error: Failed to run buildFinalHIVMPipelines pipeline

loc("/home/w00609825/triton-ops-master/native/fa/test_fa_bwd_fp8.py":542:0): error: ub overflow, requires 2359296 bits while 2031616 bits available!
loc("ds"("/home/w00609825/triton-ops-master/native/fa/test_fa_bwd_fp8.py":634:23)): error: 'scf.for' op trying to schedule a pass on an operation not marked as 'IsolatedFromAbove'
loc("ds"("/home/w00609825/triton-ops-master/native/fa/test_fa_bwd_fp8.py":634:23)): error: 'scf.for' op trying to schedule a pass on an operation not marked as 'IsolatedFromAbove'
loc(callsite("p"("/home/w00609825/triton-ops-master/native/fa/test_fa_bwd_fp8.py":506:13) at "dv"("/home/w00609825/triton-ops-master/native/fa/test_fa_bwd_fp8.py":627:76))): error: 'scf.for' op trying to schedule a pass on an operation not marked as 'IsolatedFromAbove'
loc(callsite("p"("/home/w00609825/triton-ops-master/native/fa/test_fa_bwd_fp8.py":506:13) at "dv"("/home/w00609825/triton-ops-master/native/fa/test_fa_bwd_fp8.py":627:76))): error: 'scf.for' op trying to schedule a pass on an operation not marked as 'IsolatedFromAbove'
[ERROR] Failed to run BiShengIR pipeline
[ERROR] Executing: /usr/local/python3.11.0/lib/python3.11/site-packages/triton/backends/ascend/bishengir/bin/bishengir-compile-a5 /tmp/tmpjqguj5op/kernel.mlir --target=Ascend950PR_9579 --enable-auto-multi-buffer=True --enable-auto-bind-sub-block=True --disable-ffts --set-workspace-multibuffer=0 --limit-auto-multi-buffer-of-local-buffer=no-l0c --enable-mixed-cv=True --disable-auto-inject-block-sync=True --enable-hfusion-compile=true --enable-triton-kernel-compile=true --append-bisheng-options=-cce-link-aicore-ll-module /usr/local/python3.11.0/lib/python3.11/site-packages/triton/backends/ascend/lib/libdevice.10.bc --bishengir-print-ir-after=hivm-graph-sync-solver -o /tmp/tmpjqguj5op/kernel --enable-vf-merge-level=1
