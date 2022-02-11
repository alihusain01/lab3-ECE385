transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/alijh/Documents/ECE\ 385/lab3-ECE385/385_lab4_adders_provided_fa20 {C:/Users/alijh/Documents/ECE 385/lab3-ECE385/385_lab4_adders_provided_fa20/select_adder.sv}
vlog -sv -work work +incdir+C:/Users/alijh/Documents/ECE\ 385/lab3-ECE385 {C:/Users/alijh/Documents/ECE 385/lab3-ECE385/4bitRippleAdder.sv}
vlog -sv -work work +incdir+C:/Users/alijh/Documents/ECE\ 385/lab3-ECE385 {C:/Users/alijh/Documents/ECE 385/lab3-ECE385/multiplexer.sv}
vlog -sv -work work +incdir+C:/Users/alijh/Documents/ECE\ 385/lab3-ECE385 {C:/Users/alijh/Documents/ECE 385/lab3-ECE385/fourbitCSA.sv}

vlog -sv -work work +incdir+C:/Users/alijh/Documents/ECE\ 385/lab3-ECE385 {C:/Users/alijh/Documents/ECE 385/lab3-ECE385/testbench_CSA.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  testbench_CSA

add wave *
view structure
view signals
run 200 ns
