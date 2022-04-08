transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/tut2project/ex1 {C:/intelFPGA_lite/tut2project/ex1/half_adder.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/tut2project/ex1 {C:/intelFPGA_lite/tut2project/ex1/testor1.v}

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/tut2project/ex1 {C:/intelFPGA_lite/tut2project/ex1/fourbittestbench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiv_hssi_ver -L cycloneiv_pcie_hip_ver -L cycloneiv_ver -L rtl_work -L work -voptargs="+acc"  fourbittestbench

add wave *
view structure
view signals
run -all
