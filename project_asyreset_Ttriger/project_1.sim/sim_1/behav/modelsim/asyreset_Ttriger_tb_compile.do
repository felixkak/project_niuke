######################################################################
#
# File name : asyreset_Ttriger_tb_compile.do
# Created on: Mon Nov 25 20:46:36 +0800 2024
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -64 -incr -work xil_defaultlib  \
"../../../../project_1.srcs/sources_1/new/asyreset_Ttriger.v" \
"../../../../project_1.srcs/sim_1/new/asyreset_Ttriger_tb.v" \


# compile glbl module
vlog -work xil_defaultlib "glbl.v"

quit -force
