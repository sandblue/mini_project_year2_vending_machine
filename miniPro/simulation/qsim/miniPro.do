onerror {exit -code 1}
vlib work
vlog -work work miniPro.vo
vlog -work work MuxTwo.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.MuxTwo_vlg_vec_tst -voptargs="+acc"
vcd file -direction miniPro.msim.vcd
vcd add -internal MuxTwo_vlg_vec_tst/*
vcd add -internal MuxTwo_vlg_vec_tst/i1/*
run -all
quit -f
