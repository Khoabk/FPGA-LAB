transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/tut2project/New\ folder\ (2) {C:/intelFPGA_lite/tut2project/New folder (2)/RPS.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/tut2project/New\ folder\ (2) {C:/intelFPGA_lite/tut2project/New folder (2)/mod10_counter.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/tut2project/New\ folder\ (2) {C:/intelFPGA_lite/tut2project/New folder (2)/half_adder.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/tut2project/New\ folder\ (2) {C:/intelFPGA_lite/tut2project/New folder (2)/full_adder.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/tut2project/New\ folder\ (2) {C:/intelFPGA_lite/tut2project/New folder (2)/adder_4bit.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/tut2project/New\ folder\ (2) {C:/intelFPGA_lite/tut2project/New folder (2)/clock_devider.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/tut2project/New\ folder\ (2) {C:/intelFPGA_lite/tut2project/New folder (2)/block_counter2.v}

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/tut2project/New\ folder\ (2) {C:/intelFPGA_lite/tut2project/New folder (2)/RPS_testbench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiv_hssi_ver -L cycloneiv_pcie_hip_ver -L cycloneiv_ver -L rtl_work -L work -voptargs="+acc"  RPS_testbench

add wave *
view structure
view signals
run -all
