######################################################################
#
# File name : asyreset_Ttriger_tb_simulate.do
# Created on: Mon Nov 25 20:46:38 +0800 2024
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
vsim -voptargs="+acc" -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.asyreset_Ttriger_tb xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {asyreset_Ttriger_tb_wave.do}

view wave
view structure
view signals

do {asyreset_Ttriger_tb.udo}

run 1000ns
