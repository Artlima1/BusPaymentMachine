#do tb_script.tcl

if {[file exists work]} {
vdel -lib work -all
}
vlib work
vcom -explicit  -93 "Controller.vhd"
vcom -explicit  -93 "tb_Controller.vhd"
vsim -t 1ns   -lib work tb_Controller
add wave sim:/tb_Controller/*
#do {wave.do}
view wave
view structure
view signals
run 60ns
#quit -force
