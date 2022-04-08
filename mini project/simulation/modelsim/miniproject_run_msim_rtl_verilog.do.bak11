transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/lab3 {C:/intelFPGA_lite/lab3/led7_decoder.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/mini\ project {C:/intelFPGA_lite/mini project/seccond_counter.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/mini\ project {C:/intelFPGA_lite/mini project/minute_counter.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/mini\ project {C:/intelFPGA_lite/mini project/hour_counter.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/mini\ project {C:/intelFPGA_lite/mini project/switch_states.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/mini\ project {C:/intelFPGA_lite/mini project/interface_for_switch_states.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/mini\ project {C:/intelFPGA_lite/mini project/bin_to_bcd4.v}

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/mini\ project {C:/intelFPGA_lite/mini project/testbenchfinal.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiv_hssi_ver -L cycloneiv_pcie_hip_ver -L cycloneiv_ver -L rtl_work -L work -voptargs="+acc"  testbenchfinal

add wave *
view structure
view signals
run -all
