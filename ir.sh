export TRITON_KERNEL_DUMP=1
export TRITON_DEBUG=1
export TRITON_PRINT_AUTOTUNING=1
export TRITON_ALLWAYS_COMPILE=1
export TRITON_DUMP_DIR=/home/chenxu/dump/

rm -rf $TRITON_DUMP_DIR
python mojo_opset/backends/ttx/kernels/npu/swa.py
