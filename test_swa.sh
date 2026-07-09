source /data/setenv.bash

#export PATH=/home/c00961524/npuir-pr1396-stable/bishengir/bin:$PATH


#export PATH=/home/c00961524/npuir-pr1396/bishengir/bin:$PATH
rm -rf ~/.triton/*
#export PATH=/home/chenxu/XPU-Forces/707/bishengir/bin:$PATH
export ASCEND_RT_VISIBLE_DEVICES=5
export TRITON_PRINT_AUTOTUNING=1
export TRITON_ALLWAYS_COMPILE=1

#pytest -sv mojo_opset/tests/accuracy/functions/test_attention.py::test_swa_function_perf
pytest -sv mojo_opset/tests/accuracy/functions/test_attention.py::test_swa_function
