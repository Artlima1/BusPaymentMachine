#do tb_script.tcl

if {[file exists work]} {
vdel -lib work -all
}
vlib work
vcom -explicit  -93 "Mux2i.vhd"
vcom -explicit  -93 "tb_Mux2i.vhd"
vsim -t 1ns   -lib work tb_Mux2i
add wave sim:/tb_Mux2i/*
#do {wave.do}
view wave
view structure
view signals
run 140ns
#quit -force
