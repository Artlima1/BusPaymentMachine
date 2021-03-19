transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/altera/13.0sp1/TrabalhoFinal/BusPaymentMachine/Components/Subtractor16b/Subtrator16b.vhd}
vcom -93 -work work {D:/altera/13.0sp1/TrabalhoFinal/BusPaymentMachine/Components/Register16b/Register16b.vhd}
vcom -93 -work work {D:/altera/13.0sp1/TrabalhoFinal/BusPaymentMachine/Components/Mux2i/Mux2i.vhd}
vcom -93 -work work {D:/altera/13.0sp1/TrabalhoFinal/BusPaymentMachine/Components/LessThan16b/LessThan16b.vhd}
vcom -93 -work work {D:/altera/13.0sp1/TrabalhoFinal/BusPaymentMachine/Components/Controller/Controller.vhd}
vcom -93 -work work {D:/altera/13.0sp1/TrabalhoFinal/BusPaymentMachine/Machine/BusPaymentMachine.vhd}

vcom -93 -work work {D:/altera/13.0sp1/TrabalhoFinal/BusPaymentMachine/Machine/tb_BusPaymentMachine.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_BusPaymentMachine

add wave *
view structure
view signals
run -all
