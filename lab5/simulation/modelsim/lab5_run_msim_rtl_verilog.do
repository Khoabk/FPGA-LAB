transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/lab5 {C:/intelFPGA_lite/lab5/morse_code_ver2.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/lab5 {C:/intelFPGA_lite/lab5/interface_morse.v}

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/lab5 {C:/intelFPGA_lite/lab5/testbench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiv_hssi_ver -L cycloneiv_pcie_hip_ver -L cycloneiv_ver -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
