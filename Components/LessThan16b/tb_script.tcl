#do tb_script.tcl

if {[file exists work]} {
vdel -lib work -all
}
vlib work
vcom -explicit  -93 "LessThan16b.vhd"
vcom -explicit  -93 "tb_LessThan16b.vhd"
vsim -t 1ns   -lib work tb_LessThan16b
add wave sim:/tb_LessThan16b/*
#do {wave.do}
view wave
view structure
view signals
run 180ns
#quit -force
