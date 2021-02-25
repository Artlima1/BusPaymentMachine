#do tb_script.tcl

if {[file exists work]} {
vdel -lib work -all
}
vlib work
vcom -explicit  -93 "Register16b.vhd"
vcom -explicit  -93 "tb_Register16b.vhd"
vsim -t 1ns   -lib work tb_Register16b
add wave sim:/tb_Register16b/*
#do {wave.do}
view wave
view structure
view signals
run 140ns
#quit -force
