-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "03/18/2021 23:20:04"

-- 
-- Device: Altera EP2C35F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	BusPaymentMachine IS
    PORT (
	clock : IN std_logic;
	id : IN std_logic;
	pass : IN std_logic;
	s_read : IN std_logic;
	id_value : IN std_logic_vector(15 DOWNTO 0);
	budget_read : IN std_logic_vector(15 DOWNTO 0);
	price : IN std_logic_vector(15 DOWNTO 0);
	denied : OUT std_logic;
	write_DB : OUT std_logic;
	read_DB : OUT std_logic;
	lib : OUT std_logic;
	c_id : OUT std_logic_vector(15 DOWNTO 0);
	c_budget : OUT std_logic_vector(15 DOWNTO 0)
	);
END BusPaymentMachine;

-- Design Ports Information
-- denied	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- write_DB	=>  Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- read_DB	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lib	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c_id[0]	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c_id[1]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c_id[2]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c_id[3]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c_id[4]	=>  Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c_id[5]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c_id[6]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c_id[7]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c_id[8]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c_id[9]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c_id[10]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c_id[11]	=>  Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c_id[12]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c_id[13]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c_id[14]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c_id[15]	=>  Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c_budget[0]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c_budget[1]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c_budget[2]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c_budget[3]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c_budget[4]	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c_budget[5]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c_budget[6]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c_budget[7]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c_budget[8]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c_budget[9]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c_budget[10]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c_budget[11]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c_budget[12]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c_budget[13]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c_budget[14]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c_budget[15]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s_read	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pass	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- id_value[0]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- id_value[1]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- id_value[2]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- id_value[3]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- id_value[4]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- id_value[5]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- id_value[6]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- id_value[7]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- id_value[8]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- id_value[9]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- id_value[10]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- id_value[11]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- id_value[12]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- id_value[13]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- id_value[14]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- id_value[15]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- budget_read[0]	=>  Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- budget_read[1]	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- budget_read[2]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- budget_read[3]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- budget_read[4]	=>  Location: PIN_N5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- budget_read[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- budget_read[6]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- budget_read[7]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- budget_read[8]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- budget_read[9]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- budget_read[10]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- budget_read[11]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- budget_read[12]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- budget_read[13]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- budget_read[14]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- budget_read[15]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- price[15]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- price[14]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- price[13]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- price[12]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- price[11]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- price[10]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- price[9]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- price[8]	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- price[7]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- price[6]	=>  Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- price[5]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- price[4]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- price[3]	=>  Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- price[2]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- price[1]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- price[0]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- id	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF BusPaymentMachine IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_id : std_logic;
SIGNAL ww_pass : std_logic;
SIGNAL ww_s_read : std_logic;
SIGNAL ww_id_value : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_budget_read : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_price : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_denied : std_logic;
SIGNAL ww_write_DB : std_logic;
SIGNAL ww_read_DB : std_logic;
SIGNAL ww_lib : std_logic;
SIGNAL ww_c_id : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_c_budget : std_logic_vector(15 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~16_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[8]~33_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|PRICE_REGISTER|Q~13_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \CONTROLLER_COMPONENT|current_state.Init~feeder_combout\ : std_logic;
SIGNAL \CONTROLLER_COMPONENT|current_state.Init~regout\ : std_logic;
SIGNAL \id~combout\ : std_logic;
SIGNAL \pass~combout\ : std_logic;
SIGNAL \CONTROLLER_COMPONENT|Selector0~0_combout\ : std_logic;
SIGNAL \CONTROLLER_COMPONENT|Selector0~1_combout\ : std_logic;
SIGNAL \CONTROLLER_COMPONENT|current_state.wait_st~regout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|PRICE_REGISTER|Q~0_combout\ : std_logic;
SIGNAL \s_read~combout\ : std_logic;
SIGNAL \CONTROLLER_COMPONENT|current_state~16_combout\ : std_logic;
SIGNAL \CONTROLLER_COMPONENT|current_state.read_st~regout\ : std_logic;
SIGNAL \CONTROLLER_COMPONENT|Selector1~0_combout\ : std_logic;
SIGNAL \CONTROLLER_COMPONENT|current_state.search~regout\ : std_logic;
SIGNAL \CONTROLLER_COMPONENT|current_state~17_combout\ : std_logic;
SIGNAL \CONTROLLER_COMPONENT|current_state.att~regout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|PRICE_REGISTER|Q[10]~1_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|PRICE_REGISTER|Q~2_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|PRICE_REGISTER|Q~4_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|PRICE_REGISTER|Q~5_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|PRICE_REGISTER|Q~6_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|PRICE_REGISTER|Q~7_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|PRICE_REGISTER|Q~8_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|PRICE_REGISTER|Q~9_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|PRICE_REGISTER|Q~10_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|PRICE_REGISTER|Q~11_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|PRICE_REGISTER|Q~12_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|PRICE_REGISTER|Q~16_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~17\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[1]~19_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[1]~feeder_combout\ : std_logic;
SIGNAL \CONTROLLER_COMPONENT|c_id_clr~combout\ : std_logic;
SIGNAL \CONTROLLER_COMPONENT|current_state.comp~regout\ : std_logic;
SIGNAL \CONTROLLER_COMPONENT|current_state~15_combout\ : std_logic;
SIGNAL \CONTROLLER_COMPONENT|current_state.newBudget~regout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~18_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[1]~20\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[2]~21_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[2]~feeder_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[2]~22\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[3]~23_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[3]~feeder_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[3]~24\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[4]~26\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[5]~28\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[6]~30\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[7]~32\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[8]~34\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[9]~36\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[10]~38\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[11]~40\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[12]~42\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[13]~43_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[13]~44\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[14]~45_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[14]~feeder_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|PRICE_REGISTER|Q~3_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[12]~41_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[7]~31_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[7]~feeder_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[5]~27_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|PRICE_REGISTER|Q~14_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|PRICE_REGISTER|Q~15_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~feeder_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|LESSTHAN|LessThan0~1_cout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|LESSTHAN|LessThan0~3_cout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|LESSTHAN|LessThan0~5_cout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|LESSTHAN|LessThan0~7_cout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|LESSTHAN|LessThan0~9_cout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|LESSTHAN|LessThan0~11_cout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|LESSTHAN|LessThan0~13_cout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|LESSTHAN|LessThan0~15_cout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|LESSTHAN|LessThan0~17_cout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|LESSTHAN|LessThan0~19_cout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|LESSTHAN|LessThan0~21_cout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|LESSTHAN|LessThan0~23_cout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|LESSTHAN|LessThan0~25_cout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|LESSTHAN|LessThan0~27_cout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|LESSTHAN|LessThan0~29_cout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|LESSTHAN|LessThan0~30_combout\ : std_logic;
SIGNAL \CONTROLLER_COMPONENT|current_state~14_combout\ : std_logic;
SIGNAL \CONTROLLER_COMPONENT|current_state.error_st~regout\ : std_logic;
SIGNAL \CONTROLLER_COMPONENT|current_state.pay~feeder_combout\ : std_logic;
SIGNAL \CONTROLLER_COMPONENT|current_state.pay~regout\ : std_logic;
SIGNAL \CONTROLLER_COMPONENT|Selector2~0_combout\ : std_logic;
SIGNAL \CONTROLLER_COMPONENT|current_state.allow~regout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_ID_REGISTER|Q~0_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_ID_REGISTER|Q[1]~1_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_ID_REGISTER|Q~2_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_ID_REGISTER|Q~3_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_ID_REGISTER|Q~4_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_ID_REGISTER|Q~5_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_ID_REGISTER|Q~6_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_ID_REGISTER|Q~7_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_ID_REGISTER|Q~8_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_ID_REGISTER|Q~9_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_ID_REGISTER|Q~10_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_ID_REGISTER|Q~11_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_ID_REGISTER|Q~12_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_ID_REGISTER|Q~13_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_ID_REGISTER|Q~14_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_ID_REGISTER|Q~15_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_ID_REGISTER|Q~16_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[4]~25_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[4]~feeder_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[6]~29_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[6]~feeder_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[8]~feeder_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[9]~35_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[9]~feeder_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[10]~37_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[10]~feeder_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[11]~39_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[11]~feeder_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[14]~46\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[15]~47_combout\ : std_logic;
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[15]~feeder_combout\ : std_logic;
SIGNAL \price~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \id_value~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \budget_read~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \DATAPATH_COMPONENT|PRICE_REGISTER|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \DATAPATH_COMPONENT|C_ID_REGISTER|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CONTROLLER_COMPONENT|ALT_INV_current_state.newBudget~regout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_id <= id;
ww_pass <= pass;
ww_s_read <= s_read;
ww_id_value <= id_value;
ww_budget_read <= budget_read;
ww_price <= price;
denied <= ww_denied;
write_DB <= ww_write_DB;
read_DB <= ww_read_DB;
lib <= ww_lib;
c_id <= ww_c_id;
c_budget <= ww_c_budget;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);
\CONTROLLER_COMPONENT|ALT_INV_current_state.newBudget~regout\ <= NOT \CONTROLLER_COMPONENT|current_state.newBudget~regout\;

-- Location: LCCOMB_X4_Y23_N0
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~16_combout\ = (\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(0) & ((GND) # (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(0)))) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(0) & (\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(0) $ 
-- (GND)))
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~17\ = CARRY((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(0)) # (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(0),
	datab => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(0),
	datad => VCC,
	combout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~16_combout\,
	cout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~17\);

-- Location: LCCOMB_X4_Y23_N16
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[8]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[8]~33_combout\ = ((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(8) $ (\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(8) $ (\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[7]~32\)))) # (GND)
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[8]~34\ = CARRY((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(8) & ((!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[7]~32\) # (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(8)))) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(8) & 
-- (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(8) & !\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[7]~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(8),
	datab => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(8),
	datad => VCC,
	cin => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[7]~32\,
	combout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[8]~33_combout\,
	cout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[8]~34\);

-- Location: LCFF_X5_Y23_N21
\DATAPATH_COMPONENT|PRICE_REGISTER|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|PRICE_REGISTER|Q~13_combout\,
	ena => \DATAPATH_COMPONENT|PRICE_REGISTER|Q[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(3));

-- Location: LCCOMB_X5_Y23_N20
\DATAPATH_COMPONENT|PRICE_REGISTER|Q~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|PRICE_REGISTER|Q~13_combout\ = (\price~combout\(3) & (!\CONTROLLER_COMPONENT|current_state.wait_st~regout\ & \CONTROLLER_COMPONENT|current_state.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \price~combout\(3),
	datab => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	datad => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	combout => \DATAPATH_COMPONENT|PRICE_REGISTER|Q~13_combout\);

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\id_value[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_id_value(3),
	combout => \id_value~combout\(3));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\id_value[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_id_value(4),
	combout => \id_value~combout\(4));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\id_value[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_id_value(6),
	combout => \id_value~combout\(6));

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\id_value[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_id_value(11),
	combout => \id_value~combout\(11));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\id_value[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_id_value(13),
	combout => \id_value~combout\(13));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\price[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_price(10),
	combout => \price~combout\(10));

-- Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\price[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_price(6),
	combout => \price~combout\(6));

-- Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\price[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_price(3),
	combout => \price~combout\(3));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G3
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: LCCOMB_X7_Y23_N14
\CONTROLLER_COMPONENT|current_state.Init~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLLER_COMPONENT|current_state.Init~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \CONTROLLER_COMPONENT|current_state.Init~feeder_combout\);

-- Location: LCFF_X7_Y23_N15
\CONTROLLER_COMPONENT|current_state.Init\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CONTROLLER_COMPONENT|current_state.Init~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONTROLLER_COMPONENT|current_state.Init~regout\);

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\id~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_id,
	combout => \id~combout\);

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pass~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pass,
	combout => \pass~combout\);

-- Location: LCCOMB_X7_Y23_N30
\CONTROLLER_COMPONENT|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLLER_COMPONENT|Selector0~0_combout\ = (\CONTROLLER_COMPONENT|current_state.allow~regout\ & ((\pass~combout\) # ((\CONTROLLER_COMPONENT|current_state.wait_st~regout\ & !\id~combout\)))) # (!\CONTROLLER_COMPONENT|current_state.allow~regout\ & 
-- (\CONTROLLER_COMPONENT|current_state.wait_st~regout\ & (!\id~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLLER_COMPONENT|current_state.allow~regout\,
	datab => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	datac => \id~combout\,
	datad => \pass~combout\,
	combout => \CONTROLLER_COMPONENT|Selector0~0_combout\);

-- Location: LCCOMB_X7_Y23_N28
\CONTROLLER_COMPONENT|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLLER_COMPONENT|Selector0~1_combout\ = (\CONTROLLER_COMPONENT|current_state.error_st~regout\) # ((\CONTROLLER_COMPONENT|Selector0~0_combout\) # (!\CONTROLLER_COMPONENT|current_state.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLLER_COMPONENT|current_state.error_st~regout\,
	datac => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	datad => \CONTROLLER_COMPONENT|Selector0~0_combout\,
	combout => \CONTROLLER_COMPONENT|Selector0~1_combout\);

-- Location: LCFF_X7_Y23_N29
\CONTROLLER_COMPONENT|current_state.wait_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CONTROLLER_COMPONENT|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONTROLLER_COMPONENT|current_state.wait_st~regout\);

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\price[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_price(15),
	combout => \price~combout\(15));

-- Location: LCCOMB_X7_Y23_N20
\DATAPATH_COMPONENT|PRICE_REGISTER|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|PRICE_REGISTER|Q~0_combout\ = (!\CONTROLLER_COMPONENT|current_state.wait_st~regout\ & (\CONTROLLER_COMPONENT|current_state.Init~regout\ & \price~combout\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	datac => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	datad => \price~combout\(15),
	combout => \DATAPATH_COMPONENT|PRICE_REGISTER|Q~0_combout\);

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s_read~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_s_read,
	combout => \s_read~combout\);

-- Location: LCCOMB_X7_Y23_N16
\CONTROLLER_COMPONENT|current_state~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLLER_COMPONENT|current_state~16_combout\ = (\id~combout\ & \CONTROLLER_COMPONENT|current_state.wait_st~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \id~combout\,
	datad => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	combout => \CONTROLLER_COMPONENT|current_state~16_combout\);

-- Location: LCFF_X7_Y23_N17
\CONTROLLER_COMPONENT|current_state.read_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CONTROLLER_COMPONENT|current_state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONTROLLER_COMPONENT|current_state.read_st~regout\);

-- Location: LCCOMB_X8_Y23_N12
\CONTROLLER_COMPONENT|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLLER_COMPONENT|Selector1~0_combout\ = (\CONTROLLER_COMPONENT|current_state.read_st~regout\) # ((!\s_read~combout\ & \CONTROLLER_COMPONENT|current_state.search~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_read~combout\,
	datac => \CONTROLLER_COMPONENT|current_state.search~regout\,
	datad => \CONTROLLER_COMPONENT|current_state.read_st~regout\,
	combout => \CONTROLLER_COMPONENT|Selector1~0_combout\);

-- Location: LCFF_X8_Y23_N13
\CONTROLLER_COMPONENT|current_state.search\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CONTROLLER_COMPONENT|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONTROLLER_COMPONENT|current_state.search~regout\);

-- Location: LCCOMB_X8_Y23_N26
\CONTROLLER_COMPONENT|current_state~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLLER_COMPONENT|current_state~17_combout\ = (\s_read~combout\ & \CONTROLLER_COMPONENT|current_state.search~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_read~combout\,
	datad => \CONTROLLER_COMPONENT|current_state.search~regout\,
	combout => \CONTROLLER_COMPONENT|current_state~17_combout\);

-- Location: LCFF_X8_Y23_N27
\CONTROLLER_COMPONENT|current_state.att\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CONTROLLER_COMPONENT|current_state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONTROLLER_COMPONENT|current_state.att~regout\);

-- Location: LCCOMB_X7_Y23_N8
\DATAPATH_COMPONENT|PRICE_REGISTER|Q[10]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|PRICE_REGISTER|Q[10]~1_combout\ = ((\CONTROLLER_COMPONENT|current_state.att~regout\) # (\CONTROLLER_COMPONENT|current_state.wait_st~regout\)) # (!\CONTROLLER_COMPONENT|current_state.Init~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	datac => \CONTROLLER_COMPONENT|current_state.att~regout\,
	datad => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	combout => \DATAPATH_COMPONENT|PRICE_REGISTER|Q[10]~1_combout\);

-- Location: LCFF_X7_Y23_N21
\DATAPATH_COMPONENT|PRICE_REGISTER|Q[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|PRICE_REGISTER|Q~0_combout\,
	ena => \DATAPATH_COMPONENT|PRICE_REGISTER|Q[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(15));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\price[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_price(14),
	combout => \price~combout\(14));

-- Location: LCCOMB_X3_Y23_N18
\DATAPATH_COMPONENT|PRICE_REGISTER|Q~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|PRICE_REGISTER|Q~2_combout\ = (!\CONTROLLER_COMPONENT|current_state.wait_st~regout\ & (\price~combout\(14) & \CONTROLLER_COMPONENT|current_state.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	datac => \price~combout\(14),
	datad => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	combout => \DATAPATH_COMPONENT|PRICE_REGISTER|Q~2_combout\);

-- Location: LCFF_X3_Y23_N19
\DATAPATH_COMPONENT|PRICE_REGISTER|Q[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|PRICE_REGISTER|Q~2_combout\,
	ena => \DATAPATH_COMPONENT|PRICE_REGISTER|Q[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(14));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\price[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_price(12),
	combout => \price~combout\(12));

-- Location: LCCOMB_X5_Y23_N18
\DATAPATH_COMPONENT|PRICE_REGISTER|Q~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|PRICE_REGISTER|Q~4_combout\ = (\CONTROLLER_COMPONENT|current_state.Init~regout\ & (!\CONTROLLER_COMPONENT|current_state.wait_st~regout\ & \price~combout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	datab => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	datad => \price~combout\(12),
	combout => \DATAPATH_COMPONENT|PRICE_REGISTER|Q~4_combout\);

-- Location: LCFF_X5_Y23_N19
\DATAPATH_COMPONENT|PRICE_REGISTER|Q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|PRICE_REGISTER|Q~4_combout\,
	ena => \DATAPATH_COMPONENT|PRICE_REGISTER|Q[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(12));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\price[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_price(11),
	combout => \price~combout\(11));

-- Location: LCCOMB_X5_Y23_N24
\DATAPATH_COMPONENT|PRICE_REGISTER|Q~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|PRICE_REGISTER|Q~5_combout\ = (\CONTROLLER_COMPONENT|current_state.Init~regout\ & (\price~combout\(11) & !\CONTROLLER_COMPONENT|current_state.wait_st~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	datac => \price~combout\(11),
	datad => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	combout => \DATAPATH_COMPONENT|PRICE_REGISTER|Q~5_combout\);

-- Location: LCFF_X5_Y23_N25
\DATAPATH_COMPONENT|PRICE_REGISTER|Q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|PRICE_REGISTER|Q~5_combout\,
	ena => \DATAPATH_COMPONENT|PRICE_REGISTER|Q[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(11));

-- Location: LCCOMB_X7_Y23_N10
\DATAPATH_COMPONENT|PRICE_REGISTER|Q~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|PRICE_REGISTER|Q~6_combout\ = (\price~combout\(10) & (!\CONTROLLER_COMPONENT|current_state.wait_st~regout\ & \CONTROLLER_COMPONENT|current_state.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \price~combout\(10),
	datab => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	datac => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	combout => \DATAPATH_COMPONENT|PRICE_REGISTER|Q~6_combout\);

-- Location: LCFF_X6_Y23_N29
\DATAPATH_COMPONENT|PRICE_REGISTER|Q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \DATAPATH_COMPONENT|PRICE_REGISTER|Q~6_combout\,
	sload => VCC,
	ena => \DATAPATH_COMPONENT|PRICE_REGISTER|Q[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(10));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\price[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_price(9),
	combout => \price~combout\(9));

-- Location: LCCOMB_X5_Y23_N26
\DATAPATH_COMPONENT|PRICE_REGISTER|Q~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|PRICE_REGISTER|Q~7_combout\ = (\CONTROLLER_COMPONENT|current_state.Init~regout\ & (\price~combout\(9) & !\CONTROLLER_COMPONENT|current_state.wait_st~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	datac => \price~combout\(9),
	datad => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	combout => \DATAPATH_COMPONENT|PRICE_REGISTER|Q~7_combout\);

-- Location: LCFF_X5_Y23_N27
\DATAPATH_COMPONENT|PRICE_REGISTER|Q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|PRICE_REGISTER|Q~7_combout\,
	ena => \DATAPATH_COMPONENT|PRICE_REGISTER|Q[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(9));

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\price[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_price(8),
	combout => \price~combout\(8));

-- Location: LCCOMB_X5_Y23_N12
\DATAPATH_COMPONENT|PRICE_REGISTER|Q~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|PRICE_REGISTER|Q~8_combout\ = (\CONTROLLER_COMPONENT|current_state.Init~regout\ & (\price~combout\(8) & !\CONTROLLER_COMPONENT|current_state.wait_st~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	datac => \price~combout\(8),
	datad => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	combout => \DATAPATH_COMPONENT|PRICE_REGISTER|Q~8_combout\);

-- Location: LCFF_X5_Y23_N13
\DATAPATH_COMPONENT|PRICE_REGISTER|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|PRICE_REGISTER|Q~8_combout\,
	ena => \DATAPATH_COMPONENT|PRICE_REGISTER|Q[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(8));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\price[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_price(7),
	combout => \price~combout\(7));

-- Location: LCCOMB_X5_Y23_N10
\DATAPATH_COMPONENT|PRICE_REGISTER|Q~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|PRICE_REGISTER|Q~9_combout\ = (\CONTROLLER_COMPONENT|current_state.Init~regout\ & (\price~combout\(7) & !\CONTROLLER_COMPONENT|current_state.wait_st~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	datab => \price~combout\(7),
	datad => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	combout => \DATAPATH_COMPONENT|PRICE_REGISTER|Q~9_combout\);

-- Location: LCFF_X5_Y23_N11
\DATAPATH_COMPONENT|PRICE_REGISTER|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|PRICE_REGISTER|Q~9_combout\,
	ena => \DATAPATH_COMPONENT|PRICE_REGISTER|Q[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(7));

-- Location: LCCOMB_X7_Y23_N12
\DATAPATH_COMPONENT|PRICE_REGISTER|Q~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|PRICE_REGISTER|Q~10_combout\ = (\price~combout\(6) & (!\CONTROLLER_COMPONENT|current_state.wait_st~regout\ & \CONTROLLER_COMPONENT|current_state.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \price~combout\(6),
	datab => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	datac => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	combout => \DATAPATH_COMPONENT|PRICE_REGISTER|Q~10_combout\);

-- Location: LCFF_X6_Y23_N3
\DATAPATH_COMPONENT|PRICE_REGISTER|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \DATAPATH_COMPONENT|PRICE_REGISTER|Q~10_combout\,
	sload => VCC,
	ena => \DATAPATH_COMPONENT|PRICE_REGISTER|Q[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(6));

-- Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\price[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_price(5),
	combout => \price~combout\(5));

-- Location: LCCOMB_X5_Y23_N8
\DATAPATH_COMPONENT|PRICE_REGISTER|Q~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|PRICE_REGISTER|Q~11_combout\ = (\CONTROLLER_COMPONENT|current_state.Init~regout\ & (\price~combout\(5) & !\CONTROLLER_COMPONENT|current_state.wait_st~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	datac => \price~combout\(5),
	datad => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	combout => \DATAPATH_COMPONENT|PRICE_REGISTER|Q~11_combout\);

-- Location: LCFF_X5_Y23_N9
\DATAPATH_COMPONENT|PRICE_REGISTER|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|PRICE_REGISTER|Q~11_combout\,
	ena => \DATAPATH_COMPONENT|PRICE_REGISTER|Q[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(5));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\price[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_price(4),
	combout => \price~combout\(4));

-- Location: LCCOMB_X5_Y23_N22
\DATAPATH_COMPONENT|PRICE_REGISTER|Q~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|PRICE_REGISTER|Q~12_combout\ = (\CONTROLLER_COMPONENT|current_state.Init~regout\ & (\price~combout\(4) & !\CONTROLLER_COMPONENT|current_state.wait_st~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	datac => \price~combout\(4),
	datad => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	combout => \DATAPATH_COMPONENT|PRICE_REGISTER|Q~12_combout\);

-- Location: LCFF_X5_Y23_N23
\DATAPATH_COMPONENT|PRICE_REGISTER|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|PRICE_REGISTER|Q~12_combout\,
	ena => \DATAPATH_COMPONENT|PRICE_REGISTER|Q[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(4));

-- Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\price[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_price(0),
	combout => \price~combout\(0));

-- Location: LCCOMB_X5_Y23_N30
\DATAPATH_COMPONENT|PRICE_REGISTER|Q~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|PRICE_REGISTER|Q~16_combout\ = (\CONTROLLER_COMPONENT|current_state.Init~regout\ & (\price~combout\(0) & !\CONTROLLER_COMPONENT|current_state.wait_st~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	datac => \price~combout\(0),
	datad => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	combout => \DATAPATH_COMPONENT|PRICE_REGISTER|Q~16_combout\);

-- Location: LCFF_X5_Y23_N31
\DATAPATH_COMPONENT|PRICE_REGISTER|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|PRICE_REGISTER|Q~16_combout\,
	ena => \DATAPATH_COMPONENT|PRICE_REGISTER|Q[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(0));

-- Location: LCCOMB_X4_Y23_N2
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[1]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[1]~19_combout\ = (\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(1) & ((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(1) & (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~17\)) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(1) & 
-- ((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~17\) # (GND))))) # (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(1) & ((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(1) & (\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~17\ & VCC)) # 
-- (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(1) & (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~17\))))
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[1]~20\ = CARRY((\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(1) & ((!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~17\) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(1)))) # (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(1) & 
-- (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(1) & !\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(1),
	datab => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(1),
	datad => VCC,
	cin => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~17\,
	combout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[1]~19_combout\,
	cout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[1]~20\);

-- Location: LCCOMB_X5_Y23_N14
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[1]~feeder_combout\ = \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[1]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[1]~19_combout\,
	combout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[1]~feeder_combout\);

-- Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\budget_read[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_budget_read(1),
	combout => \budget_read~combout\(1));

-- Location: LCCOMB_X7_Y23_N24
\CONTROLLER_COMPONENT|c_id_clr\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLLER_COMPONENT|c_id_clr~combout\ = (\CONTROLLER_COMPONENT|current_state.wait_st~regout\) # (!\CONTROLLER_COMPONENT|current_state.Init~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	datac => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	combout => \CONTROLLER_COMPONENT|c_id_clr~combout\);

-- Location: LCFF_X7_Y23_N7
\CONTROLLER_COMPONENT|current_state.comp\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \CONTROLLER_COMPONENT|current_state.att~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONTROLLER_COMPONENT|current_state.comp~regout\);

-- Location: LCCOMB_X7_Y23_N18
\CONTROLLER_COMPONENT|current_state~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLLER_COMPONENT|current_state~15_combout\ = (!\DATAPATH_COMPONENT|LESSTHAN|LessThan0~30_combout\ & \CONTROLLER_COMPONENT|current_state.comp~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATH_COMPONENT|LESSTHAN|LessThan0~30_combout\,
	datad => \CONTROLLER_COMPONENT|current_state.comp~regout\,
	combout => \CONTROLLER_COMPONENT|current_state~15_combout\);

-- Location: LCFF_X7_Y23_N19
\CONTROLLER_COMPONENT|current_state.newBudget\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CONTROLLER_COMPONENT|current_state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONTROLLER_COMPONENT|current_state.newBudget~regout\);

-- Location: LCCOMB_X7_Y23_N26
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~18_combout\ = (\CONTROLLER_COMPONENT|current_state.att~regout\) # ((\CONTROLLER_COMPONENT|current_state.wait_st~regout\) # ((\CONTROLLER_COMPONENT|current_state.newBudget~regout\) # 
-- (!\CONTROLLER_COMPONENT|current_state.Init~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLLER_COMPONENT|current_state.att~regout\,
	datab => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	datac => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	datad => \CONTROLLER_COMPONENT|current_state.newBudget~regout\,
	combout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~18_combout\);

-- Location: LCFF_X5_Y23_N15
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[1]~feeder_combout\,
	sdata => \budget_read~combout\(1),
	sclr => \CONTROLLER_COMPONENT|c_id_clr~combout\,
	sload => \CONTROLLER_COMPONENT|ALT_INV_current_state.newBudget~regout\,
	ena => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(1));

-- Location: LCCOMB_X4_Y23_N4
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[2]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[2]~21_combout\ = ((\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(2) $ (\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(2) $ (\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[1]~20\)))) # (GND)
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[2]~22\ = CARRY((\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(2) & (\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(2) & !\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[1]~20\)) # (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(2) & 
-- ((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(2)) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[1]~20\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(2),
	datab => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(2),
	datad => VCC,
	cin => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[1]~20\,
	combout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[2]~21_combout\,
	cout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[2]~22\);

-- Location: LCCOMB_X5_Y23_N0
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[2]~feeder_combout\ = \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[2]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[2]~21_combout\,
	combout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[2]~feeder_combout\);

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\budget_read[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_budget_read(2),
	combout => \budget_read~combout\(2));

-- Location: LCFF_X5_Y23_N1
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[2]~feeder_combout\,
	sdata => \budget_read~combout\(2),
	sclr => \CONTROLLER_COMPONENT|c_id_clr~combout\,
	sload => \CONTROLLER_COMPONENT|ALT_INV_current_state.newBudget~regout\,
	ena => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(2));

-- Location: LCCOMB_X4_Y23_N6
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[3]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[3]~23_combout\ = (\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(3) & ((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(3) & (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[2]~22\)) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(3) & 
-- ((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[2]~22\) # (GND))))) # (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(3) & ((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(3) & (\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[2]~22\ & VCC)) # 
-- (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(3) & (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[2]~22\))))
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[3]~24\ = CARRY((\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(3) & ((!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[2]~22\) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(3)))) # (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(3) & 
-- (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(3) & !\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[2]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(3),
	datab => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(3),
	datad => VCC,
	cin => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[2]~22\,
	combout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[3]~23_combout\,
	cout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[3]~24\);

-- Location: LCCOMB_X3_Y23_N4
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[3]~feeder_combout\ = \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[3]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[3]~23_combout\,
	combout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[3]~feeder_combout\);

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\budget_read[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_budget_read(3),
	combout => \budget_read~combout\(3));

-- Location: LCFF_X3_Y23_N5
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[3]~feeder_combout\,
	sdata => \budget_read~combout\(3),
	sclr => \CONTROLLER_COMPONENT|c_id_clr~combout\,
	sload => \CONTROLLER_COMPONENT|ALT_INV_current_state.newBudget~regout\,
	ena => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(3));

-- Location: LCCOMB_X4_Y23_N8
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[4]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[4]~25_combout\ = ((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(4) $ (\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(4) $ (\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[3]~24\)))) # (GND)
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[4]~26\ = CARRY((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(4) & ((!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[3]~24\) # (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(4)))) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(4) & 
-- (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(4) & !\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[3]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(4),
	datab => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(4),
	datad => VCC,
	cin => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[3]~24\,
	combout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[4]~25_combout\,
	cout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[4]~26\);

-- Location: LCCOMB_X4_Y23_N10
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[5]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[5]~27_combout\ = (\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(5) & ((\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(5) & (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[4]~26\)) # (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(5) & 
-- (\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[4]~26\ & VCC)))) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(5) & ((\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(5) & ((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[4]~26\) # (GND))) # 
-- (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(5) & (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[4]~26\))))
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[5]~28\ = CARRY((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(5) & (\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(5) & !\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[4]~26\)) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(5) & 
-- ((\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(5)) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[4]~26\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(5),
	datab => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(5),
	datad => VCC,
	cin => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[4]~26\,
	combout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[5]~27_combout\,
	cout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[5]~28\);

-- Location: LCCOMB_X4_Y23_N12
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[6]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[6]~29_combout\ = ((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(6) $ (\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(6) $ (\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[5]~28\)))) # (GND)
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[6]~30\ = CARRY((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(6) & ((!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[5]~28\) # (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(6)))) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(6) & 
-- (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(6) & !\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[5]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(6),
	datab => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(6),
	datad => VCC,
	cin => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[5]~28\,
	combout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[6]~29_combout\,
	cout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[6]~30\);

-- Location: LCCOMB_X4_Y23_N14
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[7]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[7]~31_combout\ = (\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(7) & ((\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(7) & (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[6]~30\)) # (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(7) & 
-- (\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[6]~30\ & VCC)))) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(7) & ((\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(7) & ((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[6]~30\) # (GND))) # 
-- (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(7) & (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[6]~30\))))
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[7]~32\ = CARRY((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(7) & (\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(7) & !\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[6]~30\)) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(7) & 
-- ((\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(7)) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[6]~30\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(7),
	datab => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(7),
	datad => VCC,
	cin => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[6]~30\,
	combout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[7]~31_combout\,
	cout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[7]~32\);

-- Location: LCCOMB_X4_Y23_N18
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[9]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[9]~35_combout\ = (\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(9) & ((\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(9) & (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[8]~34\)) # (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(9) & 
-- (\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[8]~34\ & VCC)))) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(9) & ((\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(9) & ((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[8]~34\) # (GND))) # 
-- (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(9) & (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[8]~34\))))
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[9]~36\ = CARRY((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(9) & (\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(9) & !\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[8]~34\)) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(9) & 
-- ((\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(9)) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[8]~34\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(9),
	datab => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(9),
	datad => VCC,
	cin => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[8]~34\,
	combout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[9]~35_combout\,
	cout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[9]~36\);

-- Location: LCCOMB_X4_Y23_N20
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[10]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[10]~37_combout\ = ((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(10) $ (\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(10) $ (\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[9]~36\)))) # (GND)
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[10]~38\ = CARRY((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(10) & ((!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[9]~36\) # (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(10)))) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(10) & 
-- (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(10) & !\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[9]~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(10),
	datab => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(10),
	datad => VCC,
	cin => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[9]~36\,
	combout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[10]~37_combout\,
	cout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[10]~38\);

-- Location: LCCOMB_X4_Y23_N22
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[11]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[11]~39_combout\ = (\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(11) & ((\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(11) & (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[10]~38\)) # (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(11) & 
-- (\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[10]~38\ & VCC)))) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(11) & ((\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(11) & ((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[10]~38\) # (GND))) # 
-- (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(11) & (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[10]~38\))))
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[11]~40\ = CARRY((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(11) & (\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(11) & !\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[10]~38\)) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(11) & 
-- ((\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(11)) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[10]~38\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(11),
	datab => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(11),
	datad => VCC,
	cin => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[10]~38\,
	combout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[11]~39_combout\,
	cout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[11]~40\);

-- Location: LCCOMB_X4_Y23_N24
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[12]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[12]~41_combout\ = ((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(12) $ (\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(12) $ (\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[11]~40\)))) # (GND)
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[12]~42\ = CARRY((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(12) & ((!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[11]~40\) # (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(12)))) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(12) & 
-- (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(12) & !\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[11]~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(12),
	datab => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(12),
	datad => VCC,
	cin => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[11]~40\,
	combout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[12]~41_combout\,
	cout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[12]~42\);

-- Location: LCCOMB_X4_Y23_N26
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[13]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[13]~43_combout\ = (\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(13) & ((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(13) & (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[12]~42\)) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(13) & 
-- ((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[12]~42\) # (GND))))) # (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(13) & ((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(13) & (\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[12]~42\ & VCC)) # 
-- (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(13) & (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[12]~42\))))
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[13]~44\ = CARRY((\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(13) & ((!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[12]~42\) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(13)))) # (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(13) & 
-- (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(13) & !\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[12]~42\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(13),
	datab => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(13),
	datad => VCC,
	cin => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[12]~42\,
	combout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[13]~43_combout\,
	cout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[13]~44\);

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\budget_read[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_budget_read(13),
	combout => \budget_read~combout\(13));

-- Location: LCFF_X4_Y23_N27
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[13]~43_combout\,
	sdata => \budget_read~combout\(13),
	sclr => \CONTROLLER_COMPONENT|c_id_clr~combout\,
	sload => \CONTROLLER_COMPONENT|ALT_INV_current_state.newBudget~regout\,
	ena => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(13));

-- Location: LCCOMB_X4_Y23_N28
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[14]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[14]~45_combout\ = ((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(14) $ (\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(14) $ (\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[13]~44\)))) # (GND)
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[14]~46\ = CARRY((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(14) & ((!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[13]~44\) # (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(14)))) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(14) & 
-- (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(14) & !\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[13]~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(14),
	datab => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(14),
	datad => VCC,
	cin => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[13]~44\,
	combout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[14]~45_combout\,
	cout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[14]~46\);

-- Location: LCCOMB_X3_Y23_N22
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[14]~feeder_combout\ = \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[14]~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[14]~45_combout\,
	combout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[14]~feeder_combout\);

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\budget_read[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_budget_read(14),
	combout => \budget_read~combout\(14));

-- Location: LCFF_X3_Y23_N23
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[14]~feeder_combout\,
	sdata => \budget_read~combout\(14),
	sclr => \CONTROLLER_COMPONENT|c_id_clr~combout\,
	sload => \CONTROLLER_COMPONENT|ALT_INV_current_state.newBudget~regout\,
	ena => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(14));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\price[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_price(13),
	combout => \price~combout\(13));

-- Location: LCCOMB_X5_Y23_N28
\DATAPATH_COMPONENT|PRICE_REGISTER|Q~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|PRICE_REGISTER|Q~3_combout\ = (\CONTROLLER_COMPONENT|current_state.Init~regout\ & (\price~combout\(13) & !\CONTROLLER_COMPONENT|current_state.wait_st~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	datac => \price~combout\(13),
	datad => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	combout => \DATAPATH_COMPONENT|PRICE_REGISTER|Q~3_combout\);

-- Location: LCFF_X5_Y23_N29
\DATAPATH_COMPONENT|PRICE_REGISTER|Q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|PRICE_REGISTER|Q~3_combout\,
	ena => \DATAPATH_COMPONENT|PRICE_REGISTER|Q[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(13));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\budget_read[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_budget_read(12),
	combout => \budget_read~combout\(12));

-- Location: LCFF_X4_Y23_N25
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[12]~41_combout\,
	sdata => \budget_read~combout\(12),
	sclr => \CONTROLLER_COMPONENT|c_id_clr~combout\,
	sload => \CONTROLLER_COMPONENT|ALT_INV_current_state.newBudget~regout\,
	ena => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(12));

-- Location: LCCOMB_X3_Y23_N16
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[7]~feeder_combout\ = \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[7]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[7]~31_combout\,
	combout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[7]~feeder_combout\);

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\budget_read[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_budget_read(7),
	combout => \budget_read~combout\(7));

-- Location: LCFF_X3_Y23_N17
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[7]~feeder_combout\,
	sdata => \budget_read~combout\(7),
	sclr => \CONTROLLER_COMPONENT|c_id_clr~combout\,
	sload => \CONTROLLER_COMPONENT|ALT_INV_current_state.newBudget~regout\,
	ena => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(7));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\budget_read[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_budget_read(5),
	combout => \budget_read~combout\(5));

-- Location: LCFF_X4_Y23_N11
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[5]~27_combout\,
	sdata => \budget_read~combout\(5),
	sclr => \CONTROLLER_COMPONENT|c_id_clr~combout\,
	sload => \CONTROLLER_COMPONENT|ALT_INV_current_state.newBudget~regout\,
	ena => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(5));

-- Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\price[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_price(2),
	combout => \price~combout\(2));

-- Location: LCCOMB_X5_Y23_N6
\DATAPATH_COMPONENT|PRICE_REGISTER|Q~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|PRICE_REGISTER|Q~14_combout\ = (\CONTROLLER_COMPONENT|current_state.Init~regout\ & (\price~combout\(2) & !\CONTROLLER_COMPONENT|current_state.wait_st~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	datac => \price~combout\(2),
	datad => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	combout => \DATAPATH_COMPONENT|PRICE_REGISTER|Q~14_combout\);

-- Location: LCFF_X5_Y23_N7
\DATAPATH_COMPONENT|PRICE_REGISTER|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|PRICE_REGISTER|Q~14_combout\,
	ena => \DATAPATH_COMPONENT|PRICE_REGISTER|Q[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(2));

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\price[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_price(1),
	combout => \price~combout\(1));

-- Location: LCCOMB_X5_Y23_N4
\DATAPATH_COMPONENT|PRICE_REGISTER|Q~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|PRICE_REGISTER|Q~15_combout\ = (\CONTROLLER_COMPONENT|current_state.Init~regout\ & (\price~combout\(1) & !\CONTROLLER_COMPONENT|current_state.wait_st~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	datab => \price~combout\(1),
	datad => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	combout => \DATAPATH_COMPONENT|PRICE_REGISTER|Q~15_combout\);

-- Location: LCFF_X5_Y23_N5
\DATAPATH_COMPONENT|PRICE_REGISTER|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|PRICE_REGISTER|Q~15_combout\,
	ena => \DATAPATH_COMPONENT|PRICE_REGISTER|Q[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(1));

-- Location: LCCOMB_X5_Y23_N16
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~feeder_combout\ = \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~16_combout\,
	combout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~feeder_combout\);

-- Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\budget_read[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_budget_read(0),
	combout => \budget_read~combout\(0));

-- Location: LCFF_X5_Y23_N17
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~feeder_combout\,
	sdata => \budget_read~combout\(0),
	sclr => \CONTROLLER_COMPONENT|c_id_clr~combout\,
	sload => \CONTROLLER_COMPONENT|ALT_INV_current_state.newBudget~regout\,
	ena => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(0));

-- Location: LCCOMB_X6_Y23_N0
\DATAPATH_COMPONENT|LESSTHAN|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|LESSTHAN|LessThan0~1_cout\ = CARRY((\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(0) & !\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(0),
	datab => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(0),
	datad => VCC,
	cout => \DATAPATH_COMPONENT|LESSTHAN|LessThan0~1_cout\);

-- Location: LCCOMB_X6_Y23_N2
\DATAPATH_COMPONENT|LESSTHAN|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|LESSTHAN|LessThan0~3_cout\ = CARRY((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(1) & ((!\DATAPATH_COMPONENT|LESSTHAN|LessThan0~1_cout\) # (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(1)))) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(1) & 
-- (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(1) & !\DATAPATH_COMPONENT|LESSTHAN|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(1),
	datab => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(1),
	datad => VCC,
	cin => \DATAPATH_COMPONENT|LESSTHAN|LessThan0~1_cout\,
	cout => \DATAPATH_COMPONENT|LESSTHAN|LessThan0~3_cout\);

-- Location: LCCOMB_X6_Y23_N4
\DATAPATH_COMPONENT|LESSTHAN|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|LESSTHAN|LessThan0~5_cout\ = CARRY((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(2) & (\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(2) & !\DATAPATH_COMPONENT|LESSTHAN|LessThan0~3_cout\)) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(2) & 
-- ((\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(2)) # (!\DATAPATH_COMPONENT|LESSTHAN|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(2),
	datab => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(2),
	datad => VCC,
	cin => \DATAPATH_COMPONENT|LESSTHAN|LessThan0~3_cout\,
	cout => \DATAPATH_COMPONENT|LESSTHAN|LessThan0~5_cout\);

-- Location: LCCOMB_X6_Y23_N6
\DATAPATH_COMPONENT|LESSTHAN|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|LESSTHAN|LessThan0~7_cout\ = CARRY((\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(3) & (\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(3) & !\DATAPATH_COMPONENT|LESSTHAN|LessThan0~5_cout\)) # (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(3) & 
-- ((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(3)) # (!\DATAPATH_COMPONENT|LESSTHAN|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(3),
	datab => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(3),
	datad => VCC,
	cin => \DATAPATH_COMPONENT|LESSTHAN|LessThan0~5_cout\,
	cout => \DATAPATH_COMPONENT|LESSTHAN|LessThan0~7_cout\);

-- Location: LCCOMB_X6_Y23_N8
\DATAPATH_COMPONENT|LESSTHAN|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|LESSTHAN|LessThan0~9_cout\ = CARRY((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(4) & (\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(4) & !\DATAPATH_COMPONENT|LESSTHAN|LessThan0~7_cout\)) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(4) & 
-- ((\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(4)) # (!\DATAPATH_COMPONENT|LESSTHAN|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(4),
	datab => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(4),
	datad => VCC,
	cin => \DATAPATH_COMPONENT|LESSTHAN|LessThan0~7_cout\,
	cout => \DATAPATH_COMPONENT|LESSTHAN|LessThan0~9_cout\);

-- Location: LCCOMB_X6_Y23_N10
\DATAPATH_COMPONENT|LESSTHAN|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|LESSTHAN|LessThan0~11_cout\ = CARRY((\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(5) & (\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(5) & !\DATAPATH_COMPONENT|LESSTHAN|LessThan0~9_cout\)) # (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(5) & 
-- ((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(5)) # (!\DATAPATH_COMPONENT|LESSTHAN|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(5),
	datab => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(5),
	datad => VCC,
	cin => \DATAPATH_COMPONENT|LESSTHAN|LessThan0~9_cout\,
	cout => \DATAPATH_COMPONENT|LESSTHAN|LessThan0~11_cout\);

-- Location: LCCOMB_X6_Y23_N12
\DATAPATH_COMPONENT|LESSTHAN|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|LESSTHAN|LessThan0~13_cout\ = CARRY((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(6) & (\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(6) & !\DATAPATH_COMPONENT|LESSTHAN|LessThan0~11_cout\)) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(6) & 
-- ((\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(6)) # (!\DATAPATH_COMPONENT|LESSTHAN|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(6),
	datab => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(6),
	datad => VCC,
	cin => \DATAPATH_COMPONENT|LESSTHAN|LessThan0~11_cout\,
	cout => \DATAPATH_COMPONENT|LESSTHAN|LessThan0~13_cout\);

-- Location: LCCOMB_X6_Y23_N14
\DATAPATH_COMPONENT|LESSTHAN|LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|LESSTHAN|LessThan0~15_cout\ = CARRY((\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(7) & (\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(7) & !\DATAPATH_COMPONENT|LESSTHAN|LessThan0~13_cout\)) # (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(7) & 
-- ((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(7)) # (!\DATAPATH_COMPONENT|LESSTHAN|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(7),
	datab => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(7),
	datad => VCC,
	cin => \DATAPATH_COMPONENT|LESSTHAN|LessThan0~13_cout\,
	cout => \DATAPATH_COMPONENT|LESSTHAN|LessThan0~15_cout\);

-- Location: LCCOMB_X6_Y23_N16
\DATAPATH_COMPONENT|LESSTHAN|LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|LESSTHAN|LessThan0~17_cout\ = CARRY((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(8) & (\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(8) & !\DATAPATH_COMPONENT|LESSTHAN|LessThan0~15_cout\)) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(8) & 
-- ((\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(8)) # (!\DATAPATH_COMPONENT|LESSTHAN|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(8),
	datab => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(8),
	datad => VCC,
	cin => \DATAPATH_COMPONENT|LESSTHAN|LessThan0~15_cout\,
	cout => \DATAPATH_COMPONENT|LESSTHAN|LessThan0~17_cout\);

-- Location: LCCOMB_X6_Y23_N18
\DATAPATH_COMPONENT|LESSTHAN|LessThan0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|LESSTHAN|LessThan0~19_cout\ = CARRY((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(9) & ((!\DATAPATH_COMPONENT|LESSTHAN|LessThan0~17_cout\) # (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(9)))) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(9) & 
-- (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(9) & !\DATAPATH_COMPONENT|LESSTHAN|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(9),
	datab => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(9),
	datad => VCC,
	cin => \DATAPATH_COMPONENT|LESSTHAN|LessThan0~17_cout\,
	cout => \DATAPATH_COMPONENT|LESSTHAN|LessThan0~19_cout\);

-- Location: LCCOMB_X6_Y23_N20
\DATAPATH_COMPONENT|LESSTHAN|LessThan0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|LESSTHAN|LessThan0~21_cout\ = CARRY((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(10) & (\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(10) & !\DATAPATH_COMPONENT|LESSTHAN|LessThan0~19_cout\)) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(10) & 
-- ((\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(10)) # (!\DATAPATH_COMPONENT|LESSTHAN|LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(10),
	datab => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(10),
	datad => VCC,
	cin => \DATAPATH_COMPONENT|LESSTHAN|LessThan0~19_cout\,
	cout => \DATAPATH_COMPONENT|LESSTHAN|LessThan0~21_cout\);

-- Location: LCCOMB_X6_Y23_N22
\DATAPATH_COMPONENT|LESSTHAN|LessThan0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|LESSTHAN|LessThan0~23_cout\ = CARRY((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(11) & ((!\DATAPATH_COMPONENT|LESSTHAN|LessThan0~21_cout\) # (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(11)))) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(11) & 
-- (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(11) & !\DATAPATH_COMPONENT|LESSTHAN|LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(11),
	datab => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(11),
	datad => VCC,
	cin => \DATAPATH_COMPONENT|LESSTHAN|LessThan0~21_cout\,
	cout => \DATAPATH_COMPONENT|LESSTHAN|LessThan0~23_cout\);

-- Location: LCCOMB_X6_Y23_N24
\DATAPATH_COMPONENT|LESSTHAN|LessThan0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|LESSTHAN|LessThan0~25_cout\ = CARRY((\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(12) & ((!\DATAPATH_COMPONENT|LESSTHAN|LessThan0~23_cout\) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(12)))) # (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(12) & 
-- (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(12) & !\DATAPATH_COMPONENT|LESSTHAN|LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(12),
	datab => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(12),
	datad => VCC,
	cin => \DATAPATH_COMPONENT|LESSTHAN|LessThan0~23_cout\,
	cout => \DATAPATH_COMPONENT|LESSTHAN|LessThan0~25_cout\);

-- Location: LCCOMB_X6_Y23_N26
\DATAPATH_COMPONENT|LESSTHAN|LessThan0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|LESSTHAN|LessThan0~27_cout\ = CARRY((\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(13) & ((!\DATAPATH_COMPONENT|LESSTHAN|LessThan0~25_cout\) # (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(13)))) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(13) & 
-- (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(13) & !\DATAPATH_COMPONENT|LESSTHAN|LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(13),
	datab => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(13),
	datad => VCC,
	cin => \DATAPATH_COMPONENT|LESSTHAN|LessThan0~25_cout\,
	cout => \DATAPATH_COMPONENT|LESSTHAN|LessThan0~27_cout\);

-- Location: LCCOMB_X6_Y23_N28
\DATAPATH_COMPONENT|LESSTHAN|LessThan0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|LESSTHAN|LessThan0~29_cout\ = CARRY((\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(14) & ((!\DATAPATH_COMPONENT|LESSTHAN|LessThan0~27_cout\) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(14)))) # (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(14) & 
-- (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(14) & !\DATAPATH_COMPONENT|LESSTHAN|LessThan0~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(14),
	datab => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(14),
	datad => VCC,
	cin => \DATAPATH_COMPONENT|LESSTHAN|LessThan0~27_cout\,
	cout => \DATAPATH_COMPONENT|LESSTHAN|LessThan0~29_cout\);

-- Location: LCCOMB_X6_Y23_N30
\DATAPATH_COMPONENT|LESSTHAN|LessThan0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|LESSTHAN|LessThan0~30_combout\ = (\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(15) & (\DATAPATH_COMPONENT|LESSTHAN|LessThan0~29_cout\ & \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(15))) # (!\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(15) & 
-- ((\DATAPATH_COMPONENT|LESSTHAN|LessThan0~29_cout\) # (\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(15),
	datad => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(15),
	cin => \DATAPATH_COMPONENT|LESSTHAN|LessThan0~29_cout\,
	combout => \DATAPATH_COMPONENT|LESSTHAN|LessThan0~30_combout\);

-- Location: LCCOMB_X7_Y23_N4
\CONTROLLER_COMPONENT|current_state~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLLER_COMPONENT|current_state~14_combout\ = (\DATAPATH_COMPONENT|LESSTHAN|LessThan0~30_combout\ & \CONTROLLER_COMPONENT|current_state.comp~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATH_COMPONENT|LESSTHAN|LessThan0~30_combout\,
	datad => \CONTROLLER_COMPONENT|current_state.comp~regout\,
	combout => \CONTROLLER_COMPONENT|current_state~14_combout\);

-- Location: LCFF_X7_Y23_N5
\CONTROLLER_COMPONENT|current_state.error_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CONTROLLER_COMPONENT|current_state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONTROLLER_COMPONENT|current_state.error_st~regout\);

-- Location: LCCOMB_X7_Y23_N22
\CONTROLLER_COMPONENT|current_state.pay~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLLER_COMPONENT|current_state.pay~feeder_combout\ = \CONTROLLER_COMPONENT|current_state.newBudget~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CONTROLLER_COMPONENT|current_state.newBudget~regout\,
	combout => \CONTROLLER_COMPONENT|current_state.pay~feeder_combout\);

-- Location: LCFF_X7_Y23_N23
\CONTROLLER_COMPONENT|current_state.pay\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CONTROLLER_COMPONENT|current_state.pay~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONTROLLER_COMPONENT|current_state.pay~regout\);

-- Location: LCCOMB_X7_Y23_N0
\CONTROLLER_COMPONENT|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLLER_COMPONENT|Selector2~0_combout\ = (\CONTROLLER_COMPONENT|current_state.pay~regout\) # ((!\pass~combout\ & \CONTROLLER_COMPONENT|current_state.allow~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pass~combout\,
	datac => \CONTROLLER_COMPONENT|current_state.allow~regout\,
	datad => \CONTROLLER_COMPONENT|current_state.pay~regout\,
	combout => \CONTROLLER_COMPONENT|Selector2~0_combout\);

-- Location: LCFF_X7_Y23_N1
\CONTROLLER_COMPONENT|current_state.allow\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CONTROLLER_COMPONENT|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONTROLLER_COMPONENT|current_state.allow~regout\);

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\id_value[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_id_value(0),
	combout => \id_value~combout\(0));

-- Location: LCCOMB_X8_Y35_N0
\DATAPATH_COMPONENT|C_ID_REGISTER|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_ID_REGISTER|Q~0_combout\ = (\id_value~combout\(0) & (!\CONTROLLER_COMPONENT|current_state.wait_st~regout\ & \CONTROLLER_COMPONENT|current_state.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \id_value~combout\(0),
	datac => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	datad => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	combout => \DATAPATH_COMPONENT|C_ID_REGISTER|Q~0_combout\);

-- Location: LCCOMB_X7_Y23_N2
\DATAPATH_COMPONENT|C_ID_REGISTER|Q[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_ID_REGISTER|Q[1]~1_combout\ = (\CONTROLLER_COMPONENT|current_state.read_st~regout\) # ((\CONTROLLER_COMPONENT|current_state.wait_st~regout\) # (!\CONTROLLER_COMPONENT|current_state.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLLER_COMPONENT|current_state.read_st~regout\,
	datab => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	datac => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	combout => \DATAPATH_COMPONENT|C_ID_REGISTER|Q[1]~1_combout\);

-- Location: LCFF_X8_Y35_N1
\DATAPATH_COMPONENT|C_ID_REGISTER|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|C_ID_REGISTER|Q~0_combout\,
	ena => \DATAPATH_COMPONENT|C_ID_REGISTER|Q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|C_ID_REGISTER|Q\(0));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\id_value[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_id_value(1),
	combout => \id_value~combout\(1));

-- Location: LCCOMB_X8_Y35_N6
\DATAPATH_COMPONENT|C_ID_REGISTER|Q~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_ID_REGISTER|Q~2_combout\ = (\id_value~combout\(1) & (!\CONTROLLER_COMPONENT|current_state.wait_st~regout\ & \CONTROLLER_COMPONENT|current_state.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \id_value~combout\(1),
	datac => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	datad => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	combout => \DATAPATH_COMPONENT|C_ID_REGISTER|Q~2_combout\);

-- Location: LCFF_X8_Y35_N7
\DATAPATH_COMPONENT|C_ID_REGISTER|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|C_ID_REGISTER|Q~2_combout\,
	ena => \DATAPATH_COMPONENT|C_ID_REGISTER|Q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|C_ID_REGISTER|Q\(1));

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\id_value[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_id_value(2),
	combout => \id_value~combout\(2));

-- Location: LCCOMB_X8_Y35_N12
\DATAPATH_COMPONENT|C_ID_REGISTER|Q~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_ID_REGISTER|Q~3_combout\ = (\id_value~combout\(2) & (!\CONTROLLER_COMPONENT|current_state.wait_st~regout\ & \CONTROLLER_COMPONENT|current_state.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \id_value~combout\(2),
	datac => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	datad => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	combout => \DATAPATH_COMPONENT|C_ID_REGISTER|Q~3_combout\);

-- Location: LCFF_X8_Y35_N13
\DATAPATH_COMPONENT|C_ID_REGISTER|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|C_ID_REGISTER|Q~3_combout\,
	ena => \DATAPATH_COMPONENT|C_ID_REGISTER|Q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|C_ID_REGISTER|Q\(2));

-- Location: LCCOMB_X8_Y35_N2
\DATAPATH_COMPONENT|C_ID_REGISTER|Q~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_ID_REGISTER|Q~4_combout\ = (\id_value~combout\(3) & (!\CONTROLLER_COMPONENT|current_state.wait_st~regout\ & \CONTROLLER_COMPONENT|current_state.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id_value~combout\(3),
	datac => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	datad => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	combout => \DATAPATH_COMPONENT|C_ID_REGISTER|Q~4_combout\);

-- Location: LCFF_X8_Y35_N3
\DATAPATH_COMPONENT|C_ID_REGISTER|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|C_ID_REGISTER|Q~4_combout\,
	ena => \DATAPATH_COMPONENT|C_ID_REGISTER|Q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|C_ID_REGISTER|Q\(3));

-- Location: LCCOMB_X8_Y35_N20
\DATAPATH_COMPONENT|C_ID_REGISTER|Q~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_ID_REGISTER|Q~5_combout\ = (\id_value~combout\(4) & (!\CONTROLLER_COMPONENT|current_state.wait_st~regout\ & \CONTROLLER_COMPONENT|current_state.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id_value~combout\(4),
	datac => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	datad => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	combout => \DATAPATH_COMPONENT|C_ID_REGISTER|Q~5_combout\);

-- Location: LCFF_X8_Y35_N21
\DATAPATH_COMPONENT|C_ID_REGISTER|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|C_ID_REGISTER|Q~5_combout\,
	ena => \DATAPATH_COMPONENT|C_ID_REGISTER|Q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|C_ID_REGISTER|Q\(4));

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\id_value[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_id_value(5),
	combout => \id_value~combout\(5));

-- Location: LCCOMB_X8_Y35_N14
\DATAPATH_COMPONENT|C_ID_REGISTER|Q~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_ID_REGISTER|Q~6_combout\ = (\id_value~combout\(5) & (!\CONTROLLER_COMPONENT|current_state.wait_st~regout\ & \CONTROLLER_COMPONENT|current_state.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \id_value~combout\(5),
	datac => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	datad => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	combout => \DATAPATH_COMPONENT|C_ID_REGISTER|Q~6_combout\);

-- Location: LCFF_X8_Y35_N15
\DATAPATH_COMPONENT|C_ID_REGISTER|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|C_ID_REGISTER|Q~6_combout\,
	ena => \DATAPATH_COMPONENT|C_ID_REGISTER|Q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|C_ID_REGISTER|Q\(5));

-- Location: LCCOMB_X8_Y35_N16
\DATAPATH_COMPONENT|C_ID_REGISTER|Q~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_ID_REGISTER|Q~7_combout\ = (\id_value~combout\(6) & (!\CONTROLLER_COMPONENT|current_state.wait_st~regout\ & \CONTROLLER_COMPONENT|current_state.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id_value~combout\(6),
	datac => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	datad => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	combout => \DATAPATH_COMPONENT|C_ID_REGISTER|Q~7_combout\);

-- Location: LCFF_X8_Y35_N17
\DATAPATH_COMPONENT|C_ID_REGISTER|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|C_ID_REGISTER|Q~7_combout\,
	ena => \DATAPATH_COMPONENT|C_ID_REGISTER|Q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|C_ID_REGISTER|Q\(6));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\id_value[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_id_value(7),
	combout => \id_value~combout\(7));

-- Location: LCCOMB_X8_Y35_N30
\DATAPATH_COMPONENT|C_ID_REGISTER|Q~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_ID_REGISTER|Q~8_combout\ = (\id_value~combout\(7) & (!\CONTROLLER_COMPONENT|current_state.wait_st~regout\ & \CONTROLLER_COMPONENT|current_state.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \id_value~combout\(7),
	datac => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	datad => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	combout => \DATAPATH_COMPONENT|C_ID_REGISTER|Q~8_combout\);

-- Location: LCFF_X8_Y35_N31
\DATAPATH_COMPONENT|C_ID_REGISTER|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|C_ID_REGISTER|Q~8_combout\,
	ena => \DATAPATH_COMPONENT|C_ID_REGISTER|Q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|C_ID_REGISTER|Q\(7));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\id_value[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_id_value(8),
	combout => \id_value~combout\(8));

-- Location: LCCOMB_X8_Y35_N4
\DATAPATH_COMPONENT|C_ID_REGISTER|Q~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_ID_REGISTER|Q~9_combout\ = (\id_value~combout\(8) & (!\CONTROLLER_COMPONENT|current_state.wait_st~regout\ & \CONTROLLER_COMPONENT|current_state.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \id_value~combout\(8),
	datac => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	datad => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	combout => \DATAPATH_COMPONENT|C_ID_REGISTER|Q~9_combout\);

-- Location: LCFF_X8_Y35_N5
\DATAPATH_COMPONENT|C_ID_REGISTER|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|C_ID_REGISTER|Q~9_combout\,
	ena => \DATAPATH_COMPONENT|C_ID_REGISTER|Q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|C_ID_REGISTER|Q\(8));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\id_value[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_id_value(9),
	combout => \id_value~combout\(9));

-- Location: LCCOMB_X8_Y35_N18
\DATAPATH_COMPONENT|C_ID_REGISTER|Q~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_ID_REGISTER|Q~10_combout\ = (!\CONTROLLER_COMPONENT|current_state.wait_st~regout\ & (\id_value~combout\(9) & \CONTROLLER_COMPONENT|current_state.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	datac => \id_value~combout\(9),
	datad => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	combout => \DATAPATH_COMPONENT|C_ID_REGISTER|Q~10_combout\);

-- Location: LCFF_X8_Y35_N19
\DATAPATH_COMPONENT|C_ID_REGISTER|Q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|C_ID_REGISTER|Q~10_combout\,
	ena => \DATAPATH_COMPONENT|C_ID_REGISTER|Q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|C_ID_REGISTER|Q\(9));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\id_value[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_id_value(10),
	combout => \id_value~combout\(10));

-- Location: LCCOMB_X8_Y35_N8
\DATAPATH_COMPONENT|C_ID_REGISTER|Q~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_ID_REGISTER|Q~11_combout\ = (\id_value~combout\(10) & (!\CONTROLLER_COMPONENT|current_state.wait_st~regout\ & \CONTROLLER_COMPONENT|current_state.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \id_value~combout\(10),
	datac => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	datad => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	combout => \DATAPATH_COMPONENT|C_ID_REGISTER|Q~11_combout\);

-- Location: LCFF_X8_Y35_N9
\DATAPATH_COMPONENT|C_ID_REGISTER|Q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|C_ID_REGISTER|Q~11_combout\,
	ena => \DATAPATH_COMPONENT|C_ID_REGISTER|Q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|C_ID_REGISTER|Q\(10));

-- Location: LCCOMB_X8_Y35_N26
\DATAPATH_COMPONENT|C_ID_REGISTER|Q~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_ID_REGISTER|Q~12_combout\ = (\id_value~combout\(11) & (!\CONTROLLER_COMPONENT|current_state.wait_st~regout\ & \CONTROLLER_COMPONENT|current_state.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id_value~combout\(11),
	datac => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	datad => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	combout => \DATAPATH_COMPONENT|C_ID_REGISTER|Q~12_combout\);

-- Location: LCFF_X8_Y35_N27
\DATAPATH_COMPONENT|C_ID_REGISTER|Q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|C_ID_REGISTER|Q~12_combout\,
	ena => \DATAPATH_COMPONENT|C_ID_REGISTER|Q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|C_ID_REGISTER|Q\(11));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\id_value[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_id_value(12),
	combout => \id_value~combout\(12));

-- Location: LCCOMB_X8_Y35_N28
\DATAPATH_COMPONENT|C_ID_REGISTER|Q~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_ID_REGISTER|Q~13_combout\ = (\id_value~combout\(12) & (!\CONTROLLER_COMPONENT|current_state.wait_st~regout\ & \CONTROLLER_COMPONENT|current_state.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \id_value~combout\(12),
	datac => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	datad => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	combout => \DATAPATH_COMPONENT|C_ID_REGISTER|Q~13_combout\);

-- Location: LCFF_X8_Y35_N29
\DATAPATH_COMPONENT|C_ID_REGISTER|Q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|C_ID_REGISTER|Q~13_combout\,
	ena => \DATAPATH_COMPONENT|C_ID_REGISTER|Q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|C_ID_REGISTER|Q\(12));

-- Location: LCCOMB_X8_Y35_N22
\DATAPATH_COMPONENT|C_ID_REGISTER|Q~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_ID_REGISTER|Q~14_combout\ = (\id_value~combout\(13) & (!\CONTROLLER_COMPONENT|current_state.wait_st~regout\ & \CONTROLLER_COMPONENT|current_state.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id_value~combout\(13),
	datac => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	datad => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	combout => \DATAPATH_COMPONENT|C_ID_REGISTER|Q~14_combout\);

-- Location: LCFF_X8_Y35_N23
\DATAPATH_COMPONENT|C_ID_REGISTER|Q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|C_ID_REGISTER|Q~14_combout\,
	ena => \DATAPATH_COMPONENT|C_ID_REGISTER|Q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|C_ID_REGISTER|Q\(13));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\id_value[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_id_value(14),
	combout => \id_value~combout\(14));

-- Location: LCCOMB_X8_Y35_N24
\DATAPATH_COMPONENT|C_ID_REGISTER|Q~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_ID_REGISTER|Q~15_combout\ = (\id_value~combout\(14) & (!\CONTROLLER_COMPONENT|current_state.wait_st~regout\ & \CONTROLLER_COMPONENT|current_state.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \id_value~combout\(14),
	datac => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	datad => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	combout => \DATAPATH_COMPONENT|C_ID_REGISTER|Q~15_combout\);

-- Location: LCFF_X8_Y35_N25
\DATAPATH_COMPONENT|C_ID_REGISTER|Q[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|C_ID_REGISTER|Q~15_combout\,
	ena => \DATAPATH_COMPONENT|C_ID_REGISTER|Q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|C_ID_REGISTER|Q\(14));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\id_value[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_id_value(15),
	combout => \id_value~combout\(15));

-- Location: LCCOMB_X8_Y35_N10
\DATAPATH_COMPONENT|C_ID_REGISTER|Q~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_ID_REGISTER|Q~16_combout\ = (\id_value~combout\(15) & (!\CONTROLLER_COMPONENT|current_state.wait_st~regout\ & \CONTROLLER_COMPONENT|current_state.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \id_value~combout\(15),
	datac => \CONTROLLER_COMPONENT|current_state.wait_st~regout\,
	datad => \CONTROLLER_COMPONENT|current_state.Init~regout\,
	combout => \DATAPATH_COMPONENT|C_ID_REGISTER|Q~16_combout\);

-- Location: LCFF_X8_Y35_N11
\DATAPATH_COMPONENT|C_ID_REGISTER|Q[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|C_ID_REGISTER|Q~16_combout\,
	ena => \DATAPATH_COMPONENT|C_ID_REGISTER|Q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|C_ID_REGISTER|Q\(15));

-- Location: LCCOMB_X5_Y23_N2
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[4]~feeder_combout\ = \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[4]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[4]~25_combout\,
	combout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[4]~feeder_combout\);

-- Location: PIN_N5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\budget_read[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_budget_read(4),
	combout => \budget_read~combout\(4));

-- Location: LCFF_X5_Y23_N3
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[4]~feeder_combout\,
	sdata => \budget_read~combout\(4),
	sclr => \CONTROLLER_COMPONENT|c_id_clr~combout\,
	sload => \CONTROLLER_COMPONENT|ALT_INV_current_state.newBudget~regout\,
	ena => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(4));

-- Location: LCCOMB_X3_Y23_N14
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[6]~feeder_combout\ = \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[6]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[6]~29_combout\,
	combout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[6]~feeder_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\budget_read[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_budget_read(6),
	combout => \budget_read~combout\(6));

-- Location: LCFF_X3_Y23_N15
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[6]~feeder_combout\,
	sdata => \budget_read~combout\(6),
	sclr => \CONTROLLER_COMPONENT|c_id_clr~combout\,
	sload => \CONTROLLER_COMPONENT|ALT_INV_current_state.newBudget~regout\,
	ena => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(6));

-- Location: LCCOMB_X3_Y23_N30
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[8]~feeder_combout\ = \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[8]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[8]~33_combout\,
	combout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[8]~feeder_combout\);

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\budget_read[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_budget_read(8),
	combout => \budget_read~combout\(8));

-- Location: LCFF_X3_Y23_N31
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[8]~feeder_combout\,
	sdata => \budget_read~combout\(8),
	sclr => \CONTROLLER_COMPONENT|c_id_clr~combout\,
	sload => \CONTROLLER_COMPONENT|ALT_INV_current_state.newBudget~regout\,
	ena => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(8));

-- Location: LCCOMB_X3_Y23_N12
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[9]~feeder_combout\ = \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[9]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[9]~35_combout\,
	combout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[9]~feeder_combout\);

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\budget_read[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_budget_read(9),
	combout => \budget_read~combout\(9));

-- Location: LCFF_X3_Y23_N13
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[9]~feeder_combout\,
	sdata => \budget_read~combout\(9),
	sclr => \CONTROLLER_COMPONENT|c_id_clr~combout\,
	sload => \CONTROLLER_COMPONENT|ALT_INV_current_state.newBudget~regout\,
	ena => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(9));

-- Location: LCCOMB_X3_Y23_N10
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[10]~feeder_combout\ = \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[10]~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[10]~37_combout\,
	combout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[10]~feeder_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\budget_read[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_budget_read(10),
	combout => \budget_read~combout\(10));

-- Location: LCFF_X3_Y23_N11
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[10]~feeder_combout\,
	sdata => \budget_read~combout\(10),
	sclr => \CONTROLLER_COMPONENT|c_id_clr~combout\,
	sload => \CONTROLLER_COMPONENT|ALT_INV_current_state.newBudget~regout\,
	ena => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(10));

-- Location: LCCOMB_X3_Y23_N28
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[11]~feeder_combout\ = \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[11]~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[11]~39_combout\,
	combout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[11]~feeder_combout\);

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\budget_read[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_budget_read(11),
	combout => \budget_read~combout\(11));

-- Location: LCFF_X3_Y23_N29
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[11]~feeder_combout\,
	sdata => \budget_read~combout\(11),
	sclr => \CONTROLLER_COMPONENT|c_id_clr~combout\,
	sload => \CONTROLLER_COMPONENT|ALT_INV_current_state.newBudget~regout\,
	ena => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(11));

-- Location: LCCOMB_X4_Y23_N30
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[15]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[15]~47_combout\ = \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(15) $ (\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[14]~46\ $ (!\DATAPATH_COMPONENT|PRICE_REGISTER|Q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(15),
	datad => \DATAPATH_COMPONENT|PRICE_REGISTER|Q\(15),
	cin => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[14]~46\,
	combout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[15]~47_combout\);

-- Location: LCCOMB_X3_Y23_N8
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[15]~feeder_combout\ = \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[15]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[15]~47_combout\,
	combout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[15]~feeder_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\budget_read[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_budget_read(15),
	combout => \budget_read~combout\(15));

-- Location: LCFF_X3_Y23_N9
\DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[15]~feeder_combout\,
	sdata => \budget_read~combout\(15),
	sclr => \CONTROLLER_COMPONENT|c_id_clr~combout\,
	sload => \CONTROLLER_COMPONENT|ALT_INV_current_state.newBudget~regout\,
	ena => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(15));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\denied~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTROLLER_COMPONENT|current_state.error_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_denied);

-- Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\write_DB~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTROLLER_COMPONENT|current_state.pay~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_write_DB);

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\read_DB~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTROLLER_COMPONENT|current_state.search~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_read_DB);

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lib~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTROLLER_COMPONENT|current_state.allow~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lib);

-- Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c_id[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATAPATH_COMPONENT|C_ID_REGISTER|Q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c_id(0));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c_id[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATAPATH_COMPONENT|C_ID_REGISTER|Q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c_id(1));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c_id[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATAPATH_COMPONENT|C_ID_REGISTER|Q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c_id(2));

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c_id[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATAPATH_COMPONENT|C_ID_REGISTER|Q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c_id(3));

-- Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c_id[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATAPATH_COMPONENT|C_ID_REGISTER|Q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c_id(4));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c_id[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATAPATH_COMPONENT|C_ID_REGISTER|Q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c_id(5));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c_id[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATAPATH_COMPONENT|C_ID_REGISTER|Q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c_id(6));

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c_id[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATAPATH_COMPONENT|C_ID_REGISTER|Q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c_id(7));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c_id[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATAPATH_COMPONENT|C_ID_REGISTER|Q\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c_id(8));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c_id[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATAPATH_COMPONENT|C_ID_REGISTER|Q\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c_id(9));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c_id[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATAPATH_COMPONENT|C_ID_REGISTER|Q\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c_id(10));

-- Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c_id[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATAPATH_COMPONENT|C_ID_REGISTER|Q\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c_id(11));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c_id[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATAPATH_COMPONENT|C_ID_REGISTER|Q\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c_id(12));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c_id[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATAPATH_COMPONENT|C_ID_REGISTER|Q\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c_id(13));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c_id[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATAPATH_COMPONENT|C_ID_REGISTER|Q\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c_id(14));

-- Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c_id[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATAPATH_COMPONENT|C_ID_REGISTER|Q\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c_id(15));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c_budget[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c_budget(0));

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c_budget[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c_budget(1));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c_budget[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c_budget(2));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c_budget[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c_budget(3));

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c_budget[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c_budget(4));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c_budget[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c_budget(5));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c_budget[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c_budget(6));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c_budget[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c_budget(7));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c_budget[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c_budget(8));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c_budget[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c_budget(9));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c_budget[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c_budget(10));

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c_budget[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c_budget(11));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c_budget[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c_budget(12));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c_budget[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c_budget(13));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c_budget[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c_budget(14));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c_budget[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DATAPATH_COMPONENT|C_BUDGET_REGISTER|Q\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c_budget(15));
END structure;


