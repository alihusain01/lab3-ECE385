transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/kclim/OneDrive/Documents/ece385git/lab3-ECE385/385_lab4_adders_provided_fa20 {C:/Users/kclim/OneDrive/Documents/ece385git/lab3-ECE385/385_lab4_adders_provided_fa20/ripple_adder.sv}
vlog -sv -work work +incdir+C:/Users/kclim/OneDrive/Documents/ece385git/lab3-ECE385 {C:/Users/kclim/OneDrive/Documents/ece385git/lab3-ECE385/4bitRippleAdder.sv}

vlog -sv -work work +incdir+C:/Users/kclim/OneDrive/Documents/ece385git/lab3-ECE385 {C:/Users/kclim/OneDrive/Documents/ece385git/lab3-ECE385/testbench-RA.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  testbench-RA

add wave *
view structure
view signals
run 200 ns
