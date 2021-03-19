#do tb_script.tcl

if {[file exists work]} {
vdel -lib work -all
}
vlib work
vcom -explicit  -93 "DataPath.vhd"
vcom -explicit  -93 "../LessThan16b/LessThan16b.vhd"
vcom -explicit  -93 "../Mux2i/Mux2i.vhd"
vcom -explicit  -93 "../Register16b/Register16b.vhd"
vcom -explicit  -93 "../Subtractor16b/Subtrator16b.vhd"
vcom -explicit  -93 "tb_DataPath.vhd"
vsim -t 1ns   -lib work tb_DataPath
add wave sim:/tb_DataPath/*
#do {wave.do}
view wave
view structure
view signals
run 60ns
#quit -force
