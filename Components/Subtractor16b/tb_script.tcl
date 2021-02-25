#do tb_script.tcl

if {[file exists work]} {
vdel -lib work -all
}
vlib work
vcom -explicit  -93 "Subtrator16b.vhd"
vcom -explicit  -93 "tb_Subtrator16b.vhd"
vsim -t 1ns   -lib work tb_subtrator16b
add wave sim:/tb_subtrator16b/*
#do {wave.do}
view wave
view structure
view signals
run 120ns
#quit -force
