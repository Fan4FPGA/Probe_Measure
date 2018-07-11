transcript on
if ![file isdirectory verilog_libs] {
	file mkdir verilog_libs
}

vlib verilog_libs/altera_ver
vmap altera_ver ./verilog_libs/altera_ver
vlog -vlog01compat -work altera_ver {d:/altera/91/quartus/eda/sim_lib/altera_primitives.v}

vlib verilog_libs/lpm_ver
vmap lpm_ver ./verilog_libs/lpm_ver
vlog -vlog01compat -work lpm_ver {d:/altera/91/quartus/eda/sim_lib/220model.v}

vlib verilog_libs/sgate_ver
vmap sgate_ver ./verilog_libs/sgate_ver
vlog -vlog01compat -work sgate_ver {d:/altera/91/quartus/eda/sim_lib/sgate.v}

vlib verilog_libs/altera_mf_ver
vmap altera_mf_ver ./verilog_libs/altera_mf_ver
vlog -vlog01compat -work altera_mf_ver {d:/altera/91/quartus/eda/sim_lib/altera_mf.v}

vlib verilog_libs/cycloneiii_ver
vmap cycloneiii_ver ./verilog_libs/cycloneiii_ver
vlog -vlog01compat -work cycloneiii_ver {d:/altera/91/quartus/eda/sim_lib/cycloneiii_atoms.v}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+F:/_FORREST/Probe_Measure/Code {F:/_FORREST/Probe_Measure/Code/Plastic.v}

vlog -vlog01compat -work work +incdir+F:/_FORREST/Probe_Measure/Prj/../Code {F:/_FORREST/Probe_Measure/Prj/../Code/Plastic.v}
vlog -vlog01compat -work work +incdir+F:/_FORREST/Probe_Measure/Prj/../Code {F:/_FORREST/Probe_Measure/Prj/../Code/Plastic_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L cycloneiii_ver -L rtl_work -L work -voptargs="+acc" Plastic_tb

add wave *
view structure
view signals
run -all
