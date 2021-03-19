#do tb_script.tcl

if {[file exists work]} {
vdel -lib work -all
}
vlib work
vcom -explicit  -93 "BusPaymentMachine.vhd"
vcom -explicit  -93 "../Components/Controller/Controller.vhd"
vcom -explicit  -93 "../Components/LessThan16b/LessThan16b.vhd"
vcom -explicit  -93 "../Components/Mux2i/Mux2i.vhd"
vcom -explicit  -93 "../Components/Register16b/Register16b.vhd"
vcom -explicit  -93 "../Components/Subtractor16b/Subtrator16b.vhd"
vcom -explicit  -93 "../Components/DataPath/DataPath.vhd"
vcom -explicit  -93 "tb_BusPaymentMachine.vhd"
vsim -t 1ns   -lib work tb_buspaymentmachine
add wave sim:/tb_buspaymentmachine/*
#do {wave.do}
view wave
view structure
view signals
run 60ns
#quit -force
