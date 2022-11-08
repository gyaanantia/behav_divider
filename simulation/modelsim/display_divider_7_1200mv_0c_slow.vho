-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/07/2022 16:49:37"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	display_divider IS
    PORT (
	clk : IN std_logic;
	dividend : IN std_logic_vector(15 DOWNTO 0);
	divisor : IN std_logic_vector(7 DOWNTO 0);
	start : IN std_logic;
	dividend_led : OUT std_logic_vector(27 DOWNTO 0);
	divisor_led : OUT std_logic_vector(13 DOWNTO 0);
	quotient_led : OUT std_logic_vector(27 DOWNTO 0);
	rem_led : OUT std_logic_vector(13 DOWNTO 0);
	overflow : OUT std_logic
	);
END display_divider;

-- Design Ports Information
-- dividend_led[0]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend_led[1]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend_led[2]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend_led[3]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend_led[4]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend_led[5]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend_led[6]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend_led[7]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend_led[8]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend_led[9]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend_led[10]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend_led[11]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend_led[12]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend_led[13]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend_led[14]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend_led[15]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend_led[16]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend_led[17]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend_led[18]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend_led[19]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend_led[20]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend_led[21]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend_led[22]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend_led[23]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend_led[24]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend_led[25]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend_led[26]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend_led[27]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor_led[0]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor_led[1]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor_led[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor_led[3]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor_led[4]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor_led[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor_led[6]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor_led[7]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor_led[8]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor_led[9]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor_led[10]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor_led[11]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor_led[12]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor_led[13]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient_led[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient_led[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient_led[2]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient_led[3]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient_led[4]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient_led[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient_led[6]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient_led[7]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient_led[8]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient_led[9]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient_led[10]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient_led[11]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient_led[12]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient_led[13]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient_led[14]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient_led[15]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient_led[16]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient_led[17]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient_led[18]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient_led[19]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient_led[20]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient_led[21]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient_led[22]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient_led[23]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient_led[24]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient_led[25]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient_led[26]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient_led[27]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rem_led[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rem_led[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rem_led[2]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rem_led[3]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rem_led[4]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rem_led[5]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rem_led[6]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rem_led[7]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rem_led[8]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rem_led[9]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rem_led[10]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rem_led[11]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rem_led[12]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rem_led[13]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- overflow	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[2]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[1]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[0]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[6]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[4]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[7]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[10]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[9]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[8]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[11]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[15]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[13]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[12]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[14]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[2]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[1]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[3]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[7]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[5]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[4]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF display_divider IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_dividend : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_divisor : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_start : std_logic;
SIGNAL ww_dividend_led : std_logic_vector(27 DOWNTO 0);
SIGNAL ww_divisor_led : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_quotient_led : std_logic_vector(27 DOWNTO 0);
SIGNAL ww_rem_led : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_overflow : std_logic;
SIGNAL \div|curr_state.epistemology~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \div|curr_state~7clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \div|curr_state.init~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dividend_led[0]~output_o\ : std_logic;
SIGNAL \dividend_led[1]~output_o\ : std_logic;
SIGNAL \dividend_led[2]~output_o\ : std_logic;
SIGNAL \dividend_led[3]~output_o\ : std_logic;
SIGNAL \dividend_led[4]~output_o\ : std_logic;
SIGNAL \dividend_led[5]~output_o\ : std_logic;
SIGNAL \dividend_led[6]~output_o\ : std_logic;
SIGNAL \dividend_led[7]~output_o\ : std_logic;
SIGNAL \dividend_led[8]~output_o\ : std_logic;
SIGNAL \dividend_led[9]~output_o\ : std_logic;
SIGNAL \dividend_led[10]~output_o\ : std_logic;
SIGNAL \dividend_led[11]~output_o\ : std_logic;
SIGNAL \dividend_led[12]~output_o\ : std_logic;
SIGNAL \dividend_led[13]~output_o\ : std_logic;
SIGNAL \dividend_led[14]~output_o\ : std_logic;
SIGNAL \dividend_led[15]~output_o\ : std_logic;
SIGNAL \dividend_led[16]~output_o\ : std_logic;
SIGNAL \dividend_led[17]~output_o\ : std_logic;
SIGNAL \dividend_led[18]~output_o\ : std_logic;
SIGNAL \dividend_led[19]~output_o\ : std_logic;
SIGNAL \dividend_led[20]~output_o\ : std_logic;
SIGNAL \dividend_led[21]~output_o\ : std_logic;
SIGNAL \dividend_led[22]~output_o\ : std_logic;
SIGNAL \dividend_led[23]~output_o\ : std_logic;
SIGNAL \dividend_led[24]~output_o\ : std_logic;
SIGNAL \dividend_led[25]~output_o\ : std_logic;
SIGNAL \dividend_led[26]~output_o\ : std_logic;
SIGNAL \dividend_led[27]~output_o\ : std_logic;
SIGNAL \divisor_led[0]~output_o\ : std_logic;
SIGNAL \divisor_led[1]~output_o\ : std_logic;
SIGNAL \divisor_led[2]~output_o\ : std_logic;
SIGNAL \divisor_led[3]~output_o\ : std_logic;
SIGNAL \divisor_led[4]~output_o\ : std_logic;
SIGNAL \divisor_led[5]~output_o\ : std_logic;
SIGNAL \divisor_led[6]~output_o\ : std_logic;
SIGNAL \divisor_led[7]~output_o\ : std_logic;
SIGNAL \divisor_led[8]~output_o\ : std_logic;
SIGNAL \divisor_led[9]~output_o\ : std_logic;
SIGNAL \divisor_led[10]~output_o\ : std_logic;
SIGNAL \divisor_led[11]~output_o\ : std_logic;
SIGNAL \divisor_led[12]~output_o\ : std_logic;
SIGNAL \divisor_led[13]~output_o\ : std_logic;
SIGNAL \quotient_led[0]~output_o\ : std_logic;
SIGNAL \quotient_led[1]~output_o\ : std_logic;
SIGNAL \quotient_led[2]~output_o\ : std_logic;
SIGNAL \quotient_led[3]~output_o\ : std_logic;
SIGNAL \quotient_led[4]~output_o\ : std_logic;
SIGNAL \quotient_led[5]~output_o\ : std_logic;
SIGNAL \quotient_led[6]~output_o\ : std_logic;
SIGNAL \quotient_led[7]~output_o\ : std_logic;
SIGNAL \quotient_led[8]~output_o\ : std_logic;
SIGNAL \quotient_led[9]~output_o\ : std_logic;
SIGNAL \quotient_led[10]~output_o\ : std_logic;
SIGNAL \quotient_led[11]~output_o\ : std_logic;
SIGNAL \quotient_led[12]~output_o\ : std_logic;
SIGNAL \quotient_led[13]~output_o\ : std_logic;
SIGNAL \quotient_led[14]~output_o\ : std_logic;
SIGNAL \quotient_led[15]~output_o\ : std_logic;
SIGNAL \quotient_led[16]~output_o\ : std_logic;
SIGNAL \quotient_led[17]~output_o\ : std_logic;
SIGNAL \quotient_led[18]~output_o\ : std_logic;
SIGNAL \quotient_led[19]~output_o\ : std_logic;
SIGNAL \quotient_led[20]~output_o\ : std_logic;
SIGNAL \quotient_led[21]~output_o\ : std_logic;
SIGNAL \quotient_led[22]~output_o\ : std_logic;
SIGNAL \quotient_led[23]~output_o\ : std_logic;
SIGNAL \quotient_led[24]~output_o\ : std_logic;
SIGNAL \quotient_led[25]~output_o\ : std_logic;
SIGNAL \quotient_led[26]~output_o\ : std_logic;
SIGNAL \quotient_led[27]~output_o\ : std_logic;
SIGNAL \rem_led[0]~output_o\ : std_logic;
SIGNAL \rem_led[1]~output_o\ : std_logic;
SIGNAL \rem_led[2]~output_o\ : std_logic;
SIGNAL \rem_led[3]~output_o\ : std_logic;
SIGNAL \rem_led[4]~output_o\ : std_logic;
SIGNAL \rem_led[5]~output_o\ : std_logic;
SIGNAL \rem_led[6]~output_o\ : std_logic;
SIGNAL \rem_led[7]~output_o\ : std_logic;
SIGNAL \rem_led[8]~output_o\ : std_logic;
SIGNAL \rem_led[9]~output_o\ : std_logic;
SIGNAL \rem_led[10]~output_o\ : std_logic;
SIGNAL \rem_led[11]~output_o\ : std_logic;
SIGNAL \rem_led[12]~output_o\ : std_logic;
SIGNAL \rem_led[13]~output_o\ : std_logic;
SIGNAL \overflow~output_o\ : std_logic;
SIGNAL \dividend[3]~input_o\ : std_logic;
SIGNAL \dividend[1]~input_o\ : std_logic;
SIGNAL \dividend[2]~input_o\ : std_logic;
SIGNAL \dividend[0]~input_o\ : std_logic;
SIGNAL \dividend_gen:0:dividend_dcd|segments_out[0]~0_combout\ : std_logic;
SIGNAL \dividend_gen:0:dividend_dcd|segments_out[1]~1_combout\ : std_logic;
SIGNAL \dividend_gen:0:dividend_dcd|segments_out[2]~2_combout\ : std_logic;
SIGNAL \dividend_gen:0:dividend_dcd|segments_out[3]~3_combout\ : std_logic;
SIGNAL \dividend_gen:0:dividend_dcd|segments_out[4]~4_combout\ : std_logic;
SIGNAL \dividend_gen:0:dividend_dcd|segments_out[5]~5_combout\ : std_logic;
SIGNAL \dividend_gen:0:dividend_dcd|segments_out[6]~6_combout\ : std_logic;
SIGNAL \dividend[7]~input_o\ : std_logic;
SIGNAL \dividend[6]~input_o\ : std_logic;
SIGNAL \dividend[5]~input_o\ : std_logic;
SIGNAL \dividend[4]~input_o\ : std_logic;
SIGNAL \dividend_gen:1:dividend_dcd|segments_out[0]~0_combout\ : std_logic;
SIGNAL \dividend_gen:1:dividend_dcd|segments_out[1]~1_combout\ : std_logic;
SIGNAL \dividend_gen:1:dividend_dcd|segments_out[2]~2_combout\ : std_logic;
SIGNAL \dividend_gen:1:dividend_dcd|segments_out[3]~3_combout\ : std_logic;
SIGNAL \dividend_gen:1:dividend_dcd|segments_out[4]~4_combout\ : std_logic;
SIGNAL \dividend_gen:1:dividend_dcd|segments_out[5]~5_combout\ : std_logic;
SIGNAL \dividend_gen:1:dividend_dcd|segments_out[6]~6_combout\ : std_logic;
SIGNAL \dividend[8]~input_o\ : std_logic;
SIGNAL \dividend[11]~input_o\ : std_logic;
SIGNAL \dividend[10]~input_o\ : std_logic;
SIGNAL \dividend[9]~input_o\ : std_logic;
SIGNAL \dividend_gen:2:dividend_dcd|segments_out[0]~0_combout\ : std_logic;
SIGNAL \dividend_gen:2:dividend_dcd|segments_out[1]~1_combout\ : std_logic;
SIGNAL \dividend_gen:2:dividend_dcd|segments_out[2]~2_combout\ : std_logic;
SIGNAL \dividend_gen:2:dividend_dcd|segments_out[3]~3_combout\ : std_logic;
SIGNAL \dividend_gen:2:dividend_dcd|segments_out[4]~4_combout\ : std_logic;
SIGNAL \dividend_gen:2:dividend_dcd|segments_out[5]~5_combout\ : std_logic;
SIGNAL \dividend_gen:2:dividend_dcd|segments_out[6]~6_combout\ : std_logic;
SIGNAL \dividend[14]~input_o\ : std_logic;
SIGNAL \dividend[12]~input_o\ : std_logic;
SIGNAL \dividend[13]~input_o\ : std_logic;
SIGNAL \dividend[15]~input_o\ : std_logic;
SIGNAL \dividend_gen:3:dividend_dcd|segments_out[0]~0_combout\ : std_logic;
SIGNAL \dividend_gen:3:dividend_dcd|segments_out[1]~1_combout\ : std_logic;
SIGNAL \dividend_gen:3:dividend_dcd|segments_out[2]~2_combout\ : std_logic;
SIGNAL \dividend_gen:3:dividend_dcd|segments_out[3]~3_combout\ : std_logic;
SIGNAL \dividend_gen:3:dividend_dcd|segments_out[4]~4_combout\ : std_logic;
SIGNAL \dividend_gen:3:dividend_dcd|segments_out[5]~5_combout\ : std_logic;
SIGNAL \dividend_gen:3:dividend_dcd|segments_out[6]~6_combout\ : std_logic;
SIGNAL \divisor[0]~input_o\ : std_logic;
SIGNAL \divisor[3]~input_o\ : std_logic;
SIGNAL \divisor[2]~input_o\ : std_logic;
SIGNAL \divisor[1]~input_o\ : std_logic;
SIGNAL \divisor_gen:0:divisor_dcd|segments_out[0]~0_combout\ : std_logic;
SIGNAL \divisor_gen:0:divisor_dcd|segments_out[1]~1_combout\ : std_logic;
SIGNAL \divisor_gen:0:divisor_dcd|segments_out[2]~2_combout\ : std_logic;
SIGNAL \divisor_gen:0:divisor_dcd|segments_out[3]~3_combout\ : std_logic;
SIGNAL \divisor_gen:0:divisor_dcd|segments_out[4]~4_combout\ : std_logic;
SIGNAL \divisor_gen:0:divisor_dcd|segments_out[5]~5_combout\ : std_logic;
SIGNAL \divisor_gen:0:divisor_dcd|segments_out[6]~6_combout\ : std_logic;
SIGNAL \divisor[6]~input_o\ : std_logic;
SIGNAL \divisor[5]~input_o\ : std_logic;
SIGNAL \divisor[7]~input_o\ : std_logic;
SIGNAL \divisor[4]~input_o\ : std_logic;
SIGNAL \divisor_gen:1:divisor_dcd|segments_out[0]~0_combout\ : std_logic;
SIGNAL \divisor_gen:1:divisor_dcd|segments_out[1]~1_combout\ : std_logic;
SIGNAL \divisor_gen:1:divisor_dcd|segments_out[2]~2_combout\ : std_logic;
SIGNAL \divisor_gen:1:divisor_dcd|segments_out[3]~3_combout\ : std_logic;
SIGNAL \divisor_gen:1:divisor_dcd|segments_out[4]~4_combout\ : std_logic;
SIGNAL \divisor_gen:1:divisor_dcd|segments_out[5]~5_combout\ : std_logic;
SIGNAL \divisor_gen:1:divisor_dcd|segments_out[6]~6_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \div|Equal1~0_combout\ : std_logic;
SIGNAL \div|Equal1~1_combout\ : std_logic;
SIGNAL \div|curr_state.init~feeder_combout\ : std_logic;
SIGNAL \div|curr_state.init~q\ : std_logic;
SIGNAL \div|curr_state~8_combout\ : std_logic;
SIGNAL \div|curr_state.b_eq_1~feeder_combout\ : std_logic;
SIGNAL \div|curr_state.b_eq_1~q\ : std_logic;
SIGNAL \div|a~0_combout\ : std_logic;
SIGNAL \div|Add0~1\ : std_logic;
SIGNAL \div|Add0~3\ : std_logic;
SIGNAL \div|Add0~5\ : std_logic;
SIGNAL \div|Add0~7\ : std_logic;
SIGNAL \div|Add0~9\ : std_logic;
SIGNAL \div|Add0~11\ : std_logic;
SIGNAL \div|Add0~13\ : std_logic;
SIGNAL \div|Add0~15\ : std_logic;
SIGNAL \div|Add0~17\ : std_logic;
SIGNAL \div|Add0~19\ : std_logic;
SIGNAL \div|Add0~21\ : std_logic;
SIGNAL \div|Add0~23\ : std_logic;
SIGNAL \div|Add0~25\ : std_logic;
SIGNAL \div|Add0~27\ : std_logic;
SIGNAL \div|Add0~29\ : std_logic;
SIGNAL \div|Add0~30_combout\ : std_logic;
SIGNAL \div|Add0~14_combout\ : std_logic;
SIGNAL \div|b~0_combout\ : std_logic;
SIGNAL \div|Add1~1\ : std_logic;
SIGNAL \div|Add1~3\ : std_logic;
SIGNAL \div|Add1~5\ : std_logic;
SIGNAL \div|Add1~7\ : std_logic;
SIGNAL \div|Add1~9\ : std_logic;
SIGNAL \div|Add1~11\ : std_logic;
SIGNAL \div|Add1~13\ : std_logic;
SIGNAL \div|Add1~14_combout\ : std_logic;
SIGNAL \div|curr_state.init~clkctrl_outclk\ : std_logic;
SIGNAL \div|b~1_combout\ : std_logic;
SIGNAL \div|Add0~28_combout\ : std_logic;
SIGNAL \div|Add1~12_combout\ : std_logic;
SIGNAL \div|b~2_combout\ : std_logic;
SIGNAL \div|Add1~10_combout\ : std_logic;
SIGNAL \div|b~3_combout\ : std_logic;
SIGNAL \div|Add1~6_combout\ : std_logic;
SIGNAL \div|b~5_combout\ : std_logic;
SIGNAL \div|Add1~8_combout\ : std_logic;
SIGNAL \div|b~4_combout\ : std_logic;
SIGNAL \div|Equal2~0_combout\ : std_logic;
SIGNAL \div|Add1~0_combout\ : std_logic;
SIGNAL \div|b~8_combout\ : std_logic;
SIGNAL \div|Add1~4_combout\ : std_logic;
SIGNAL \div|b~6_combout\ : std_logic;
SIGNAL \div|Add1~2_combout\ : std_logic;
SIGNAL \div|b~7_combout\ : std_logic;
SIGNAL \div|Equal2~1_combout\ : std_logic;
SIGNAL \div|Equal2~2_combout\ : std_logic;
SIGNAL \div|Add0~20_combout\ : std_logic;
SIGNAL \div|get_msb_pos~37_combout\ : std_logic;
SIGNAL \div|get_msb_pos~38_combout\ : std_logic;
SIGNAL \div|Add0~26_combout\ : std_logic;
SIGNAL \div|get_msb_pos~36_combout\ : std_logic;
SIGNAL \div|Add0~24_combout\ : std_logic;
SIGNAL \div|get_msb_pos~24_combout\ : std_logic;
SIGNAL \div|get_msb_pos~23_combout\ : std_logic;
SIGNAL \div|get_msb_pos~25_combout\ : std_logic;
SIGNAL \div|Add24~0_combout\ : std_logic;
SIGNAL \div|Add25~1\ : std_logic;
SIGNAL \div|Add25~3\ : std_logic;
SIGNAL \div|Add25~4_combout\ : std_logic;
SIGNAL \div|p~3_combout\ : std_logic;
SIGNAL \div|Add24~8_combout\ : std_logic;
SIGNAL \div|Add25~5\ : std_logic;
SIGNAL \div|Add25~7\ : std_logic;
SIGNAL \div|Add25~9\ : std_logic;
SIGNAL \div|Add25~11\ : std_logic;
SIGNAL \div|Add25~12_combout\ : std_logic;
SIGNAL \div|Add25~10_combout\ : std_logic;
SIGNAL \div|Add25~13\ : std_logic;
SIGNAL \div|Add25~14_combout\ : std_logic;
SIGNAL \div|Add25~8_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~10_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~14_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~15_combout\ : std_logic;
SIGNAL \div|Add25~0_combout\ : std_logic;
SIGNAL \div|p~0_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~49_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~50_combout\ : std_logic;
SIGNAL \div|Add25~6_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~64_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~18_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~25_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~26_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~27_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~51_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~52_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~31_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~30_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~32_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~20_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~19_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~29_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~53_combout\ : std_logic;
SIGNAL \div|Add0~22_combout\ : std_logic;
SIGNAL \div|Add0~18_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~47_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~65_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~40_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~36_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~41_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~57_combout\ : std_logic;
SIGNAL \div|Add0~16_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~59_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~58_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~60_combout\ : std_logic;
SIGNAL \div|Add0~12_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~22_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~34_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~35_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~37_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~38_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~39_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~61_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~42_combout\ : std_logic;
SIGNAL \div|Add0~10_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~28_combout\ : std_logic;
SIGNAL \div|Add0~8_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~21_combout\ : std_logic;
SIGNAL \div|Add0~6_combout\ : std_logic;
SIGNAL \div|Add0~4_combout\ : std_logic;
SIGNAL \div|ShiftLeft1~22_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~23_combout\ : std_logic;
SIGNAL \div|Add0~2_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~24_combout\ : std_logic;
SIGNAL \div|Add0~0_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~62_combout\ : std_logic;
SIGNAL \div|Add27~0_combout\ : std_logic;
SIGNAL \div|Add27~2_combout\ : std_logic;
SIGNAL \div|a~1_combout\ : std_logic;
SIGNAL \div|Add27~1\ : std_logic;
SIGNAL \div|Add27~3_combout\ : std_logic;
SIGNAL \div|Add27~11_combout\ : std_logic;
SIGNAL \div|a~4_combout\ : std_logic;
SIGNAL \div|Add27~4\ : std_logic;
SIGNAL \div|Add27~5_combout\ : std_logic;
SIGNAL \div|Add27~10_combout\ : std_logic;
SIGNAL \div|a~3_combout\ : std_logic;
SIGNAL \div|Add27~6\ : std_logic;
SIGNAL \div|Add27~7_combout\ : std_logic;
SIGNAL \div|Add27~9_combout\ : std_logic;
SIGNAL \div|a~2_combout\ : std_logic;
SIGNAL \div|Add27~8\ : std_logic;
SIGNAL \div|Add27~12_combout\ : std_logic;
SIGNAL \div|Add27~14_combout\ : std_logic;
SIGNAL \div|a~5_combout\ : std_logic;
SIGNAL \div|Add27~13\ : std_logic;
SIGNAL \div|Add27~15_combout\ : std_logic;
SIGNAL \div|Add27~23_combout\ : std_logic;
SIGNAL \div|a~8_combout\ : std_logic;
SIGNAL \div|Add27~16\ : std_logic;
SIGNAL \div|Add27~17_combout\ : std_logic;
SIGNAL \div|Add27~22_combout\ : std_logic;
SIGNAL \div|a~7_combout\ : std_logic;
SIGNAL \div|Add27~18\ : std_logic;
SIGNAL \div|Add27~20\ : std_logic;
SIGNAL \div|Add27~24_combout\ : std_logic;
SIGNAL \div|Add27~47_combout\ : std_logic;
SIGNAL \div|a~16_combout\ : std_logic;
SIGNAL \div|Add27~25\ : std_logic;
SIGNAL \div|Add27~26_combout\ : std_logic;
SIGNAL \div|Add27~46_combout\ : std_logic;
SIGNAL \div|a~15_combout\ : std_logic;
SIGNAL \div|Add27~27\ : std_logic;
SIGNAL \div|Add27~29\ : std_logic;
SIGNAL \div|Add27~30_combout\ : std_logic;
SIGNAL \div|Add27~44_combout\ : std_logic;
SIGNAL \div|a~13_combout\ : std_logic;
SIGNAL \div|Add27~31\ : std_logic;
SIGNAL \div|Add27~32_combout\ : std_logic;
SIGNAL \div|Add27~43_combout\ : std_logic;
SIGNAL \div|a~12_combout\ : std_logic;
SIGNAL \div|get_msb_pos~30_combout\ : std_logic;
SIGNAL \div|get_msb_pos~26_combout\ : std_logic;
SIGNAL \div|get_msb_pos~27_combout\ : std_logic;
SIGNAL \div|get_msb_pos~28_combout\ : std_logic;
SIGNAL \div|get_msb_pos~29_combout\ : std_logic;
SIGNAL \div|get_msb_pos~31_combout\ : std_logic;
SIGNAL \div|Add24~1\ : std_logic;
SIGNAL \div|Add24~3\ : std_logic;
SIGNAL \div|Add24~4_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~8_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~9_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~6_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~5_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~7_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~4_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~10_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~18_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~19_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~16_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~15_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~14_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~11_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~12_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~13_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~17_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~20_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~21_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~23_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~22_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~24_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~25_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~26_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~30_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~31_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~27_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~28_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~29_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~32_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~33_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~34_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~35_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~36_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~37_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~38_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~39_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~40_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~41_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~42_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~43_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~44_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~45_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~46_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~47_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~53_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~48_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~49_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~50_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~51_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~54_combout\ : std_logic;
SIGNAL \div|ShiftLeft0~52_combout\ : std_logic;
SIGNAL \div|LessThan44~1_cout\ : std_logic;
SIGNAL \div|LessThan44~3_cout\ : std_logic;
SIGNAL \div|LessThan44~5_cout\ : std_logic;
SIGNAL \div|LessThan44~7_cout\ : std_logic;
SIGNAL \div|LessThan44~9_cout\ : std_logic;
SIGNAL \div|LessThan44~11_cout\ : std_logic;
SIGNAL \div|LessThan44~13_cout\ : std_logic;
SIGNAL \div|LessThan44~15_cout\ : std_logic;
SIGNAL \div|LessThan44~17_cout\ : std_logic;
SIGNAL \div|LessThan44~19_cout\ : std_logic;
SIGNAL \div|LessThan44~21_cout\ : std_logic;
SIGNAL \div|LessThan44~23_cout\ : std_logic;
SIGNAL \div|LessThan44~25_cout\ : std_logic;
SIGNAL \div|LessThan44~27_cout\ : std_logic;
SIGNAL \div|LessThan44~29_cout\ : std_logic;
SIGNAL \div|LessThan44~30_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~63_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~48_combout\ : std_logic;
SIGNAL \div|Add27~33\ : std_logic;
SIGNAL \div|Add27~34_combout\ : std_logic;
SIGNAL \div|Add27~42_combout\ : std_logic;
SIGNAL \div|a~11_combout\ : std_logic;
SIGNAL \div|get_msb_pos~6_combout\ : std_logic;
SIGNAL \div|get_msb_pos~3_combout\ : std_logic;
SIGNAL \div|get_msb_pos~41_combout\ : std_logic;
SIGNAL \div|get_msb_pos~39_combout\ : std_logic;
SIGNAL \div|get_msb_pos~40_combout\ : std_logic;
SIGNAL \div|Add24~2_combout\ : std_logic;
SIGNAL \div|Add25~2_combout\ : std_logic;
SIGNAL \div|p~1_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~55_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~54_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~56_combout\ : std_logic;
SIGNAL \div|Add27~28_combout\ : std_logic;
SIGNAL \div|Add27~45_combout\ : std_logic;
SIGNAL \div|a~14_combout\ : std_logic;
SIGNAL \div|LessThan45~18_combout\ : std_logic;
SIGNAL \div|Selector2~0_combout\ : std_logic;
SIGNAL \div|LessThan45~3_cout\ : std_logic;
SIGNAL \div|LessThan45~5_cout\ : std_logic;
SIGNAL \div|LessThan45~7_cout\ : std_logic;
SIGNAL \div|LessThan45~9_cout\ : std_logic;
SIGNAL \div|LessThan45~11_cout\ : std_logic;
SIGNAL \div|LessThan45~13_cout\ : std_logic;
SIGNAL \div|LessThan45~15_cout\ : std_logic;
SIGNAL \div|LessThan45~16_combout\ : std_logic;
SIGNAL \div|Selector2~1_combout\ : std_logic;
SIGNAL \div|curr_state.epistemology~q\ : std_logic;
SIGNAL \div|curr_state~9_combout\ : std_logic;
SIGNAL \div|curr_state.idle~q\ : std_logic;
SIGNAL \div|curr_state~7_combout\ : std_logic;
SIGNAL \div|curr_state~7clkctrl_outclk\ : std_logic;
SIGNAL \div|ShiftLeft2~17_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~44_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~45_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~46_combout\ : std_logic;
SIGNAL \div|Add27~35\ : std_logic;
SIGNAL \div|Add27~36_combout\ : std_logic;
SIGNAL \div|Add27~41_combout\ : std_logic;
SIGNAL \div|a~10_combout\ : std_logic;
SIGNAL \div|get_msb_pos~22_combout\ : std_logic;
SIGNAL \div|get_msb_pos~34_combout\ : std_logic;
SIGNAL \div|get_msb_pos~33_combout\ : std_logic;
SIGNAL \div|get_msb_pos~35_combout\ : std_logic;
SIGNAL \div|Add24~5\ : std_logic;
SIGNAL \div|Add24~7\ : std_logic;
SIGNAL \div|Add24~9\ : std_logic;
SIGNAL \div|Add24~10_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~11_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~12_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~13_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~33_combout\ : std_logic;
SIGNAL \div|Add27~19_combout\ : std_logic;
SIGNAL \div|Add27~21_combout\ : std_logic;
SIGNAL \div|a~6_combout\ : std_logic;
SIGNAL \div|get_msb_pos~32_combout\ : std_logic;
SIGNAL \div|Add24~6_combout\ : std_logic;
SIGNAL \div|p~2_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~16_combout\ : std_logic;
SIGNAL \div|ShiftLeft2~43_combout\ : std_logic;
SIGNAL \div|Add27~37\ : std_logic;
SIGNAL \div|Add27~38_combout\ : std_logic;
SIGNAL \div|Add27~40_combout\ : std_logic;
SIGNAL \div|a~9_combout\ : std_logic;
SIGNAL \div|Selector1~0_combout\ : std_logic;
SIGNAL \div|Selector1~1_combout\ : std_logic;
SIGNAL \div|curr_state.l00p~q\ : std_logic;
SIGNAL \div|ShiftLeft1~11_combout\ : std_logic;
SIGNAL \div|ShiftLeft1~8_combout\ : std_logic;
SIGNAL \div|Add26~0_combout\ : std_logic;
SIGNAL \div|Add26~2_combout\ : std_logic;
SIGNAL \div|q~0_combout\ : std_logic;
SIGNAL \div|Add26~1\ : std_logic;
SIGNAL \div|Add26~3_combout\ : std_logic;
SIGNAL \div|Add26~11_combout\ : std_logic;
SIGNAL \div|q~3_combout\ : std_logic;
SIGNAL \div|internal_sign~0_combout\ : std_logic;
SIGNAL \div|Add28~0_combout\ : std_logic;
SIGNAL \div|Add28~2\ : std_logic;
SIGNAL \div|Add28~3_combout\ : std_logic;
SIGNAL \div|curr_state.epistemology~clkctrl_outclk\ : std_logic;
SIGNAL \div|ShiftLeft1~10_combout\ : std_logic;
SIGNAL \div|Add26~4\ : std_logic;
SIGNAL \div|Add26~5_combout\ : std_logic;
SIGNAL \div|Add26~10_combout\ : std_logic;
SIGNAL \div|q~2_combout\ : std_logic;
SIGNAL \div|Add28~4\ : std_logic;
SIGNAL \div|Add28~5_combout\ : std_logic;
SIGNAL \div|ShiftLeft1~9_combout\ : std_logic;
SIGNAL \div|Add26~6\ : std_logic;
SIGNAL \div|Add26~7_combout\ : std_logic;
SIGNAL \div|Add26~9_combout\ : std_logic;
SIGNAL \div|q~1_combout\ : std_logic;
SIGNAL \div|Add28~6\ : std_logic;
SIGNAL \div|Add28~7_combout\ : std_logic;
SIGNAL \div|Add28~1_combout\ : std_logic;
SIGNAL \quotient_gen:0:quotient_dcd|segments_out[0]~0_combout\ : std_logic;
SIGNAL \quotient_gen:0:quotient_dcd|segments_out[1]~1_combout\ : std_logic;
SIGNAL \quotient_gen:0:quotient_dcd|segments_out[2]~2_combout\ : std_logic;
SIGNAL \quotient_gen:0:quotient_dcd|segments_out[3]~3_combout\ : std_logic;
SIGNAL \quotient_gen:0:quotient_dcd|segments_out[4]~4_combout\ : std_logic;
SIGNAL \quotient_gen:0:quotient_dcd|segments_out[5]~5_combout\ : std_logic;
SIGNAL \quotient_gen:0:quotient_dcd|segments_out[6]~6_combout\ : std_logic;
SIGNAL \div|ShiftLeft1~14_combout\ : std_logic;
SIGNAL \div|ShiftLeft1~15_combout\ : std_logic;
SIGNAL \div|ShiftLeft1~12_combout\ : std_logic;
SIGNAL \div|Add26~8\ : std_logic;
SIGNAL \div|Add26~12_combout\ : std_logic;
SIGNAL \div|Add26~14_combout\ : std_logic;
SIGNAL \div|q~4_combout\ : std_logic;
SIGNAL \div|Add26~13\ : std_logic;
SIGNAL \div|Add26~15_combout\ : std_logic;
SIGNAL \div|Add26~23_combout\ : std_logic;
SIGNAL \div|q~7_combout\ : std_logic;
SIGNAL \div|Add26~16\ : std_logic;
SIGNAL \div|Add26~17_combout\ : std_logic;
SIGNAL \div|Add26~22_combout\ : std_logic;
SIGNAL \div|q~6_combout\ : std_logic;
SIGNAL \div|Add28~8\ : std_logic;
SIGNAL \div|Add28~10\ : std_logic;
SIGNAL \div|Add28~12\ : std_logic;
SIGNAL \div|Add28~13_combout\ : std_logic;
SIGNAL \div|ShiftLeft1~13_combout\ : std_logic;
SIGNAL \div|Add26~18\ : std_logic;
SIGNAL \div|Add26~19_combout\ : std_logic;
SIGNAL \div|Add26~21_combout\ : std_logic;
SIGNAL \div|q~5_combout\ : std_logic;
SIGNAL \div|Add28~14\ : std_logic;
SIGNAL \div|Add28~15_combout\ : std_logic;
SIGNAL \div|Add28~11_combout\ : std_logic;
SIGNAL \div|Add28~9_combout\ : std_logic;
SIGNAL \quotient_gen:1:quotient_dcd|segments_out[0]~0_combout\ : std_logic;
SIGNAL \quotient_gen:1:quotient_dcd|segments_out[1]~1_combout\ : std_logic;
SIGNAL \quotient_gen:1:quotient_dcd|segments_out[2]~2_combout\ : std_logic;
SIGNAL \quotient_gen:1:quotient_dcd|segments_out[3]~3_combout\ : std_logic;
SIGNAL \quotient_gen:1:quotient_dcd|segments_out[4]~4_combout\ : std_logic;
SIGNAL \quotient_gen:1:quotient_dcd|segments_out[5]~5_combout\ : std_logic;
SIGNAL \quotient_gen:1:quotient_dcd|segments_out[6]~6_combout\ : std_logic;
SIGNAL \div|ShiftLeft1~16_combout\ : std_logic;
SIGNAL \div|Add26~20\ : std_logic;
SIGNAL \div|Add26~24_combout\ : std_logic;
SIGNAL \div|Add26~26_combout\ : std_logic;
SIGNAL \div|q~8_combout\ : std_logic;
SIGNAL \div|Add28~16\ : std_logic;
SIGNAL \div|Add28~17_combout\ : std_logic;
SIGNAL \div|ShiftLeft1~23_combout\ : std_logic;
SIGNAL \div|Add26~25\ : std_logic;
SIGNAL \div|Add26~27_combout\ : std_logic;
SIGNAL \div|Add26~35_combout\ : std_logic;
SIGNAL \div|q~11_combout\ : std_logic;
SIGNAL \div|Add28~18\ : std_logic;
SIGNAL \div|Add28~19_combout\ : std_logic;
SIGNAL \div|ShiftLeft1~18_combout\ : std_logic;
SIGNAL \div|Add26~28\ : std_logic;
SIGNAL \div|Add26~29_combout\ : std_logic;
SIGNAL \div|Add26~34_combout\ : std_logic;
SIGNAL \div|q~10_combout\ : std_logic;
SIGNAL \div|Add28~20\ : std_logic;
SIGNAL \div|Add28~21_combout\ : std_logic;
SIGNAL \div|ShiftLeft1~17_combout\ : std_logic;
SIGNAL \div|Add26~30\ : std_logic;
SIGNAL \div|Add26~31_combout\ : std_logic;
SIGNAL \div|Add26~33_combout\ : std_logic;
SIGNAL \div|q~9_combout\ : std_logic;
SIGNAL \div|Add28~22\ : std_logic;
SIGNAL \div|Add28~23_combout\ : std_logic;
SIGNAL \quotient_gen:2:quotient_dcd|segments_out[0]~0_combout\ : std_logic;
SIGNAL \quotient_gen:2:quotient_dcd|segments_out[1]~1_combout\ : std_logic;
SIGNAL \quotient_gen:2:quotient_dcd|segments_out[2]~2_combout\ : std_logic;
SIGNAL \quotient_gen:2:quotient_dcd|segments_out[3]~3_combout\ : std_logic;
SIGNAL \quotient_gen:2:quotient_dcd|segments_out[4]~4_combout\ : std_logic;
SIGNAL \quotient_gen:2:quotient_dcd|segments_out[5]~5_combout\ : std_logic;
SIGNAL \quotient_gen:2:quotient_dcd|segments_out[6]~6_combout\ : std_logic;
SIGNAL \div|ShiftLeft1~24_combout\ : std_logic;
SIGNAL \div|ShiftLeft1~19_combout\ : std_logic;
SIGNAL \div|Add26~32\ : std_logic;
SIGNAL \div|Add26~36_combout\ : std_logic;
SIGNAL \div|Add26~38_combout\ : std_logic;
SIGNAL \div|q~12_combout\ : std_logic;
SIGNAL \div|Add26~37\ : std_logic;
SIGNAL \div|Add26~39_combout\ : std_logic;
SIGNAL \div|Add26~47_combout\ : std_logic;
SIGNAL \div|q~15_combout\ : std_logic;
SIGNAL \div|Add28~24\ : std_logic;
SIGNAL \div|Add28~26\ : std_logic;
SIGNAL \div|Add28~27_combout\ : std_logic;
SIGNAL \div|Add28~25_combout\ : std_logic;
SIGNAL \div|ShiftLeft1~21_combout\ : std_logic;
SIGNAL \div|Add26~40\ : std_logic;
SIGNAL \div|Add26~41_combout\ : std_logic;
SIGNAL \div|Add26~46_combout\ : std_logic;
SIGNAL \div|q~14_combout\ : std_logic;
SIGNAL \div|Add28~28\ : std_logic;
SIGNAL \div|Add28~29_combout\ : std_logic;
SIGNAL \div|ShiftLeft1~20_combout\ : std_logic;
SIGNAL \div|Add26~42\ : std_logic;
SIGNAL \div|Add26~43_combout\ : std_logic;
SIGNAL \div|Add26~45_combout\ : std_logic;
SIGNAL \div|q~13_combout\ : std_logic;
SIGNAL \div|Add28~30\ : std_logic;
SIGNAL \div|Add28~31_combout\ : std_logic;
SIGNAL \quotient_gen:3:quotient_dcd|segments_out[0]~0_combout\ : std_logic;
SIGNAL \quotient_gen:3:quotient_dcd|segments_out[1]~1_combout\ : std_logic;
SIGNAL \quotient_gen:3:quotient_dcd|segments_out[2]~2_combout\ : std_logic;
SIGNAL \quotient_gen:3:quotient_dcd|segments_out[3]~3_combout\ : std_logic;
SIGNAL \quotient_gen:3:quotient_dcd|segments_out[4]~4_combout\ : std_logic;
SIGNAL \quotient_gen:3:quotient_dcd|segments_out[5]~5_combout\ : std_logic;
SIGNAL \quotient_gen:3:quotient_dcd|segments_out[6]~6_combout\ : std_logic;
SIGNAL \div|Add29~0_combout\ : std_logic;
SIGNAL \div|Add29~2\ : std_logic;
SIGNAL \div|Add29~4\ : std_logic;
SIGNAL \div|Add29~6\ : std_logic;
SIGNAL \div|Add29~7_combout\ : std_logic;
SIGNAL \div|Add29~3_combout\ : std_logic;
SIGNAL \div|Add29~1_combout\ : std_logic;
SIGNAL \div|Add29~5_combout\ : std_logic;
SIGNAL \rem_gen:0:rem_dcd|segments_out[0]~0_combout\ : std_logic;
SIGNAL \rem_gen:0:rem_dcd|segments_out[1]~1_combout\ : std_logic;
SIGNAL \rem_gen:0:rem_dcd|segments_out[2]~2_combout\ : std_logic;
SIGNAL \rem_gen:0:rem_dcd|segments_out[3]~3_combout\ : std_logic;
SIGNAL \rem_gen:0:rem_dcd|segments_out[4]~4_combout\ : std_logic;
SIGNAL \rem_gen:0:rem_dcd|segments_out[5]~5_combout\ : std_logic;
SIGNAL \rem_gen:0:rem_dcd|segments_out[6]~6_combout\ : std_logic;
SIGNAL \div|Add29~8\ : std_logic;
SIGNAL \div|Add29~10\ : std_logic;
SIGNAL \div|Add29~12\ : std_logic;
SIGNAL \div|Add29~14\ : std_logic;
SIGNAL \div|Add29~15_combout\ : std_logic;
SIGNAL \div|Add29~13_combout\ : std_logic;
SIGNAL \div|Add29~11_combout\ : std_logic;
SIGNAL \div|Add29~9_combout\ : std_logic;
SIGNAL \rem_gen:1:rem_dcd|segments_out[0]~0_combout\ : std_logic;
SIGNAL \rem_gen:1:rem_dcd|segments_out[1]~1_combout\ : std_logic;
SIGNAL \rem_gen:1:rem_dcd|segments_out[2]~2_combout\ : std_logic;
SIGNAL \rem_gen:1:rem_dcd|segments_out[3]~3_combout\ : std_logic;
SIGNAL \rem_gen:1:rem_dcd|segments_out[4]~4_combout\ : std_logic;
SIGNAL \rem_gen:1:rem_dcd|segments_out[5]~5_combout\ : std_logic;
SIGNAL \rem_gen:1:rem_dcd|segments_out[6]~6_combout\ : std_logic;
SIGNAL \div|Equal1~2_combout\ : std_logic;
SIGNAL \div|overflow~combout\ : std_logic;
SIGNAL \div|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \div|a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \div|b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \div|quotient\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \div|remainder\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \div|q_next\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \div|a_next\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \div|b_next\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \rem_gen:1:rem_dcd|ALT_INV_segments_out[6]~6_combout\ : std_logic;
SIGNAL \rem_gen:0:rem_dcd|ALT_INV_segments_out[6]~6_combout\ : std_logic;
SIGNAL \quotient_gen:3:quotient_dcd|ALT_INV_segments_out[6]~6_combout\ : std_logic;
SIGNAL \quotient_gen:2:quotient_dcd|ALT_INV_segments_out[6]~6_combout\ : std_logic;
SIGNAL \quotient_gen:1:quotient_dcd|ALT_INV_segments_out[6]~6_combout\ : std_logic;
SIGNAL \quotient_gen:0:quotient_dcd|ALT_INV_segments_out[6]~6_combout\ : std_logic;
SIGNAL \divisor_gen:1:divisor_dcd|ALT_INV_segments_out[6]~6_combout\ : std_logic;
SIGNAL \divisor_gen:1:divisor_dcd|ALT_INV_segments_out[2]~2_combout\ : std_logic;
SIGNAL \divisor_gen:0:divisor_dcd|ALT_INV_segments_out[6]~6_combout\ : std_logic;
SIGNAL \divisor_gen:0:divisor_dcd|ALT_INV_segments_out[2]~2_combout\ : std_logic;
SIGNAL \dividend_gen:3:dividend_dcd|ALT_INV_segments_out[6]~6_combout\ : std_logic;
SIGNAL \dividend_gen:3:dividend_dcd|ALT_INV_segments_out[2]~2_combout\ : std_logic;
SIGNAL \dividend_gen:2:dividend_dcd|ALT_INV_segments_out[6]~6_combout\ : std_logic;
SIGNAL \dividend_gen:2:dividend_dcd|ALT_INV_segments_out[2]~2_combout\ : std_logic;
SIGNAL \dividend_gen:1:dividend_dcd|ALT_INV_segments_out[6]~6_combout\ : std_logic;
SIGNAL \dividend_gen:1:dividend_dcd|ALT_INV_segments_out[2]~2_combout\ : std_logic;
SIGNAL \dividend_gen:0:dividend_dcd|ALT_INV_segments_out[6]~6_combout\ : std_logic;
SIGNAL \dividend_gen:0:dividend_dcd|ALT_INV_segments_out[2]~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_dividend <= dividend;
ww_divisor <= divisor;
ww_start <= start;
dividend_led <= ww_dividend_led;
divisor_led <= ww_divisor_led;
quotient_led <= ww_quotient_led;
rem_led <= ww_rem_led;
overflow <= ww_overflow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\div|curr_state.epistemology~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \div|curr_state.epistemology~q\);

\div|curr_state~7clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \div|curr_state~7_combout\);

\div|curr_state.init~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \div|curr_state.init~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\rem_gen:1:rem_dcd|ALT_INV_segments_out[6]~6_combout\ <= NOT \rem_gen:1:rem_dcd|segments_out[6]~6_combout\;
\rem_gen:0:rem_dcd|ALT_INV_segments_out[6]~6_combout\ <= NOT \rem_gen:0:rem_dcd|segments_out[6]~6_combout\;
\quotient_gen:3:quotient_dcd|ALT_INV_segments_out[6]~6_combout\ <= NOT \quotient_gen:3:quotient_dcd|segments_out[6]~6_combout\;
\quotient_gen:2:quotient_dcd|ALT_INV_segments_out[6]~6_combout\ <= NOT \quotient_gen:2:quotient_dcd|segments_out[6]~6_combout\;
\quotient_gen:1:quotient_dcd|ALT_INV_segments_out[6]~6_combout\ <= NOT \quotient_gen:1:quotient_dcd|segments_out[6]~6_combout\;
\quotient_gen:0:quotient_dcd|ALT_INV_segments_out[6]~6_combout\ <= NOT \quotient_gen:0:quotient_dcd|segments_out[6]~6_combout\;
\divisor_gen:1:divisor_dcd|ALT_INV_segments_out[6]~6_combout\ <= NOT \divisor_gen:1:divisor_dcd|segments_out[6]~6_combout\;
\divisor_gen:1:divisor_dcd|ALT_INV_segments_out[2]~2_combout\ <= NOT \divisor_gen:1:divisor_dcd|segments_out[2]~2_combout\;
\divisor_gen:0:divisor_dcd|ALT_INV_segments_out[6]~6_combout\ <= NOT \divisor_gen:0:divisor_dcd|segments_out[6]~6_combout\;
\divisor_gen:0:divisor_dcd|ALT_INV_segments_out[2]~2_combout\ <= NOT \divisor_gen:0:divisor_dcd|segments_out[2]~2_combout\;
\dividend_gen:3:dividend_dcd|ALT_INV_segments_out[6]~6_combout\ <= NOT \dividend_gen:3:dividend_dcd|segments_out[6]~6_combout\;
\dividend_gen:3:dividend_dcd|ALT_INV_segments_out[2]~2_combout\ <= NOT \dividend_gen:3:dividend_dcd|segments_out[2]~2_combout\;
\dividend_gen:2:dividend_dcd|ALT_INV_segments_out[6]~6_combout\ <= NOT \dividend_gen:2:dividend_dcd|segments_out[6]~6_combout\;
\dividend_gen:2:dividend_dcd|ALT_INV_segments_out[2]~2_combout\ <= NOT \dividend_gen:2:dividend_dcd|segments_out[2]~2_combout\;
\dividend_gen:1:dividend_dcd|ALT_INV_segments_out[6]~6_combout\ <= NOT \dividend_gen:1:dividend_dcd|segments_out[6]~6_combout\;
\dividend_gen:1:dividend_dcd|ALT_INV_segments_out[2]~2_combout\ <= NOT \dividend_gen:1:dividend_dcd|segments_out[2]~2_combout\;
\dividend_gen:0:dividend_dcd|ALT_INV_segments_out[6]~6_combout\ <= NOT \dividend_gen:0:dividend_dcd|segments_out[6]~6_combout\;
\dividend_gen:0:dividend_dcd|ALT_INV_segments_out[2]~2_combout\ <= NOT \dividend_gen:0:dividend_dcd|segments_out[2]~2_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y64_N2
\dividend_led[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dividend_gen:0:dividend_dcd|segments_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \dividend_led[0]~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\dividend_led[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dividend_gen:0:dividend_dcd|segments_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \dividend_led[1]~output_o\);

-- Location: IOOBUF_X0_Y61_N23
\dividend_led[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dividend_gen:0:dividend_dcd|ALT_INV_segments_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \dividend_led[2]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\dividend_led[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dividend_gen:0:dividend_dcd|segments_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \dividend_led[3]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\dividend_led[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dividend_gen:0:dividend_dcd|segments_out[4]~4_combout\,
	devoe => ww_devoe,
	o => \dividend_led[4]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\dividend_led[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dividend_gen:0:dividend_dcd|segments_out[5]~5_combout\,
	devoe => ww_devoe,
	o => \dividend_led[5]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\dividend_led[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dividend_gen:0:dividend_dcd|ALT_INV_segments_out[6]~6_combout\,
	devoe => ww_devoe,
	o => \dividend_led[6]~output_o\);

-- Location: IOOBUF_X5_Y73_N23
\dividend_led[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dividend_gen:1:dividend_dcd|segments_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \dividend_led[7]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\dividend_led[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dividend_gen:1:dividend_dcd|segments_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \dividend_led[8]~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\dividend_led[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dividend_gen:1:dividend_dcd|ALT_INV_segments_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \dividend_led[9]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\dividend_led[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dividend_gen:1:dividend_dcd|segments_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \dividend_led[10]~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\dividend_led[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dividend_gen:1:dividend_dcd|segments_out[4]~4_combout\,
	devoe => ww_devoe,
	o => \dividend_led[11]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\dividend_led[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dividend_gen:1:dividend_dcd|segments_out[5]~5_combout\,
	devoe => ww_devoe,
	o => \dividend_led[12]~output_o\);

-- Location: IOOBUF_X5_Y73_N9
\dividend_led[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dividend_gen:1:dividend_dcd|ALT_INV_segments_out[6]~6_combout\,
	devoe => ww_devoe,
	o => \dividend_led[13]~output_o\);

-- Location: IOOBUF_X0_Y63_N23
\dividend_led[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dividend_gen:2:dividend_dcd|segments_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \dividend_led[14]~output_o\);

-- Location: IOOBUF_X7_Y73_N23
\dividend_led[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dividend_gen:2:dividend_dcd|segments_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \dividend_led[15]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\dividend_led[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dividend_gen:2:dividend_dcd|ALT_INV_segments_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \dividend_led[16]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\dividend_led[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dividend_gen:2:dividend_dcd|segments_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \dividend_led[17]~output_o\);

-- Location: IOOBUF_X7_Y73_N16
\dividend_led[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dividend_gen:2:dividend_dcd|segments_out[4]~4_combout\,
	devoe => ww_devoe,
	o => \dividend_led[18]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\dividend_led[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dividend_gen:2:dividend_dcd|segments_out[5]~5_combout\,
	devoe => ww_devoe,
	o => \dividend_led[19]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\dividend_led[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dividend_gen:2:dividend_dcd|ALT_INV_segments_out[6]~6_combout\,
	devoe => ww_devoe,
	o => \dividend_led[20]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\dividend_led[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dividend_gen:3:dividend_dcd|segments_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \dividend_led[21]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\dividend_led[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dividend_gen:3:dividend_dcd|segments_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \dividend_led[22]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\dividend_led[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dividend_gen:3:dividend_dcd|ALT_INV_segments_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \dividend_led[23]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\dividend_led[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dividend_gen:3:dividend_dcd|segments_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \dividend_led[24]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\dividend_led[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dividend_gen:3:dividend_dcd|segments_out[4]~4_combout\,
	devoe => ww_devoe,
	o => \dividend_led[25]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\dividend_led[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dividend_gen:3:dividend_dcd|segments_out[5]~5_combout\,
	devoe => ww_devoe,
	o => \dividend_led[26]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\dividend_led[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dividend_gen:3:dividend_dcd|ALT_INV_segments_out[6]~6_combout\,
	devoe => ww_devoe,
	o => \dividend_led[27]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\divisor_led[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \divisor_gen:0:divisor_dcd|segments_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \divisor_led[0]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\divisor_led[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \divisor_gen:0:divisor_dcd|segments_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \divisor_led[1]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\divisor_led[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \divisor_gen:0:divisor_dcd|ALT_INV_segments_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \divisor_led[2]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\divisor_led[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \divisor_gen:0:divisor_dcd|segments_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \divisor_led[3]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\divisor_led[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \divisor_gen:0:divisor_dcd|segments_out[4]~4_combout\,
	devoe => ww_devoe,
	o => \divisor_led[4]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\divisor_led[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \divisor_gen:0:divisor_dcd|segments_out[5]~5_combout\,
	devoe => ww_devoe,
	o => \divisor_led[5]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\divisor_led[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \divisor_gen:0:divisor_dcd|ALT_INV_segments_out[6]~6_combout\,
	devoe => ww_devoe,
	o => \divisor_led[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\divisor_led[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \divisor_gen:1:divisor_dcd|segments_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \divisor_led[7]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\divisor_led[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \divisor_gen:1:divisor_dcd|segments_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \divisor_led[8]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\divisor_led[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \divisor_gen:1:divisor_dcd|ALT_INV_segments_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \divisor_led[9]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\divisor_led[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \divisor_gen:1:divisor_dcd|segments_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \divisor_led[10]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\divisor_led[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \divisor_gen:1:divisor_dcd|segments_out[4]~4_combout\,
	devoe => ww_devoe,
	o => \divisor_led[11]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\divisor_led[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \divisor_gen:1:divisor_dcd|segments_out[5]~5_combout\,
	devoe => ww_devoe,
	o => \divisor_led[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\divisor_led[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \divisor_gen:1:divisor_dcd|ALT_INV_segments_out[6]~6_combout\,
	devoe => ww_devoe,
	o => \divisor_led[13]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\quotient_led[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient_gen:0:quotient_dcd|segments_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \quotient_led[0]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\quotient_led[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient_gen:0:quotient_dcd|segments_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \quotient_led[1]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\quotient_led[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient_gen:0:quotient_dcd|segments_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \quotient_led[2]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\quotient_led[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient_gen:0:quotient_dcd|segments_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \quotient_led[3]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\quotient_led[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient_gen:0:quotient_dcd|segments_out[4]~4_combout\,
	devoe => ww_devoe,
	o => \quotient_led[4]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\quotient_led[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient_gen:0:quotient_dcd|segments_out[5]~5_combout\,
	devoe => ww_devoe,
	o => \quotient_led[5]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\quotient_led[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient_gen:0:quotient_dcd|ALT_INV_segments_out[6]~6_combout\,
	devoe => ww_devoe,
	o => \quotient_led[6]~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\quotient_led[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient_gen:1:quotient_dcd|segments_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \quotient_led[7]~output_o\);

-- Location: IOOBUF_X18_Y73_N16
\quotient_led[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient_gen:1:quotient_dcd|segments_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \quotient_led[8]~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\quotient_led[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient_gen:1:quotient_dcd|segments_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \quotient_led[9]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\quotient_led[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient_gen:1:quotient_dcd|segments_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \quotient_led[10]~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\quotient_led[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient_gen:1:quotient_dcd|segments_out[4]~4_combout\,
	devoe => ww_devoe,
	o => \quotient_led[11]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\quotient_led[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient_gen:1:quotient_dcd|segments_out[5]~5_combout\,
	devoe => ww_devoe,
	o => \quotient_led[12]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\quotient_led[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient_gen:1:quotient_dcd|ALT_INV_segments_out[6]~6_combout\,
	devoe => ww_devoe,
	o => \quotient_led[13]~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\quotient_led[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient_gen:2:quotient_dcd|segments_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \quotient_led[14]~output_o\);

-- Location: IOOBUF_X0_Y63_N16
\quotient_led[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient_gen:2:quotient_dcd|segments_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \quotient_led[15]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\quotient_led[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient_gen:2:quotient_dcd|segments_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \quotient_led[16]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\quotient_led[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient_gen:2:quotient_dcd|segments_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \quotient_led[17]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\quotient_led[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient_gen:2:quotient_dcd|segments_out[4]~4_combout\,
	devoe => ww_devoe,
	o => \quotient_led[18]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\quotient_led[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient_gen:2:quotient_dcd|segments_out[5]~5_combout\,
	devoe => ww_devoe,
	o => \quotient_led[19]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\quotient_led[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient_gen:2:quotient_dcd|ALT_INV_segments_out[6]~6_combout\,
	devoe => ww_devoe,
	o => \quotient_led[20]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\quotient_led[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient_gen:3:quotient_dcd|segments_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \quotient_led[21]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\quotient_led[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient_gen:3:quotient_dcd|segments_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \quotient_led[22]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\quotient_led[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient_gen:3:quotient_dcd|segments_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \quotient_led[23]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\quotient_led[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient_gen:3:quotient_dcd|segments_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \quotient_led[24]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\quotient_led[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient_gen:3:quotient_dcd|segments_out[4]~4_combout\,
	devoe => ww_devoe,
	o => \quotient_led[25]~output_o\);

-- Location: IOOBUF_X0_Y62_N16
\quotient_led[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient_gen:3:quotient_dcd|segments_out[5]~5_combout\,
	devoe => ww_devoe,
	o => \quotient_led[26]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\quotient_led[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quotient_gen:3:quotient_dcd|ALT_INV_segments_out[6]~6_combout\,
	devoe => ww_devoe,
	o => \quotient_led[27]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\rem_led[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rem_gen:0:rem_dcd|segments_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \rem_led[0]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\rem_led[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rem_gen:0:rem_dcd|segments_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \rem_led[1]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\rem_led[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rem_gen:0:rem_dcd|segments_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \rem_led[2]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\rem_led[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rem_gen:0:rem_dcd|segments_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \rem_led[3]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\rem_led[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rem_gen:0:rem_dcd|segments_out[4]~4_combout\,
	devoe => ww_devoe,
	o => \rem_led[4]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\rem_led[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rem_gen:0:rem_dcd|segments_out[5]~5_combout\,
	devoe => ww_devoe,
	o => \rem_led[5]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\rem_led[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rem_gen:0:rem_dcd|ALT_INV_segments_out[6]~6_combout\,
	devoe => ww_devoe,
	o => \rem_led[6]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\rem_led[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rem_gen:1:rem_dcd|segments_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \rem_led[7]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\rem_led[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rem_gen:1:rem_dcd|segments_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \rem_led[8]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\rem_led[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rem_gen:1:rem_dcd|segments_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \rem_led[9]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\rem_led[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rem_gen:1:rem_dcd|segments_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \rem_led[10]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\rem_led[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rem_gen:1:rem_dcd|segments_out[4]~4_combout\,
	devoe => ww_devoe,
	o => \rem_led[11]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\rem_led[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rem_gen:1:rem_dcd|segments_out[5]~5_combout\,
	devoe => ww_devoe,
	o => \rem_led[12]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\rem_led[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rem_gen:1:rem_dcd|ALT_INV_segments_out[6]~6_combout\,
	devoe => ww_devoe,
	o => \rem_led[13]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\overflow~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \div|overflow~combout\,
	devoe => ww_devoe,
	o => \overflow~output_o\);

-- Location: IOIBUF_X40_Y73_N1
\dividend[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(3),
	o => \dividend[3]~input_o\);

-- Location: IOIBUF_X115_Y37_N1
\dividend[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(1),
	o => \dividend[1]~input_o\);

-- Location: IOIBUF_X115_Y37_N8
\dividend[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(2),
	o => \dividend[2]~input_o\);

-- Location: IOIBUF_X9_Y73_N1
\dividend[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(0),
	o => \dividend[0]~input_o\);

-- Location: LCCOMB_X32_Y61_N24
\dividend_gen:0:dividend_dcd|segments_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dividend_gen:0:dividend_dcd|segments_out[0]~0_combout\ = (\dividend[3]~input_o\ & (\dividend[0]~input_o\ & (\dividend[1]~input_o\ $ (\dividend[2]~input_o\)))) # (!\dividend[3]~input_o\ & (!\dividend[1]~input_o\ & (\dividend[2]~input_o\ $ 
-- (\dividend[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[3]~input_o\,
	datab => \dividend[1]~input_o\,
	datac => \dividend[2]~input_o\,
	datad => \dividend[0]~input_o\,
	combout => \dividend_gen:0:dividend_dcd|segments_out[0]~0_combout\);

-- Location: LCCOMB_X32_Y61_N14
\dividend_gen:0:dividend_dcd|segments_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dividend_gen:0:dividend_dcd|segments_out[1]~1_combout\ = (\dividend[3]~input_o\ & ((\dividend[0]~input_o\ & (\dividend[1]~input_o\)) # (!\dividend[0]~input_o\ & ((\dividend[2]~input_o\))))) # (!\dividend[3]~input_o\ & (\dividend[2]~input_o\ & 
-- (\dividend[1]~input_o\ $ (\dividend[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[3]~input_o\,
	datab => \dividend[1]~input_o\,
	datac => \dividend[2]~input_o\,
	datad => \dividend[0]~input_o\,
	combout => \dividend_gen:0:dividend_dcd|segments_out[1]~1_combout\);

-- Location: LCCOMB_X32_Y61_N0
\dividend_gen:0:dividend_dcd|segments_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dividend_gen:0:dividend_dcd|segments_out[2]~2_combout\ = (\dividend[3]~input_o\ & (((!\dividend[1]~input_o\ & \dividend[0]~input_o\)) # (!\dividend[2]~input_o\))) # (!\dividend[3]~input_o\ & (((\dividend[2]~input_o\) # (\dividend[0]~input_o\)) # 
-- (!\dividend[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[3]~input_o\,
	datab => \dividend[1]~input_o\,
	datac => \dividend[2]~input_o\,
	datad => \dividend[0]~input_o\,
	combout => \dividend_gen:0:dividend_dcd|segments_out[2]~2_combout\);

-- Location: LCCOMB_X32_Y61_N18
\dividend_gen:0:dividend_dcd|segments_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dividend_gen:0:dividend_dcd|segments_out[3]~3_combout\ = (\dividend[1]~input_o\ & ((\dividend[2]~input_o\ & ((\dividend[0]~input_o\))) # (!\dividend[2]~input_o\ & (\dividend[3]~input_o\ & !\dividend[0]~input_o\)))) # (!\dividend[1]~input_o\ & 
-- (!\dividend[3]~input_o\ & (\dividend[2]~input_o\ $ (\dividend[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[3]~input_o\,
	datab => \dividend[1]~input_o\,
	datac => \dividend[2]~input_o\,
	datad => \dividend[0]~input_o\,
	combout => \dividend_gen:0:dividend_dcd|segments_out[3]~3_combout\);

-- Location: LCCOMB_X32_Y61_N20
\dividend_gen:0:dividend_dcd|segments_out[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dividend_gen:0:dividend_dcd|segments_out[4]~4_combout\ = (\dividend[1]~input_o\ & (!\dividend[3]~input_o\ & ((\dividend[0]~input_o\)))) # (!\dividend[1]~input_o\ & ((\dividend[2]~input_o\ & (!\dividend[3]~input_o\)) # (!\dividend[2]~input_o\ & 
-- ((\dividend[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[3]~input_o\,
	datab => \dividend[1]~input_o\,
	datac => \dividend[2]~input_o\,
	datad => \dividend[0]~input_o\,
	combout => \dividend_gen:0:dividend_dcd|segments_out[4]~4_combout\);

-- Location: LCCOMB_X32_Y61_N10
\dividend_gen:0:dividend_dcd|segments_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dividend_gen:0:dividend_dcd|segments_out[5]~5_combout\ = (\dividend[1]~input_o\ & (!\dividend[3]~input_o\ & ((\dividend[0]~input_o\) # (!\dividend[2]~input_o\)))) # (!\dividend[1]~input_o\ & (\dividend[0]~input_o\ & (\dividend[3]~input_o\ $ 
-- (!\dividend[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[3]~input_o\,
	datab => \dividend[1]~input_o\,
	datac => \dividend[2]~input_o\,
	datad => \dividend[0]~input_o\,
	combout => \dividend_gen:0:dividend_dcd|segments_out[5]~5_combout\);

-- Location: LCCOMB_X32_Y61_N12
\dividend_gen:0:dividend_dcd|segments_out[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dividend_gen:0:dividend_dcd|segments_out[6]~6_combout\ = (\dividend[0]~input_o\ & ((\dividend[3]~input_o\) # (\dividend[1]~input_o\ $ (\dividend[2]~input_o\)))) # (!\dividend[0]~input_o\ & ((\dividend[1]~input_o\) # (\dividend[3]~input_o\ $ 
-- (\dividend[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[3]~input_o\,
	datab => \dividend[1]~input_o\,
	datac => \dividend[2]~input_o\,
	datad => \dividend[0]~input_o\,
	combout => \dividend_gen:0:dividend_dcd|segments_out[6]~6_combout\);

-- Location: IOIBUF_X33_Y73_N1
\dividend[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(7),
	o => \dividend[7]~input_o\);

-- Location: IOIBUF_X58_Y73_N1
\dividend[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(6),
	o => \dividend[6]~input_o\);

-- Location: IOIBUF_X60_Y73_N8
\dividend[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(5),
	o => \dividend[5]~input_o\);

-- Location: IOIBUF_X58_Y73_N22
\dividend[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(4),
	o => \dividend[4]~input_o\);

-- Location: LCCOMB_X33_Y61_N12
\dividend_gen:1:dividend_dcd|segments_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dividend_gen:1:dividend_dcd|segments_out[0]~0_combout\ = (\dividend[7]~input_o\ & (\dividend[4]~input_o\ & (\dividend[6]~input_o\ $ (\dividend[5]~input_o\)))) # (!\dividend[7]~input_o\ & (!\dividend[5]~input_o\ & (\dividend[6]~input_o\ $ 
-- (\dividend[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[7]~input_o\,
	datab => \dividend[6]~input_o\,
	datac => \dividend[5]~input_o\,
	datad => \dividend[4]~input_o\,
	combout => \dividend_gen:1:dividend_dcd|segments_out[0]~0_combout\);

-- Location: LCCOMB_X33_Y61_N26
\dividend_gen:1:dividend_dcd|segments_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dividend_gen:1:dividend_dcd|segments_out[1]~1_combout\ = (\dividend[7]~input_o\ & ((\dividend[4]~input_o\ & ((\dividend[5]~input_o\))) # (!\dividend[4]~input_o\ & (\dividend[6]~input_o\)))) # (!\dividend[7]~input_o\ & (\dividend[6]~input_o\ & 
-- (\dividend[5]~input_o\ $ (\dividend[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[7]~input_o\,
	datab => \dividend[6]~input_o\,
	datac => \dividend[5]~input_o\,
	datad => \dividend[4]~input_o\,
	combout => \dividend_gen:1:dividend_dcd|segments_out[1]~1_combout\);

-- Location: LCCOMB_X33_Y61_N16
\dividend_gen:1:dividend_dcd|segments_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dividend_gen:1:dividend_dcd|segments_out[2]~2_combout\ = (\dividend[7]~input_o\ & (((!\dividend[5]~input_o\ & \dividend[4]~input_o\)) # (!\dividend[6]~input_o\))) # (!\dividend[7]~input_o\ & ((\dividend[6]~input_o\) # ((\dividend[4]~input_o\) # 
-- (!\dividend[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[7]~input_o\,
	datab => \dividend[6]~input_o\,
	datac => \dividend[5]~input_o\,
	datad => \dividend[4]~input_o\,
	combout => \dividend_gen:1:dividend_dcd|segments_out[2]~2_combout\);

-- Location: LCCOMB_X32_Y61_N26
\dividend_gen:1:dividend_dcd|segments_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dividend_gen:1:dividend_dcd|segments_out[3]~3_combout\ = (\dividend[5]~input_o\ & ((\dividend[6]~input_o\ & (\dividend[4]~input_o\)) # (!\dividend[6]~input_o\ & (!\dividend[4]~input_o\ & \dividend[7]~input_o\)))) # (!\dividend[5]~input_o\ & 
-- (!\dividend[7]~input_o\ & (\dividend[6]~input_o\ $ (\dividend[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[6]~input_o\,
	datab => \dividend[4]~input_o\,
	datac => \dividend[5]~input_o\,
	datad => \dividend[7]~input_o\,
	combout => \dividend_gen:1:dividend_dcd|segments_out[3]~3_combout\);

-- Location: LCCOMB_X33_Y61_N6
\dividend_gen:1:dividend_dcd|segments_out[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dividend_gen:1:dividend_dcd|segments_out[4]~4_combout\ = (\dividend[5]~input_o\ & (!\dividend[7]~input_o\ & ((\dividend[4]~input_o\)))) # (!\dividend[5]~input_o\ & ((\dividend[6]~input_o\ & (!\dividend[7]~input_o\)) # (!\dividend[6]~input_o\ & 
-- ((\dividend[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[7]~input_o\,
	datab => \dividend[6]~input_o\,
	datac => \dividend[5]~input_o\,
	datad => \dividend[4]~input_o\,
	combout => \dividend_gen:1:dividend_dcd|segments_out[4]~4_combout\);

-- Location: LCCOMB_X32_Y61_N28
\dividend_gen:1:dividend_dcd|segments_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dividend_gen:1:dividend_dcd|segments_out[5]~5_combout\ = (\dividend[6]~input_o\ & (\dividend[4]~input_o\ & (\dividend[5]~input_o\ $ (\dividend[7]~input_o\)))) # (!\dividend[6]~input_o\ & (!\dividend[7]~input_o\ & ((\dividend[4]~input_o\) # 
-- (\dividend[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[6]~input_o\,
	datab => \dividend[4]~input_o\,
	datac => \dividend[5]~input_o\,
	datad => \dividend[7]~input_o\,
	combout => \dividend_gen:1:dividend_dcd|segments_out[5]~5_combout\);

-- Location: LCCOMB_X32_Y61_N2
\dividend_gen:1:dividend_dcd|segments_out[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dividend_gen:1:dividend_dcd|segments_out[6]~6_combout\ = (\dividend[4]~input_o\ & ((\dividend[7]~input_o\) # (\dividend[6]~input_o\ $ (\dividend[5]~input_o\)))) # (!\dividend[4]~input_o\ & ((\dividend[5]~input_o\) # (\dividend[6]~input_o\ $ 
-- (\dividend[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[6]~input_o\,
	datab => \dividend[4]~input_o\,
	datac => \dividend[5]~input_o\,
	datad => \dividend[7]~input_o\,
	combout => \dividend_gen:1:dividend_dcd|segments_out[6]~6_combout\);

-- Location: IOIBUF_X13_Y73_N1
\dividend[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(8),
	o => \dividend[8]~input_o\);

-- Location: IOIBUF_X13_Y73_N15
\dividend[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(11),
	o => \dividend[11]~input_o\);

-- Location: IOIBUF_X11_Y73_N15
\dividend[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(10),
	o => \dividend[10]~input_o\);

-- Location: IOIBUF_X60_Y73_N1
\dividend[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(9),
	o => \dividend[9]~input_o\);

-- Location: LCCOMB_X31_Y61_N24
\dividend_gen:2:dividend_dcd|segments_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dividend_gen:2:dividend_dcd|segments_out[0]~0_combout\ = (\dividend[11]~input_o\ & (\dividend[8]~input_o\ & (\dividend[10]~input_o\ $ (\dividend[9]~input_o\)))) # (!\dividend[11]~input_o\ & (!\dividend[9]~input_o\ & (\dividend[8]~input_o\ $ 
-- (\dividend[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[8]~input_o\,
	datab => \dividend[11]~input_o\,
	datac => \dividend[10]~input_o\,
	datad => \dividend[9]~input_o\,
	combout => \dividend_gen:2:dividend_dcd|segments_out[0]~0_combout\);

-- Location: LCCOMB_X31_Y61_N26
\dividend_gen:2:dividend_dcd|segments_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dividend_gen:2:dividend_dcd|segments_out[1]~1_combout\ = (\dividend[11]~input_o\ & ((\dividend[8]~input_o\ & ((\dividend[9]~input_o\))) # (!\dividend[8]~input_o\ & (\dividend[10]~input_o\)))) # (!\dividend[11]~input_o\ & (\dividend[10]~input_o\ & 
-- (\dividend[8]~input_o\ $ (\dividend[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[8]~input_o\,
	datab => \dividend[11]~input_o\,
	datac => \dividend[10]~input_o\,
	datad => \dividend[9]~input_o\,
	combout => \dividend_gen:2:dividend_dcd|segments_out[1]~1_combout\);

-- Location: LCCOMB_X31_Y61_N16
\dividend_gen:2:dividend_dcd|segments_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dividend_gen:2:dividend_dcd|segments_out[2]~2_combout\ = (\dividend[11]~input_o\ & (((\dividend[8]~input_o\ & !\dividend[9]~input_o\)) # (!\dividend[10]~input_o\))) # (!\dividend[11]~input_o\ & ((\dividend[8]~input_o\) # ((\dividend[10]~input_o\) # 
-- (!\dividend[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[8]~input_o\,
	datab => \dividend[11]~input_o\,
	datac => \dividend[10]~input_o\,
	datad => \dividend[9]~input_o\,
	combout => \dividend_gen:2:dividend_dcd|segments_out[2]~2_combout\);

-- Location: LCCOMB_X31_Y61_N10
\dividend_gen:2:dividend_dcd|segments_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dividend_gen:2:dividend_dcd|segments_out[3]~3_combout\ = (\dividend[9]~input_o\ & ((\dividend[8]~input_o\ & ((\dividend[10]~input_o\))) # (!\dividend[8]~input_o\ & (\dividend[11]~input_o\ & !\dividend[10]~input_o\)))) # (!\dividend[9]~input_o\ & 
-- (!\dividend[11]~input_o\ & (\dividend[8]~input_o\ $ (\dividend[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[8]~input_o\,
	datab => \dividend[11]~input_o\,
	datac => \dividend[10]~input_o\,
	datad => \dividend[9]~input_o\,
	combout => \dividend_gen:2:dividend_dcd|segments_out[3]~3_combout\);

-- Location: LCCOMB_X31_Y61_N20
\dividend_gen:2:dividend_dcd|segments_out[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dividend_gen:2:dividend_dcd|segments_out[4]~4_combout\ = (\dividend[9]~input_o\ & (\dividend[8]~input_o\ & (!\dividend[11]~input_o\))) # (!\dividend[9]~input_o\ & ((\dividend[10]~input_o\ & ((!\dividend[11]~input_o\))) # (!\dividend[10]~input_o\ & 
-- (\dividend[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[8]~input_o\,
	datab => \dividend[11]~input_o\,
	datac => \dividend[10]~input_o\,
	datad => \dividend[9]~input_o\,
	combout => \dividend_gen:2:dividend_dcd|segments_out[4]~4_combout\);

-- Location: LCCOMB_X31_Y61_N22
\dividend_gen:2:dividend_dcd|segments_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dividend_gen:2:dividend_dcd|segments_out[5]~5_combout\ = (\dividend[8]~input_o\ & (\dividend[11]~input_o\ $ (((\dividend[9]~input_o\) # (!\dividend[10]~input_o\))))) # (!\dividend[8]~input_o\ & (!\dividend[11]~input_o\ & (!\dividend[10]~input_o\ & 
-- \dividend[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[8]~input_o\,
	datab => \dividend[11]~input_o\,
	datac => \dividend[10]~input_o\,
	datad => \dividend[9]~input_o\,
	combout => \dividend_gen:2:dividend_dcd|segments_out[5]~5_combout\);

-- Location: LCCOMB_X31_Y61_N0
\dividend_gen:2:dividend_dcd|segments_out[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dividend_gen:2:dividend_dcd|segments_out[6]~6_combout\ = (\dividend[8]~input_o\ & ((\dividend[11]~input_o\) # (\dividend[10]~input_o\ $ (\dividend[9]~input_o\)))) # (!\dividend[8]~input_o\ & ((\dividend[9]~input_o\) # (\dividend[11]~input_o\ $ 
-- (\dividend[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[8]~input_o\,
	datab => \dividend[11]~input_o\,
	datac => \dividend[10]~input_o\,
	datad => \dividend[9]~input_o\,
	combout => \dividend_gen:2:dividend_dcd|segments_out[6]~6_combout\);

-- Location: IOIBUF_X38_Y73_N1
\dividend[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(14),
	o => \dividend[14]~input_o\);

-- Location: IOIBUF_X38_Y73_N22
\dividend[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(12),
	o => \dividend[12]~input_o\);

-- Location: IOIBUF_X40_Y73_N8
\dividend[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(13),
	o => \dividend[13]~input_o\);

-- Location: IOIBUF_X42_Y73_N1
\dividend[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(15),
	o => \dividend[15]~input_o\);

-- Location: LCCOMB_X35_Y72_N12
\dividend_gen:3:dividend_dcd|segments_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dividend_gen:3:dividend_dcd|segments_out[0]~0_combout\ = (\dividend[14]~input_o\ & (!\dividend[13]~input_o\ & (\dividend[12]~input_o\ $ (!\dividend[15]~input_o\)))) # (!\dividend[14]~input_o\ & (\dividend[12]~input_o\ & (\dividend[13]~input_o\ $ 
-- (!\dividend[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[14]~input_o\,
	datab => \dividend[12]~input_o\,
	datac => \dividend[13]~input_o\,
	datad => \dividend[15]~input_o\,
	combout => \dividend_gen:3:dividend_dcd|segments_out[0]~0_combout\);

-- Location: LCCOMB_X36_Y72_N16
\dividend_gen:3:dividend_dcd|segments_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dividend_gen:3:dividend_dcd|segments_out[1]~1_combout\ = (\dividend[13]~input_o\ & ((\dividend[12]~input_o\ & ((\dividend[15]~input_o\))) # (!\dividend[12]~input_o\ & (\dividend[14]~input_o\)))) # (!\dividend[13]~input_o\ & (\dividend[14]~input_o\ & 
-- (\dividend[12]~input_o\ $ (\dividend[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[13]~input_o\,
	datab => \dividend[14]~input_o\,
	datac => \dividend[12]~input_o\,
	datad => \dividend[15]~input_o\,
	combout => \dividend_gen:3:dividend_dcd|segments_out[1]~1_combout\);

-- Location: LCCOMB_X36_Y72_N18
\dividend_gen:3:dividend_dcd|segments_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dividend_gen:3:dividend_dcd|segments_out[2]~2_combout\ = (\dividend[14]~input_o\ & (((!\dividend[13]~input_o\ & \dividend[12]~input_o\)) # (!\dividend[15]~input_o\))) # (!\dividend[14]~input_o\ & (((\dividend[12]~input_o\) # (\dividend[15]~input_o\)) # 
-- (!\dividend[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[13]~input_o\,
	datab => \dividend[14]~input_o\,
	datac => \dividend[12]~input_o\,
	datad => \dividend[15]~input_o\,
	combout => \dividend_gen:3:dividend_dcd|segments_out[2]~2_combout\);

-- Location: LCCOMB_X35_Y72_N2
\dividend_gen:3:dividend_dcd|segments_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dividend_gen:3:dividend_dcd|segments_out[3]~3_combout\ = (\dividend[13]~input_o\ & ((\dividend[14]~input_o\ & (\dividend[12]~input_o\)) # (!\dividend[14]~input_o\ & (!\dividend[12]~input_o\ & \dividend[15]~input_o\)))) # (!\dividend[13]~input_o\ & 
-- (!\dividend[15]~input_o\ & (\dividend[14]~input_o\ $ (\dividend[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[14]~input_o\,
	datab => \dividend[12]~input_o\,
	datac => \dividend[13]~input_o\,
	datad => \dividend[15]~input_o\,
	combout => \dividend_gen:3:dividend_dcd|segments_out[3]~3_combout\);

-- Location: LCCOMB_X35_Y72_N28
\dividend_gen:3:dividend_dcd|segments_out[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dividend_gen:3:dividend_dcd|segments_out[4]~4_combout\ = (\dividend[13]~input_o\ & (((\dividend[12]~input_o\ & !\dividend[15]~input_o\)))) # (!\dividend[13]~input_o\ & ((\dividend[14]~input_o\ & ((!\dividend[15]~input_o\))) # (!\dividend[14]~input_o\ & 
-- (\dividend[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[14]~input_o\,
	datab => \dividend[12]~input_o\,
	datac => \dividend[13]~input_o\,
	datad => \dividend[15]~input_o\,
	combout => \dividend_gen:3:dividend_dcd|segments_out[4]~4_combout\);

-- Location: LCCOMB_X35_Y72_N10
\dividend_gen:3:dividend_dcd|segments_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dividend_gen:3:dividend_dcd|segments_out[5]~5_combout\ = (\dividend[14]~input_o\ & (\dividend[12]~input_o\ & (\dividend[13]~input_o\ $ (\dividend[15]~input_o\)))) # (!\dividend[14]~input_o\ & (!\dividend[15]~input_o\ & ((\dividend[12]~input_o\) # 
-- (\dividend[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[14]~input_o\,
	datab => \dividend[12]~input_o\,
	datac => \dividend[13]~input_o\,
	datad => \dividend[15]~input_o\,
	combout => \dividend_gen:3:dividend_dcd|segments_out[5]~5_combout\);

-- Location: LCCOMB_X36_Y72_N24
\dividend_gen:3:dividend_dcd|segments_out[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dividend_gen:3:dividend_dcd|segments_out[6]~6_combout\ = (\dividend[12]~input_o\ & ((\dividend[15]~input_o\) # (\dividend[13]~input_o\ $ (\dividend[14]~input_o\)))) # (!\dividend[12]~input_o\ & ((\dividend[13]~input_o\) # (\dividend[14]~input_o\ $ 
-- (\dividend[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[13]~input_o\,
	datab => \dividend[14]~input_o\,
	datac => \dividend[12]~input_o\,
	datad => \dividend[15]~input_o\,
	combout => \dividend_gen:3:dividend_dcd|segments_out[6]~6_combout\);

-- Location: IOIBUF_X65_Y73_N8
\divisor[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(0),
	o => \divisor[0]~input_o\);

-- Location: IOIBUF_X79_Y73_N8
\divisor[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(3),
	o => \divisor[3]~input_o\);

-- Location: IOIBUF_X67_Y73_N1
\divisor[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(2),
	o => \divisor[2]~input_o\);

-- Location: IOIBUF_X67_Y73_N22
\divisor[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(1),
	o => \divisor[1]~input_o\);

-- Location: LCCOMB_X41_Y63_N24
\divisor_gen:0:divisor_dcd|segments_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor_gen:0:divisor_dcd|segments_out[0]~0_combout\ = (\divisor[3]~input_o\ & (\divisor[0]~input_o\ & (\divisor[2]~input_o\ $ (\divisor[1]~input_o\)))) # (!\divisor[3]~input_o\ & (!\divisor[1]~input_o\ & (\divisor[0]~input_o\ $ (\divisor[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor[0]~input_o\,
	datab => \divisor[3]~input_o\,
	datac => \divisor[2]~input_o\,
	datad => \divisor[1]~input_o\,
	combout => \divisor_gen:0:divisor_dcd|segments_out[0]~0_combout\);

-- Location: LCCOMB_X41_Y63_N26
\divisor_gen:0:divisor_dcd|segments_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor_gen:0:divisor_dcd|segments_out[1]~1_combout\ = (\divisor[3]~input_o\ & ((\divisor[0]~input_o\ & ((\divisor[1]~input_o\))) # (!\divisor[0]~input_o\ & (\divisor[2]~input_o\)))) # (!\divisor[3]~input_o\ & (\divisor[2]~input_o\ & 
-- (\divisor[0]~input_o\ $ (\divisor[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor[0]~input_o\,
	datab => \divisor[3]~input_o\,
	datac => \divisor[2]~input_o\,
	datad => \divisor[1]~input_o\,
	combout => \divisor_gen:0:divisor_dcd|segments_out[1]~1_combout\);

-- Location: LCCOMB_X41_Y63_N28
\divisor_gen:0:divisor_dcd|segments_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor_gen:0:divisor_dcd|segments_out[2]~2_combout\ = (\divisor[3]~input_o\ & (((\divisor[0]~input_o\ & !\divisor[1]~input_o\)) # (!\divisor[2]~input_o\))) # (!\divisor[3]~input_o\ & ((\divisor[0]~input_o\) # ((\divisor[2]~input_o\) # 
-- (!\divisor[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor[0]~input_o\,
	datab => \divisor[3]~input_o\,
	datac => \divisor[2]~input_o\,
	datad => \divisor[1]~input_o\,
	combout => \divisor_gen:0:divisor_dcd|segments_out[2]~2_combout\);

-- Location: LCCOMB_X41_Y63_N14
\divisor_gen:0:divisor_dcd|segments_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor_gen:0:divisor_dcd|segments_out[3]~3_combout\ = (\divisor[1]~input_o\ & ((\divisor[0]~input_o\ & ((\divisor[2]~input_o\))) # (!\divisor[0]~input_o\ & (\divisor[3]~input_o\ & !\divisor[2]~input_o\)))) # (!\divisor[1]~input_o\ & 
-- (!\divisor[3]~input_o\ & (\divisor[0]~input_o\ $ (\divisor[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor[0]~input_o\,
	datab => \divisor[3]~input_o\,
	datac => \divisor[2]~input_o\,
	datad => \divisor[1]~input_o\,
	combout => \divisor_gen:0:divisor_dcd|segments_out[3]~3_combout\);

-- Location: LCCOMB_X41_Y63_N12
\divisor_gen:0:divisor_dcd|segments_out[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor_gen:0:divisor_dcd|segments_out[4]~4_combout\ = (\divisor[1]~input_o\ & (\divisor[0]~input_o\ & (!\divisor[3]~input_o\))) # (!\divisor[1]~input_o\ & ((\divisor[2]~input_o\ & ((!\divisor[3]~input_o\))) # (!\divisor[2]~input_o\ & 
-- (\divisor[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor[0]~input_o\,
	datab => \divisor[3]~input_o\,
	datac => \divisor[2]~input_o\,
	datad => \divisor[1]~input_o\,
	combout => \divisor_gen:0:divisor_dcd|segments_out[4]~4_combout\);

-- Location: LCCOMB_X41_Y63_N22
\divisor_gen:0:divisor_dcd|segments_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor_gen:0:divisor_dcd|segments_out[5]~5_combout\ = (\divisor[0]~input_o\ & (\divisor[3]~input_o\ $ (((\divisor[1]~input_o\) # (!\divisor[2]~input_o\))))) # (!\divisor[0]~input_o\ & (!\divisor[3]~input_o\ & (!\divisor[2]~input_o\ & 
-- \divisor[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor[0]~input_o\,
	datab => \divisor[3]~input_o\,
	datac => \divisor[2]~input_o\,
	datad => \divisor[1]~input_o\,
	combout => \divisor_gen:0:divisor_dcd|segments_out[5]~5_combout\);

-- Location: LCCOMB_X41_Y63_N8
\divisor_gen:0:divisor_dcd|segments_out[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor_gen:0:divisor_dcd|segments_out[6]~6_combout\ = (\divisor[0]~input_o\ & ((\divisor[3]~input_o\) # (\divisor[2]~input_o\ $ (\divisor[1]~input_o\)))) # (!\divisor[0]~input_o\ & ((\divisor[1]~input_o\) # (\divisor[3]~input_o\ $ 
-- (\divisor[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor[0]~input_o\,
	datab => \divisor[3]~input_o\,
	datac => \divisor[2]~input_o\,
	datad => \divisor[1]~input_o\,
	combout => \divisor_gen:0:divisor_dcd|segments_out[6]~6_combout\);

-- Location: IOIBUF_X72_Y73_N8
\divisor[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(6),
	o => \divisor[6]~input_o\);

-- Location: IOIBUF_X52_Y73_N8
\divisor[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(5),
	o => \divisor[5]~input_o\);

-- Location: IOIBUF_X42_Y73_N8
\divisor[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(7),
	o => \divisor[7]~input_o\);

-- Location: IOIBUF_X45_Y73_N1
\divisor[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(4),
	o => \divisor[4]~input_o\);

-- Location: LCCOMB_X41_Y63_N10
\divisor_gen:1:divisor_dcd|segments_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor_gen:1:divisor_dcd|segments_out[0]~0_combout\ = (\divisor[6]~input_o\ & (!\divisor[5]~input_o\ & (\divisor[7]~input_o\ $ (!\divisor[4]~input_o\)))) # (!\divisor[6]~input_o\ & (\divisor[4]~input_o\ & (\divisor[5]~input_o\ $ 
-- (!\divisor[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor[6]~input_o\,
	datab => \divisor[5]~input_o\,
	datac => \divisor[7]~input_o\,
	datad => \divisor[4]~input_o\,
	combout => \divisor_gen:1:divisor_dcd|segments_out[0]~0_combout\);

-- Location: LCCOMB_X41_Y63_N16
\divisor_gen:1:divisor_dcd|segments_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor_gen:1:divisor_dcd|segments_out[1]~1_combout\ = (\divisor[5]~input_o\ & ((\divisor[4]~input_o\ & ((\divisor[7]~input_o\))) # (!\divisor[4]~input_o\ & (\divisor[6]~input_o\)))) # (!\divisor[5]~input_o\ & (\divisor[6]~input_o\ & 
-- (\divisor[7]~input_o\ $ (\divisor[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor[6]~input_o\,
	datab => \divisor[5]~input_o\,
	datac => \divisor[7]~input_o\,
	datad => \divisor[4]~input_o\,
	combout => \divisor_gen:1:divisor_dcd|segments_out[1]~1_combout\);

-- Location: LCCOMB_X41_Y63_N2
\divisor_gen:1:divisor_dcd|segments_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor_gen:1:divisor_dcd|segments_out[2]~2_combout\ = (\divisor[6]~input_o\ & (((!\divisor[5]~input_o\ & \divisor[4]~input_o\)) # (!\divisor[7]~input_o\))) # (!\divisor[6]~input_o\ & (((\divisor[7]~input_o\) # (\divisor[4]~input_o\)) # 
-- (!\divisor[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor[6]~input_o\,
	datab => \divisor[5]~input_o\,
	datac => \divisor[7]~input_o\,
	datad => \divisor[4]~input_o\,
	combout => \divisor_gen:1:divisor_dcd|segments_out[2]~2_combout\);

-- Location: LCCOMB_X41_Y63_N4
\divisor_gen:1:divisor_dcd|segments_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor_gen:1:divisor_dcd|segments_out[3]~3_combout\ = (\divisor[5]~input_o\ & ((\divisor[6]~input_o\ & ((\divisor[4]~input_o\))) # (!\divisor[6]~input_o\ & (\divisor[7]~input_o\ & !\divisor[4]~input_o\)))) # (!\divisor[5]~input_o\ & 
-- (!\divisor[7]~input_o\ & (\divisor[6]~input_o\ $ (\divisor[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor[6]~input_o\,
	datab => \divisor[5]~input_o\,
	datac => \divisor[7]~input_o\,
	datad => \divisor[4]~input_o\,
	combout => \divisor_gen:1:divisor_dcd|segments_out[3]~3_combout\);

-- Location: LCCOMB_X41_Y63_N18
\divisor_gen:1:divisor_dcd|segments_out[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor_gen:1:divisor_dcd|segments_out[4]~4_combout\ = (\divisor[5]~input_o\ & (((!\divisor[7]~input_o\ & \divisor[4]~input_o\)))) # (!\divisor[5]~input_o\ & ((\divisor[6]~input_o\ & (!\divisor[7]~input_o\)) # (!\divisor[6]~input_o\ & 
-- ((\divisor[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor[6]~input_o\,
	datab => \divisor[5]~input_o\,
	datac => \divisor[7]~input_o\,
	datad => \divisor[4]~input_o\,
	combout => \divisor_gen:1:divisor_dcd|segments_out[4]~4_combout\);

-- Location: LCCOMB_X41_Y63_N0
\divisor_gen:1:divisor_dcd|segments_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor_gen:1:divisor_dcd|segments_out[5]~5_combout\ = (\divisor[6]~input_o\ & (\divisor[4]~input_o\ & (\divisor[5]~input_o\ $ (\divisor[7]~input_o\)))) # (!\divisor[6]~input_o\ & (!\divisor[7]~input_o\ & ((\divisor[5]~input_o\) # 
-- (\divisor[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor[6]~input_o\,
	datab => \divisor[5]~input_o\,
	datac => \divisor[7]~input_o\,
	datad => \divisor[4]~input_o\,
	combout => \divisor_gen:1:divisor_dcd|segments_out[5]~5_combout\);

-- Location: LCCOMB_X41_Y63_N30
\divisor_gen:1:divisor_dcd|segments_out[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor_gen:1:divisor_dcd|segments_out[6]~6_combout\ = (\divisor[4]~input_o\ & ((\divisor[7]~input_o\) # (\divisor[6]~input_o\ $ (\divisor[5]~input_o\)))) # (!\divisor[4]~input_o\ & ((\divisor[5]~input_o\) # (\divisor[6]~input_o\ $ 
-- (\divisor[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor[6]~input_o\,
	datab => \divisor[5]~input_o\,
	datac => \divisor[7]~input_o\,
	datad => \divisor[4]~input_o\,
	combout => \divisor_gen:1:divisor_dcd|segments_out[6]~6_combout\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X52_Y73_N1
\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LCCOMB_X41_Y63_N20
\div|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Equal1~0_combout\ = (!\divisor[2]~input_o\ & (!\divisor[4]~input_o\ & (!\divisor[3]~input_o\ & !\divisor[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor[2]~input_o\,
	datab => \divisor[4]~input_o\,
	datac => \divisor[3]~input_o\,
	datad => \divisor[1]~input_o\,
	combout => \div|Equal1~0_combout\);

-- Location: LCCOMB_X41_Y63_N6
\div|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Equal1~1_combout\ = (!\divisor[6]~input_o\ & (!\divisor[5]~input_o\ & (!\divisor[7]~input_o\ & \div|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor[6]~input_o\,
	datab => \divisor[5]~input_o\,
	datac => \divisor[7]~input_o\,
	datad => \div|Equal1~0_combout\,
	combout => \div|Equal1~1_combout\);

-- Location: LCCOMB_X55_Y72_N6
\div|curr_state.init~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|curr_state.init~feeder_combout\ = \start~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \start~input_o\,
	combout => \div|curr_state.init~feeder_combout\);

-- Location: FF_X55_Y72_N7
\div|curr_state.init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|curr_state.init~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|curr_state.init~q\);

-- Location: LCCOMB_X40_Y60_N16
\div|curr_state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|curr_state~8_combout\ = (\div|Equal1~1_combout\ & (!\start~input_o\ & \div|curr_state.init~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Equal1~1_combout\,
	datac => \start~input_o\,
	datad => \div|curr_state.init~q\,
	combout => \div|curr_state~8_combout\);

-- Location: LCCOMB_X40_Y60_N20
\div|curr_state.b_eq_1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|curr_state.b_eq_1~feeder_combout\ = \div|curr_state~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|curr_state~8_combout\,
	combout => \div|curr_state.b_eq_1~feeder_combout\);

-- Location: FF_X40_Y60_N21
\div|curr_state.b_eq_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|curr_state.b_eq_1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|curr_state.b_eq_1~q\);

-- Location: LCCOMB_X33_Y59_N12
\div|a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|a~0_combout\ = \dividend[0]~input_o\ $ (\dividend[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dividend[0]~input_o\,
	datad => \dividend[15]~input_o\,
	combout => \div|a~0_combout\);

-- Location: LCCOMB_X39_Y61_N0
\div|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add0~0_combout\ = (\dividend[15]~input_o\ & (\div|a~0_combout\ $ (VCC))) # (!\dividend[15]~input_o\ & (\div|a~0_combout\ & VCC))
-- \div|Add0~1\ = CARRY((\dividend[15]~input_o\ & \div|a~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[15]~input_o\,
	datab => \div|a~0_combout\,
	datad => VCC,
	combout => \div|Add0~0_combout\,
	cout => \div|Add0~1\);

-- Location: LCCOMB_X39_Y61_N2
\div|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add0~2_combout\ = (\div|Add0~1\ & (\dividend[15]~input_o\ $ ((!\dividend[1]~input_o\)))) # (!\div|Add0~1\ & ((\dividend[15]~input_o\ $ (\dividend[1]~input_o\)) # (GND)))
-- \div|Add0~3\ = CARRY((\dividend[15]~input_o\ $ (!\dividend[1]~input_o\)) # (!\div|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[15]~input_o\,
	datab => \dividend[1]~input_o\,
	datad => VCC,
	cin => \div|Add0~1\,
	combout => \div|Add0~2_combout\,
	cout => \div|Add0~3\);

-- Location: LCCOMB_X39_Y61_N4
\div|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add0~4_combout\ = (\div|Add0~3\ & ((\dividend[15]~input_o\ $ (\dividend[2]~input_o\)))) # (!\div|Add0~3\ & (\dividend[15]~input_o\ $ (\dividend[2]~input_o\ $ (VCC))))
-- \div|Add0~5\ = CARRY((!\div|Add0~3\ & (\dividend[15]~input_o\ $ (\dividend[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[15]~input_o\,
	datab => \dividend[2]~input_o\,
	datad => VCC,
	cin => \div|Add0~3\,
	combout => \div|Add0~4_combout\,
	cout => \div|Add0~5\);

-- Location: LCCOMB_X39_Y61_N6
\div|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add0~6_combout\ = (\div|Add0~5\ & (\dividend[3]~input_o\ $ ((!\dividend[15]~input_o\)))) # (!\div|Add0~5\ & ((\dividend[3]~input_o\ $ (\dividend[15]~input_o\)) # (GND)))
-- \div|Add0~7\ = CARRY((\dividend[3]~input_o\ $ (!\dividend[15]~input_o\)) # (!\div|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[3]~input_o\,
	datab => \dividend[15]~input_o\,
	datad => VCC,
	cin => \div|Add0~5\,
	combout => \div|Add0~6_combout\,
	cout => \div|Add0~7\);

-- Location: LCCOMB_X39_Y61_N8
\div|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add0~8_combout\ = (\div|Add0~7\ & ((\dividend[15]~input_o\ $ (\dividend[4]~input_o\)))) # (!\div|Add0~7\ & (\dividend[15]~input_o\ $ (\dividend[4]~input_o\ $ (VCC))))
-- \div|Add0~9\ = CARRY((!\div|Add0~7\ & (\dividend[15]~input_o\ $ (\dividend[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[15]~input_o\,
	datab => \dividend[4]~input_o\,
	datad => VCC,
	cin => \div|Add0~7\,
	combout => \div|Add0~8_combout\,
	cout => \div|Add0~9\);

-- Location: LCCOMB_X39_Y61_N10
\div|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add0~10_combout\ = (\div|Add0~9\ & (\dividend[5]~input_o\ $ ((!\dividend[15]~input_o\)))) # (!\div|Add0~9\ & ((\dividend[5]~input_o\ $ (\dividend[15]~input_o\)) # (GND)))
-- \div|Add0~11\ = CARRY((\dividend[5]~input_o\ $ (!\dividend[15]~input_o\)) # (!\div|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[5]~input_o\,
	datab => \dividend[15]~input_o\,
	datad => VCC,
	cin => \div|Add0~9\,
	combout => \div|Add0~10_combout\,
	cout => \div|Add0~11\);

-- Location: LCCOMB_X39_Y61_N12
\div|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add0~12_combout\ = (\div|Add0~11\ & ((\dividend[6]~input_o\ $ (\dividend[15]~input_o\)))) # (!\div|Add0~11\ & (\dividend[6]~input_o\ $ (\dividend[15]~input_o\ $ (VCC))))
-- \div|Add0~13\ = CARRY((!\div|Add0~11\ & (\dividend[6]~input_o\ $ (\dividend[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[6]~input_o\,
	datab => \dividend[15]~input_o\,
	datad => VCC,
	cin => \div|Add0~11\,
	combout => \div|Add0~12_combout\,
	cout => \div|Add0~13\);

-- Location: LCCOMB_X39_Y61_N14
\div|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add0~14_combout\ = (\div|Add0~13\ & (\dividend[7]~input_o\ $ ((!\dividend[15]~input_o\)))) # (!\div|Add0~13\ & ((\dividend[7]~input_o\ $ (\dividend[15]~input_o\)) # (GND)))
-- \div|Add0~15\ = CARRY((\dividend[7]~input_o\ $ (!\dividend[15]~input_o\)) # (!\div|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[7]~input_o\,
	datab => \dividend[15]~input_o\,
	datad => VCC,
	cin => \div|Add0~13\,
	combout => \div|Add0~14_combout\,
	cout => \div|Add0~15\);

-- Location: LCCOMB_X39_Y61_N16
\div|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add0~16_combout\ = (\div|Add0~15\ & ((\dividend[8]~input_o\ $ (\dividend[15]~input_o\)))) # (!\div|Add0~15\ & (\dividend[8]~input_o\ $ (\dividend[15]~input_o\ $ (VCC))))
-- \div|Add0~17\ = CARRY((!\div|Add0~15\ & (\dividend[8]~input_o\ $ (\dividend[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[8]~input_o\,
	datab => \dividend[15]~input_o\,
	datad => VCC,
	cin => \div|Add0~15\,
	combout => \div|Add0~16_combout\,
	cout => \div|Add0~17\);

-- Location: LCCOMB_X39_Y61_N18
\div|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add0~18_combout\ = (\div|Add0~17\ & (\dividend[9]~input_o\ $ ((!\dividend[15]~input_o\)))) # (!\div|Add0~17\ & ((\dividend[9]~input_o\ $ (\dividend[15]~input_o\)) # (GND)))
-- \div|Add0~19\ = CARRY((\dividend[9]~input_o\ $ (!\dividend[15]~input_o\)) # (!\div|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[9]~input_o\,
	datab => \dividend[15]~input_o\,
	datad => VCC,
	cin => \div|Add0~17\,
	combout => \div|Add0~18_combout\,
	cout => \div|Add0~19\);

-- Location: LCCOMB_X39_Y61_N20
\div|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add0~20_combout\ = (\div|Add0~19\ & ((\dividend[15]~input_o\ $ (\dividend[10]~input_o\)))) # (!\div|Add0~19\ & (\dividend[15]~input_o\ $ (\dividend[10]~input_o\ $ (VCC))))
-- \div|Add0~21\ = CARRY((!\div|Add0~19\ & (\dividend[15]~input_o\ $ (\dividend[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[15]~input_o\,
	datab => \dividend[10]~input_o\,
	datad => VCC,
	cin => \div|Add0~19\,
	combout => \div|Add0~20_combout\,
	cout => \div|Add0~21\);

-- Location: LCCOMB_X39_Y61_N22
\div|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add0~22_combout\ = (\div|Add0~21\ & (\dividend[15]~input_o\ $ ((!\dividend[11]~input_o\)))) # (!\div|Add0~21\ & ((\dividend[15]~input_o\ $ (\dividend[11]~input_o\)) # (GND)))
-- \div|Add0~23\ = CARRY((\dividend[15]~input_o\ $ (!\dividend[11]~input_o\)) # (!\div|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[15]~input_o\,
	datab => \dividend[11]~input_o\,
	datad => VCC,
	cin => \div|Add0~21\,
	combout => \div|Add0~22_combout\,
	cout => \div|Add0~23\);

-- Location: LCCOMB_X39_Y61_N24
\div|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add0~24_combout\ = (\div|Add0~23\ & ((\dividend[12]~input_o\ $ (\dividend[15]~input_o\)))) # (!\div|Add0~23\ & (\dividend[12]~input_o\ $ (\dividend[15]~input_o\ $ (VCC))))
-- \div|Add0~25\ = CARRY((!\div|Add0~23\ & (\dividend[12]~input_o\ $ (\dividend[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[12]~input_o\,
	datab => \dividend[15]~input_o\,
	datad => VCC,
	cin => \div|Add0~23\,
	combout => \div|Add0~24_combout\,
	cout => \div|Add0~25\);

-- Location: LCCOMB_X39_Y61_N26
\div|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add0~26_combout\ = (\div|Add0~25\ & (\dividend[13]~input_o\ $ ((!\dividend[15]~input_o\)))) # (!\div|Add0~25\ & ((\dividend[13]~input_o\ $ (\dividend[15]~input_o\)) # (GND)))
-- \div|Add0~27\ = CARRY((\dividend[13]~input_o\ $ (!\dividend[15]~input_o\)) # (!\div|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[13]~input_o\,
	datab => \dividend[15]~input_o\,
	datad => VCC,
	cin => \div|Add0~25\,
	combout => \div|Add0~26_combout\,
	cout => \div|Add0~27\);

-- Location: LCCOMB_X39_Y61_N28
\div|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add0~28_combout\ = (\div|Add0~27\ & ((\dividend[15]~input_o\ $ (\dividend[14]~input_o\)))) # (!\div|Add0~27\ & (\dividend[15]~input_o\ $ (\dividend[14]~input_o\ $ (VCC))))
-- \div|Add0~29\ = CARRY((!\div|Add0~27\ & (\dividend[15]~input_o\ $ (\dividend[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[15]~input_o\,
	datab => \dividend[14]~input_o\,
	datad => VCC,
	cin => \div|Add0~27\,
	combout => \div|Add0~28_combout\,
	cout => \div|Add0~29\);

-- Location: LCCOMB_X39_Y61_N30
\div|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add0~30_combout\ = \div|Add0~29\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \div|Add0~29\,
	combout => \div|Add0~30_combout\);

-- Location: LCCOMB_X40_Y60_N22
\div|b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|b~0_combout\ = \divisor[7]~input_o\ $ (\divisor[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor[7]~input_o\,
	datad => \divisor[0]~input_o\,
	combout => \div|b~0_combout\);

-- Location: LCCOMB_X41_Y60_N16
\div|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add1~0_combout\ = (\divisor[7]~input_o\ & (\div|b~0_combout\ $ (VCC))) # (!\divisor[7]~input_o\ & (\div|b~0_combout\ & VCC))
-- \div|Add1~1\ = CARRY((\divisor[7]~input_o\ & \div|b~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor[7]~input_o\,
	datab => \div|b~0_combout\,
	datad => VCC,
	combout => \div|Add1~0_combout\,
	cout => \div|Add1~1\);

-- Location: LCCOMB_X41_Y60_N18
\div|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add1~2_combout\ = (\div|Add1~1\ & (\divisor[7]~input_o\ $ ((!\divisor[1]~input_o\)))) # (!\div|Add1~1\ & ((\divisor[7]~input_o\ $ (\divisor[1]~input_o\)) # (GND)))
-- \div|Add1~3\ = CARRY((\divisor[7]~input_o\ $ (!\divisor[1]~input_o\)) # (!\div|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor[7]~input_o\,
	datab => \divisor[1]~input_o\,
	datad => VCC,
	cin => \div|Add1~1\,
	combout => \div|Add1~2_combout\,
	cout => \div|Add1~3\);

-- Location: LCCOMB_X41_Y60_N20
\div|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add1~4_combout\ = (\div|Add1~3\ & ((\divisor[7]~input_o\ $ (\divisor[2]~input_o\)))) # (!\div|Add1~3\ & (\divisor[7]~input_o\ $ (\divisor[2]~input_o\ $ (VCC))))
-- \div|Add1~5\ = CARRY((!\div|Add1~3\ & (\divisor[7]~input_o\ $ (\divisor[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor[7]~input_o\,
	datab => \divisor[2]~input_o\,
	datad => VCC,
	cin => \div|Add1~3\,
	combout => \div|Add1~4_combout\,
	cout => \div|Add1~5\);

-- Location: LCCOMB_X41_Y60_N22
\div|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add1~6_combout\ = (\div|Add1~5\ & (\divisor[7]~input_o\ $ ((!\divisor[3]~input_o\)))) # (!\div|Add1~5\ & ((\divisor[7]~input_o\ $ (\divisor[3]~input_o\)) # (GND)))
-- \div|Add1~7\ = CARRY((\divisor[7]~input_o\ $ (!\divisor[3]~input_o\)) # (!\div|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor[7]~input_o\,
	datab => \divisor[3]~input_o\,
	datad => VCC,
	cin => \div|Add1~5\,
	combout => \div|Add1~6_combout\,
	cout => \div|Add1~7\);

-- Location: LCCOMB_X41_Y60_N24
\div|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add1~8_combout\ = (\div|Add1~7\ & ((\divisor[7]~input_o\ $ (\divisor[4]~input_o\)))) # (!\div|Add1~7\ & (\divisor[7]~input_o\ $ (\divisor[4]~input_o\ $ (VCC))))
-- \div|Add1~9\ = CARRY((!\div|Add1~7\ & (\divisor[7]~input_o\ $ (\divisor[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor[7]~input_o\,
	datab => \divisor[4]~input_o\,
	datad => VCC,
	cin => \div|Add1~7\,
	combout => \div|Add1~8_combout\,
	cout => \div|Add1~9\);

-- Location: LCCOMB_X41_Y60_N26
\div|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add1~10_combout\ = (\div|Add1~9\ & (\divisor[7]~input_o\ $ ((!\divisor[5]~input_o\)))) # (!\div|Add1~9\ & ((\divisor[7]~input_o\ $ (\divisor[5]~input_o\)) # (GND)))
-- \div|Add1~11\ = CARRY((\divisor[7]~input_o\ $ (!\divisor[5]~input_o\)) # (!\div|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor[7]~input_o\,
	datab => \divisor[5]~input_o\,
	datad => VCC,
	cin => \div|Add1~9\,
	combout => \div|Add1~10_combout\,
	cout => \div|Add1~11\);

-- Location: LCCOMB_X41_Y60_N28
\div|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add1~12_combout\ = (\div|Add1~11\ & ((\divisor[7]~input_o\ $ (\divisor[6]~input_o\)))) # (!\div|Add1~11\ & (\divisor[7]~input_o\ $ (\divisor[6]~input_o\ $ (VCC))))
-- \div|Add1~13\ = CARRY((!\div|Add1~11\ & (\divisor[7]~input_o\ $ (\divisor[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor[7]~input_o\,
	datab => \divisor[6]~input_o\,
	datad => VCC,
	cin => \div|Add1~11\,
	combout => \div|Add1~12_combout\,
	cout => \div|Add1~13\);

-- Location: LCCOMB_X41_Y60_N30
\div|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add1~14_combout\ = \div|Add1~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \div|Add1~13\,
	combout => \div|Add1~14_combout\);

-- Location: CLKCTRL_G14
\div|curr_state.init~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \div|curr_state.init~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \div|curr_state.init~clkctrl_outclk\);

-- Location: LCCOMB_X38_Y60_N12
\div|b_next[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|b_next\(7) = (GLOBAL(\div|curr_state.init~clkctrl_outclk\) & ((\div|Add1~14_combout\))) # (!GLOBAL(\div|curr_state.init~clkctrl_outclk\) & (\div|b_next\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|b_next\(7),
	datab => \div|Add1~14_combout\,
	datad => \div|curr_state.init~clkctrl_outclk\,
	combout => \div|b_next\(7));

-- Location: LCCOMB_X38_Y60_N20
\div|b~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|b~1_combout\ = (\start~input_o\ & (\div|Add1~14_combout\)) # (!\start~input_o\ & ((\div|b_next\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~input_o\,
	datac => \div|Add1~14_combout\,
	datad => \div|b_next\(7),
	combout => \div|b~1_combout\);

-- Location: FF_X38_Y60_N21
\div|b[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|b~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|b\(7));

-- Location: LCCOMB_X38_Y60_N6
\div|b_next[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|b_next\(6) = (GLOBAL(\div|curr_state.init~clkctrl_outclk\) & (\div|Add1~12_combout\)) # (!GLOBAL(\div|curr_state.init~clkctrl_outclk\) & ((\div|b_next\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add1~12_combout\,
	datac => \div|b_next\(6),
	datad => \div|curr_state.init~clkctrl_outclk\,
	combout => \div|b_next\(6));

-- Location: LCCOMB_X38_Y60_N26
\div|b~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|b~2_combout\ = (\start~input_o\ & (\div|Add1~12_combout\)) # (!\start~input_o\ & ((\div|b_next\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~input_o\,
	datac => \div|Add1~12_combout\,
	datad => \div|b_next\(6),
	combout => \div|b~2_combout\);

-- Location: FF_X38_Y60_N27
\div|b[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|b~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|b\(6));

-- Location: LCCOMB_X38_Y60_N28
\div|b_next[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|b_next\(5) = (GLOBAL(\div|curr_state.init~clkctrl_outclk\) & (\div|Add1~10_combout\)) # (!GLOBAL(\div|curr_state.init~clkctrl_outclk\) & ((\div|b_next\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add1~10_combout\,
	datab => \div|b_next\(5),
	datad => \div|curr_state.init~clkctrl_outclk\,
	combout => \div|b_next\(5));

-- Location: LCCOMB_X38_Y60_N8
\div|b~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|b~3_combout\ = (\start~input_o\ & (\div|Add1~10_combout\)) # (!\start~input_o\ & ((\div|b_next\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~input_o\,
	datac => \div|Add1~10_combout\,
	datad => \div|b_next\(5),
	combout => \div|b~3_combout\);

-- Location: FF_X38_Y60_N9
\div|b[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|b~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|b\(5));

-- Location: LCCOMB_X35_Y60_N2
\div|b_next[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|b_next\(3) = (GLOBAL(\div|curr_state.init~clkctrl_outclk\) & (\div|Add1~6_combout\)) # (!GLOBAL(\div|curr_state.init~clkctrl_outclk\) & ((\div|b_next\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add1~6_combout\,
	datac => \div|curr_state.init~clkctrl_outclk\,
	datad => \div|b_next\(3),
	combout => \div|b_next\(3));

-- Location: LCCOMB_X35_Y60_N12
\div|b~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|b~5_combout\ = (\start~input_o\ & (\div|Add1~6_combout\)) # (!\start~input_o\ & ((\div|b_next\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add1~6_combout\,
	datac => \start~input_o\,
	datad => \div|b_next\(3),
	combout => \div|b~5_combout\);

-- Location: FF_X35_Y60_N13
\div|b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|b~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|b\(3));

-- Location: LCCOMB_X38_Y56_N18
\div|b_next[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|b_next\(4) = (GLOBAL(\div|curr_state.init~clkctrl_outclk\) & (\div|Add1~8_combout\)) # (!GLOBAL(\div|curr_state.init~clkctrl_outclk\) & ((\div|b_next\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add1~8_combout\,
	datac => \div|curr_state.init~clkctrl_outclk\,
	datad => \div|b_next\(4),
	combout => \div|b_next\(4));

-- Location: LCCOMB_X38_Y56_N24
\div|b~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|b~4_combout\ = (\start~input_o\ & (\div|Add1~8_combout\)) # (!\start~input_o\ & ((\div|b_next\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datac => \div|Add1~8_combout\,
	datad => \div|b_next\(4),
	combout => \div|b~4_combout\);

-- Location: FF_X38_Y56_N25
\div|b[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|b~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|b\(4));

-- Location: LCCOMB_X38_Y60_N16
\div|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Equal2~0_combout\ = (!\div|b\(6) & (!\div|b\(5) & (!\div|b\(3) & !\div|b\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|b\(6),
	datab => \div|b\(5),
	datac => \div|b\(3),
	datad => \div|b\(4),
	combout => \div|Equal2~0_combout\);

-- Location: LCCOMB_X39_Y60_N0
\div|b_next[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|b_next\(0) = (GLOBAL(\div|curr_state.init~clkctrl_outclk\) & (\div|Add1~0_combout\)) # (!GLOBAL(\div|curr_state.init~clkctrl_outclk\) & ((\div|b_next\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|Add1~0_combout\,
	datac => \div|b_next\(0),
	datad => \div|curr_state.init~clkctrl_outclk\,
	combout => \div|b_next\(0));

-- Location: LCCOMB_X39_Y60_N4
\div|b~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|b~8_combout\ = (\start~input_o\ & (\div|Add1~0_combout\)) # (!\start~input_o\ & ((\div|b_next\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|Add1~0_combout\,
	datac => \start~input_o\,
	datad => \div|b_next\(0),
	combout => \div|b~8_combout\);

-- Location: FF_X39_Y60_N5
\div|b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|b~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|b\(0));

-- Location: LCCOMB_X38_Y60_N10
\div|b_next[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|b_next\(2) = (GLOBAL(\div|curr_state.init~clkctrl_outclk\) & ((\div|Add1~4_combout\))) # (!GLOBAL(\div|curr_state.init~clkctrl_outclk\) & (\div|b_next\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|b_next\(2),
	datac => \div|Add1~4_combout\,
	datad => \div|curr_state.init~clkctrl_outclk\,
	combout => \div|b_next\(2));

-- Location: LCCOMB_X38_Y60_N18
\div|b~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|b~6_combout\ = (\start~input_o\ & (\div|Add1~4_combout\)) # (!\start~input_o\ & ((\div|b_next\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~input_o\,
	datac => \div|Add1~4_combout\,
	datad => \div|b_next\(2),
	combout => \div|b~6_combout\);

-- Location: FF_X38_Y60_N19
\div|b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|b~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|b\(2));

-- Location: LCCOMB_X40_Y60_N18
\div|b_next[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|b_next\(1) = (GLOBAL(\div|curr_state.init~clkctrl_outclk\) & (\div|Add1~2_combout\)) # (!GLOBAL(\div|curr_state.init~clkctrl_outclk\) & ((\div|b_next\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|Add1~2_combout\,
	datac => \div|b_next\(1),
	datad => \div|curr_state.init~clkctrl_outclk\,
	combout => \div|b_next\(1));

-- Location: LCCOMB_X40_Y60_N28
\div|b~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|b~7_combout\ = (\start~input_o\ & (\div|Add1~2_combout\)) # (!\start~input_o\ & ((\div|b_next\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|Add1~2_combout\,
	datac => \start~input_o\,
	datad => \div|b_next\(1),
	combout => \div|b~7_combout\);

-- Location: FF_X40_Y60_N29
\div|b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|b~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|b\(1));

-- Location: LCCOMB_X38_Y60_N30
\div|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Equal2~1_combout\ = (!\div|b\(0) & (!\div|b\(7) & (!\div|b\(2) & !\div|b\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|b\(0),
	datab => \div|b\(7),
	datac => \div|b\(2),
	datad => \div|b\(1),
	combout => \div|Equal2~1_combout\);

-- Location: LCCOMB_X39_Y60_N2
\div|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Equal2~2_combout\ = (\div|Equal2~0_combout\ & \div|Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div|Equal2~0_combout\,
	datad => \div|Equal2~1_combout\,
	combout => \div|Equal2~2_combout\);

-- Location: LCCOMB_X38_Y60_N0
\div|get_msb_pos~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|get_msb_pos~37_combout\ = (!\div|b\(3) & (!\div|b\(4) & ((\div|b\(1)) # (\div|b\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|b\(1),
	datab => \div|b\(2),
	datac => \div|b\(3),
	datad => \div|b\(4),
	combout => \div|get_msb_pos~37_combout\);

-- Location: LCCOMB_X38_Y60_N14
\div|get_msb_pos~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|get_msb_pos~38_combout\ = (!\div|b\(7) & ((\div|b\(6)) # ((\div|b\(5)) # (\div|get_msb_pos~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|b\(6),
	datab => \div|b\(7),
	datac => \div|b\(5),
	datad => \div|get_msb_pos~37_combout\,
	combout => \div|get_msb_pos~38_combout\);

-- Location: LCCOMB_X38_Y60_N22
\div|get_msb_pos~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|get_msb_pos~36_combout\ = (!\div|b\(7) & !\div|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|b\(7),
	datad => \div|Equal2~0_combout\,
	combout => \div|get_msb_pos~36_combout\);

-- Location: LCCOMB_X38_Y60_N24
\div|get_msb_pos~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|get_msb_pos~24_combout\ = (\div|b\(6)) # ((!\div|b\(5) & \div|b\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|b\(5),
	datac => \div|b\(6),
	datad => \div|b\(4),
	combout => \div|get_msb_pos~24_combout\);

-- Location: LCCOMB_X39_Y60_N26
\div|get_msb_pos~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|get_msb_pos~23_combout\ = (!\div|b\(3) & ((\div|b\(2)) # ((!\div|b\(1) & \div|b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|b\(3),
	datab => \div|b\(1),
	datac => \div|b\(0),
	datad => \div|b\(2),
	combout => \div|get_msb_pos~23_combout\);

-- Location: LCCOMB_X39_Y56_N4
\div|get_msb_pos~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|get_msb_pos~25_combout\ = (!\div|b\(7) & ((\div|get_msb_pos~24_combout\) # ((!\div|b\(5) & \div|get_msb_pos~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|get_msb_pos~24_combout\,
	datab => \div|b\(7),
	datac => \div|b\(5),
	datad => \div|get_msb_pos~23_combout\,
	combout => \div|get_msb_pos~25_combout\);

-- Location: LCCOMB_X39_Y56_N12
\div|Add24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add24~0_combout\ = (\div|get_msb_pos~31_combout\ & ((GND) # (!\div|get_msb_pos~25_combout\))) # (!\div|get_msb_pos~31_combout\ & (\div|get_msb_pos~25_combout\ $ (GND)))
-- \div|Add24~1\ = CARRY((\div|get_msb_pos~31_combout\) # (!\div|get_msb_pos~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|get_msb_pos~31_combout\,
	datab => \div|get_msb_pos~25_combout\,
	datad => VCC,
	combout => \div|Add24~0_combout\,
	cout => \div|Add24~1\);

-- Location: LCCOMB_X38_Y58_N8
\div|Add25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add25~0_combout\ = \div|Add24~0_combout\ $ (VCC)
-- \div|Add25~1\ = CARRY(\div|Add24~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add24~0_combout\,
	datad => VCC,
	combout => \div|Add25~0_combout\,
	cout => \div|Add25~1\);

-- Location: LCCOMB_X38_Y58_N10
\div|Add25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add25~2_combout\ = (\div|Add24~2_combout\ & (\div|Add25~1\ & VCC)) # (!\div|Add24~2_combout\ & (!\div|Add25~1\))
-- \div|Add25~3\ = CARRY((!\div|Add24~2_combout\ & !\div|Add25~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add24~2_combout\,
	datad => VCC,
	cin => \div|Add25~1\,
	combout => \div|Add25~2_combout\,
	cout => \div|Add25~3\);

-- Location: LCCOMB_X38_Y58_N12
\div|Add25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add25~4_combout\ = (\div|Add24~4_combout\ & ((GND) # (!\div|Add25~3\))) # (!\div|Add24~4_combout\ & (\div|Add25~3\ $ (GND)))
-- \div|Add25~5\ = CARRY((\div|Add24~4_combout\) # (!\div|Add25~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|Add24~4_combout\,
	datad => VCC,
	cin => \div|Add25~3\,
	combout => \div|Add25~4_combout\,
	cout => \div|Add25~5\);

-- Location: LCCOMB_X34_Y58_N30
\div|p~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|p~3_combout\ = (\div|LessThan44~30_combout\ & (\div|Add25~4_combout\)) # (!\div|LessThan44~30_combout\ & ((\div|Add24~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add25~4_combout\,
	datac => \div|LessThan44~30_combout\,
	datad => \div|Add24~4_combout\,
	combout => \div|p~3_combout\);

-- Location: LCCOMB_X39_Y56_N20
\div|Add24~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add24~8_combout\ = (\div|a\(15) & ((GND) # (!\div|Add24~7\))) # (!\div|a\(15) & (\div|Add24~7\ $ (GND)))
-- \div|Add24~9\ = CARRY((\div|a\(15)) # (!\div|Add24~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|a\(15),
	datad => VCC,
	cin => \div|Add24~7\,
	combout => \div|Add24~8_combout\,
	cout => \div|Add24~9\);

-- Location: LCCOMB_X38_Y58_N14
\div|Add25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add25~6_combout\ = (\div|Add24~6_combout\ & (\div|Add25~5\ & VCC)) # (!\div|Add24~6_combout\ & (!\div|Add25~5\))
-- \div|Add25~7\ = CARRY((!\div|Add24~6_combout\ & !\div|Add25~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|Add24~6_combout\,
	datad => VCC,
	cin => \div|Add25~5\,
	combout => \div|Add25~6_combout\,
	cout => \div|Add25~7\);

-- Location: LCCOMB_X38_Y58_N16
\div|Add25~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add25~8_combout\ = (\div|Add24~8_combout\ & ((GND) # (!\div|Add25~7\))) # (!\div|Add24~8_combout\ & (\div|Add25~7\ $ (GND)))
-- \div|Add25~9\ = CARRY((\div|Add24~8_combout\) # (!\div|Add25~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|Add24~8_combout\,
	datad => VCC,
	cin => \div|Add25~7\,
	combout => \div|Add25~8_combout\,
	cout => \div|Add25~9\);

-- Location: LCCOMB_X38_Y58_N18
\div|Add25~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add25~10_combout\ = (\div|Add24~10_combout\ & (\div|Add25~9\ & VCC)) # (!\div|Add24~10_combout\ & (!\div|Add25~9\))
-- \div|Add25~11\ = CARRY((!\div|Add24~10_combout\ & !\div|Add25~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|Add24~10_combout\,
	datad => VCC,
	cin => \div|Add25~9\,
	combout => \div|Add25~10_combout\,
	cout => \div|Add25~11\);

-- Location: LCCOMB_X38_Y58_N20
\div|Add25~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add25~12_combout\ = (\div|Add24~10_combout\ & ((GND) # (!\div|Add25~11\))) # (!\div|Add24~10_combout\ & (\div|Add25~11\ $ (GND)))
-- \div|Add25~13\ = CARRY((\div|Add24~10_combout\) # (!\div|Add25~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|Add24~10_combout\,
	datad => VCC,
	cin => \div|Add25~11\,
	combout => \div|Add25~12_combout\,
	cout => \div|Add25~13\);

-- Location: LCCOMB_X38_Y58_N22
\div|Add25~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add25~14_combout\ = \div|Add24~10_combout\ $ (!\div|Add25~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|Add24~10_combout\,
	cin => \div|Add25~13\,
	combout => \div|Add25~14_combout\);

-- Location: LCCOMB_X34_Y58_N24
\div|ShiftLeft2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~10_combout\ = (\div|Add25~12_combout\) # ((\div|Add25~10_combout\) # ((\div|Add25~14_combout\) # (\div|Add25~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add25~12_combout\,
	datab => \div|Add25~10_combout\,
	datac => \div|Add25~14_combout\,
	datad => \div|Add25~8_combout\,
	combout => \div|ShiftLeft2~10_combout\);

-- Location: LCCOMB_X34_Y58_N28
\div|ShiftLeft2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~14_combout\ = (\div|LessThan44~30_combout\ & (((\div|ShiftLeft2~10_combout\)))) # (!\div|LessThan44~30_combout\ & ((\div|Add24~8_combout\) # ((\div|Add24~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add24~8_combout\,
	datab => \div|Add24~10_combout\,
	datac => \div|LessThan44~30_combout\,
	datad => \div|ShiftLeft2~10_combout\,
	combout => \div|ShiftLeft2~14_combout\);

-- Location: LCCOMB_X34_Y58_N16
\div|ShiftLeft2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~15_combout\ = (!\div|p~2_combout\ & (\div|p~3_combout\ & !\div|ShiftLeft2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|p~2_combout\,
	datac => \div|p~3_combout\,
	datad => \div|ShiftLeft2~14_combout\,
	combout => \div|ShiftLeft2~15_combout\);

-- Location: LCCOMB_X34_Y56_N2
\div|p~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|p~0_combout\ = (\div|LessThan44~30_combout\ & ((\div|Add25~0_combout\))) # (!\div|LessThan44~30_combout\ & (\div|Add24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|Add24~0_combout\,
	datac => \div|LessThan44~30_combout\,
	datad => \div|Add25~0_combout\,
	combout => \div|p~0_combout\);

-- Location: LCCOMB_X34_Y57_N6
\div|ShiftLeft2~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~49_combout\ = (\div|p~0_combout\ & ((\div|p~1_combout\ & (\div|b\(5))) # (!\div|p~1_combout\ & ((\div|b\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|b\(5),
	datab => \div|b\(7),
	datac => \div|p~0_combout\,
	datad => \div|p~1_combout\,
	combout => \div|ShiftLeft2~49_combout\);

-- Location: LCCOMB_X34_Y57_N8
\div|ShiftLeft2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~50_combout\ = (\div|ShiftLeft2~49_combout\) # ((\div|b\(6) & (\div|p~1_combout\ & !\div|p~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|b\(6),
	datab => \div|p~1_combout\,
	datac => \div|p~0_combout\,
	datad => \div|ShiftLeft2~49_combout\,
	combout => \div|ShiftLeft2~50_combout\);

-- Location: LCCOMB_X34_Y57_N26
\div|ShiftLeft2~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~64_combout\ = (!\div|ShiftLeft2~14_combout\ & ((\div|LessThan44~30_combout\ & (\div|Add25~6_combout\)) # (!\div|LessThan44~30_combout\ & ((\div|Add24~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add25~6_combout\,
	datab => \div|ShiftLeft2~14_combout\,
	datac => \div|LessThan44~30_combout\,
	datad => \div|Add24~6_combout\,
	combout => \div|ShiftLeft2~64_combout\);

-- Location: LCCOMB_X34_Y57_N4
\div|ShiftLeft2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~18_combout\ = (\div|b\(0) & (!\div|p~0_combout\ & !\div|p~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|b\(0),
	datac => \div|p~0_combout\,
	datad => \div|p~1_combout\,
	combout => \div|ShiftLeft2~18_combout\);

-- Location: LCCOMB_X34_Y57_N14
\div|ShiftLeft2~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~25_combout\ = (\div|p~0_combout\ & ((\div|p~1_combout\ & (\div|b\(1))) # (!\div|p~1_combout\ & ((\div|b\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|b\(1),
	datab => \div|b\(3),
	datac => \div|p~0_combout\,
	datad => \div|p~1_combout\,
	combout => \div|ShiftLeft2~25_combout\);

-- Location: LCCOMB_X34_Y57_N20
\div|ShiftLeft2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~26_combout\ = (!\div|p~0_combout\ & ((\div|p~1_combout\ & ((\div|b\(2)))) # (!\div|p~1_combout\ & (\div|b\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|b\(4),
	datab => \div|b\(2),
	datac => \div|p~0_combout\,
	datad => \div|p~1_combout\,
	combout => \div|ShiftLeft2~26_combout\);

-- Location: LCCOMB_X34_Y57_N10
\div|ShiftLeft2~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~27_combout\ = (\div|p~3_combout\ & (\div|ShiftLeft2~18_combout\)) # (!\div|p~3_combout\ & (((\div|ShiftLeft2~25_combout\) # (\div|ShiftLeft2~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|p~3_combout\,
	datab => \div|ShiftLeft2~18_combout\,
	datac => \div|ShiftLeft2~25_combout\,
	datad => \div|ShiftLeft2~26_combout\,
	combout => \div|ShiftLeft2~27_combout\);

-- Location: LCCOMB_X34_Y57_N2
\div|ShiftLeft2~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~51_combout\ = (\div|ShiftLeft2~15_combout\ & ((\div|ShiftLeft2~50_combout\) # ((\div|ShiftLeft2~64_combout\ & \div|ShiftLeft2~27_combout\)))) # (!\div|ShiftLeft2~15_combout\ & (((\div|ShiftLeft2~64_combout\ & 
-- \div|ShiftLeft2~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft2~15_combout\,
	datab => \div|ShiftLeft2~50_combout\,
	datac => \div|ShiftLeft2~64_combout\,
	datad => \div|ShiftLeft2~27_combout\,
	combout => \div|ShiftLeft2~51_combout\);

-- Location: LCCOMB_X34_Y59_N12
\div|ShiftLeft2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~52_combout\ = (\div|ShiftLeft2~14_combout\ & (\div|p~3_combout\)) # (!\div|ShiftLeft2~14_combout\ & ((\div|p~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|p~3_combout\,
	datac => \div|p~2_combout\,
	datad => \div|ShiftLeft2~14_combout\,
	combout => \div|ShiftLeft2~52_combout\);

-- Location: LCCOMB_X34_Y56_N26
\div|ShiftLeft2~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~31_combout\ = (\div|p~0_combout\ & (\div|b\(6))) # (!\div|p~0_combout\ & ((\div|b\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|b\(6),
	datac => \div|b\(7),
	datad => \div|p~0_combout\,
	combout => \div|ShiftLeft2~31_combout\);

-- Location: LCCOMB_X34_Y59_N0
\div|ShiftLeft2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~30_combout\ = (\div|p~1_combout\ & ((\div|p~0_combout\ & ((\div|b\(4)))) # (!\div|p~0_combout\ & (\div|b\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|b\(5),
	datab => \div|b\(4),
	datac => \div|p~1_combout\,
	datad => \div|p~0_combout\,
	combout => \div|ShiftLeft2~30_combout\);

-- Location: LCCOMB_X34_Y59_N30
\div|ShiftLeft2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~32_combout\ = (\div|ShiftLeft2~30_combout\) # ((!\div|p~1_combout\ & \div|ShiftLeft2~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|p~1_combout\,
	datac => \div|ShiftLeft2~31_combout\,
	datad => \div|ShiftLeft2~30_combout\,
	combout => \div|ShiftLeft2~32_combout\);

-- Location: LCCOMB_X34_Y56_N18
\div|ShiftLeft2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~20_combout\ = (\div|p~0_combout\ & (\div|b\(0))) # (!\div|p~0_combout\ & ((\div|b\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|b\(0),
	datac => \div|b\(1),
	datad => \div|p~0_combout\,
	combout => \div|ShiftLeft2~20_combout\);

-- Location: LCCOMB_X34_Y59_N16
\div|ShiftLeft2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~19_combout\ = (!\div|p~1_combout\ & ((\div|p~0_combout\ & ((\div|b\(2)))) # (!\div|p~0_combout\ & (\div|b\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|b\(3),
	datab => \div|b\(2),
	datac => \div|p~1_combout\,
	datad => \div|p~0_combout\,
	combout => \div|ShiftLeft2~19_combout\);

-- Location: LCCOMB_X34_Y59_N2
\div|ShiftLeft2~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~29_combout\ = (\div|ShiftLeft2~19_combout\) # ((\div|p~1_combout\ & \div|ShiftLeft2~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|p~1_combout\,
	datac => \div|ShiftLeft2~20_combout\,
	datad => \div|ShiftLeft2~19_combout\,
	combout => \div|ShiftLeft2~29_combout\);

-- Location: LCCOMB_X34_Y59_N14
\div|ShiftLeft2~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~53_combout\ = (\div|ShiftLeft2~52_combout\ & (!\div|p~3_combout\ & ((\div|ShiftLeft2~29_combout\)))) # (!\div|ShiftLeft2~52_combout\ & (\div|p~3_combout\ & (\div|ShiftLeft2~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft2~52_combout\,
	datab => \div|p~3_combout\,
	datac => \div|ShiftLeft2~32_combout\,
	datad => \div|ShiftLeft2~29_combout\,
	combout => \div|ShiftLeft2~53_combout\);

-- Location: LCCOMB_X34_Y56_N14
\div|ShiftLeft2~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~47_combout\ = (\div|p~1_combout\ & (\div|ShiftLeft2~31_combout\ & (!\div|p~2_combout\))) # (!\div|p~1_combout\ & (((\div|p~2_combout\ & \div|ShiftLeft2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft2~31_combout\,
	datab => \div|p~1_combout\,
	datac => \div|p~2_combout\,
	datad => \div|ShiftLeft2~20_combout\,
	combout => \div|ShiftLeft2~47_combout\);

-- Location: LCCOMB_X34_Y56_N22
\div|ShiftLeft2~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~65_combout\ = (!\div|ShiftLeft2~14_combout\ & ((\div|LessThan44~30_combout\ & ((!\div|Add25~4_combout\))) # (!\div|LessThan44~30_combout\ & (!\div|Add24~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|LessThan44~30_combout\,
	datab => \div|Add24~4_combout\,
	datac => \div|Add25~4_combout\,
	datad => \div|ShiftLeft2~14_combout\,
	combout => \div|ShiftLeft2~65_combout\);

-- Location: LCCOMB_X34_Y56_N4
\div|ShiftLeft2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~40_combout\ = (\div|p~0_combout\ & ((\div|p~1_combout\ & (\div|b\(2))) # (!\div|p~1_combout\ & ((\div|b\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|b\(2),
	datab => \div|p~1_combout\,
	datac => \div|b\(4),
	datad => \div|p~0_combout\,
	combout => \div|ShiftLeft2~40_combout\);

-- Location: LCCOMB_X35_Y58_N20
\div|ShiftLeft2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~36_combout\ = (\div|p~1_combout\ & (\div|b\(3))) # (!\div|p~1_combout\ & ((\div|b\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|b\(3),
	datac => \div|p~1_combout\,
	datad => \div|b\(5),
	combout => \div|ShiftLeft2~36_combout\);

-- Location: LCCOMB_X34_Y56_N10
\div|ShiftLeft2~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~41_combout\ = (\div|ShiftLeft2~40_combout\) # ((!\div|p~0_combout\ & \div|ShiftLeft2~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|ShiftLeft2~40_combout\,
	datac => \div|p~0_combout\,
	datad => \div|ShiftLeft2~36_combout\,
	combout => \div|ShiftLeft2~41_combout\);

-- Location: LCCOMB_X34_Y56_N6
\div|ShiftLeft2~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~57_combout\ = (\div|ShiftLeft2~15_combout\ & ((\div|ShiftLeft2~41_combout\) # ((\div|ShiftLeft2~47_combout\ & \div|ShiftLeft2~65_combout\)))) # (!\div|ShiftLeft2~15_combout\ & (\div|ShiftLeft2~47_combout\ & (\div|ShiftLeft2~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft2~15_combout\,
	datab => \div|ShiftLeft2~47_combout\,
	datac => \div|ShiftLeft2~65_combout\,
	datad => \div|ShiftLeft2~41_combout\,
	combout => \div|ShiftLeft2~57_combout\);

-- Location: LCCOMB_X34_Y57_N30
\div|ShiftLeft2~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~59_combout\ = (!\div|p~3_combout\ & (!\div|ShiftLeft2~14_combout\ & (\div|ShiftLeft2~18_combout\ & \div|p~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|p~3_combout\,
	datab => \div|ShiftLeft2~14_combout\,
	datac => \div|ShiftLeft2~18_combout\,
	datad => \div|p~2_combout\,
	combout => \div|ShiftLeft2~59_combout\);

-- Location: LCCOMB_X34_Y57_N24
\div|ShiftLeft2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~58_combout\ = (\div|ShiftLeft2~15_combout\ & ((\div|ShiftLeft2~26_combout\) # (\div|ShiftLeft2~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|ShiftLeft2~26_combout\,
	datac => \div|ShiftLeft2~25_combout\,
	datad => \div|ShiftLeft2~15_combout\,
	combout => \div|ShiftLeft2~58_combout\);

-- Location: LCCOMB_X34_Y57_N28
\div|ShiftLeft2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~60_combout\ = (\div|ShiftLeft2~59_combout\) # ((\div|ShiftLeft2~58_combout\) # ((\div|ShiftLeft2~13_combout\ & \div|ShiftLeft2~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft2~59_combout\,
	datab => \div|ShiftLeft2~13_combout\,
	datac => \div|ShiftLeft2~50_combout\,
	datad => \div|ShiftLeft2~58_combout\,
	combout => \div|ShiftLeft2~60_combout\);

-- Location: LCCOMB_X34_Y56_N8
\div|ShiftLeft2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~22_combout\ = (!\div|p~0_combout\ & ((\div|p~1_combout\ & ((\div|b\(0)))) # (!\div|p~1_combout\ & (\div|b\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|b\(2),
	datab => \div|p~1_combout\,
	datac => \div|b\(0),
	datad => \div|p~0_combout\,
	combout => \div|ShiftLeft2~22_combout\);

-- Location: LCCOMB_X34_Y56_N20
\div|ShiftLeft2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~34_combout\ = (\div|ShiftLeft2~22_combout\) # ((\div|b\(1) & (\div|p~0_combout\ & !\div|p~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|b\(1),
	datab => \div|p~0_combout\,
	datac => \div|ShiftLeft2~22_combout\,
	datad => \div|p~1_combout\,
	combout => \div|ShiftLeft2~34_combout\);

-- Location: LCCOMB_X35_Y58_N22
\div|ShiftLeft2~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~35_combout\ = (!\div|p~0_combout\ & ((\div|p~1_combout\ & (\div|b\(4))) # (!\div|p~1_combout\ & ((\div|b\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|p~1_combout\,
	datab => \div|b\(4),
	datac => \div|p~0_combout\,
	datad => \div|b\(6),
	combout => \div|ShiftLeft2~35_combout\);

-- Location: LCCOMB_X35_Y58_N2
\div|ShiftLeft2~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~37_combout\ = (\div|ShiftLeft2~35_combout\) # ((\div|p~0_combout\ & \div|ShiftLeft2~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|p~0_combout\,
	datac => \div|ShiftLeft2~35_combout\,
	datad => \div|ShiftLeft2~36_combout\,
	combout => \div|ShiftLeft2~37_combout\);

-- Location: LCCOMB_X35_Y58_N0
\div|ShiftLeft2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~38_combout\ = (\div|ShiftLeft2~15_combout\ & ((\div|ShiftLeft2~34_combout\) # ((\div|ShiftLeft2~13_combout\ & \div|ShiftLeft2~37_combout\)))) # (!\div|ShiftLeft2~15_combout\ & (\div|ShiftLeft2~13_combout\ & 
-- ((\div|ShiftLeft2~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft2~15_combout\,
	datab => \div|ShiftLeft2~13_combout\,
	datac => \div|ShiftLeft2~34_combout\,
	datad => \div|ShiftLeft2~37_combout\,
	combout => \div|ShiftLeft2~38_combout\);

-- Location: LCCOMB_X34_Y56_N30
\div|ShiftLeft2~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~39_combout\ = (!\div|p~1_combout\ & ((\div|p~0_combout\ & (\div|b\(0))) # (!\div|p~0_combout\ & ((\div|b\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|b\(0),
	datab => \div|p~0_combout\,
	datac => \div|b\(1),
	datad => \div|p~1_combout\,
	combout => \div|ShiftLeft2~39_combout\);

-- Location: LCCOMB_X34_Y58_N0
\div|ShiftLeft2~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~61_combout\ = (!\div|ShiftLeft2~14_combout\ & ((\div|LessThan44~30_combout\ & (!\div|Add25~6_combout\)) # (!\div|LessThan44~30_combout\ & ((!\div|Add24~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add25~6_combout\,
	datab => \div|Add24~6_combout\,
	datac => \div|LessThan44~30_combout\,
	datad => \div|ShiftLeft2~14_combout\,
	combout => \div|ShiftLeft2~61_combout\);

-- Location: LCCOMB_X34_Y56_N24
\div|ShiftLeft2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~42_combout\ = (\div|ShiftLeft2~61_combout\ & ((\div|p~3_combout\ & (\div|ShiftLeft2~39_combout\)) # (!\div|p~3_combout\ & ((\div|ShiftLeft2~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft2~39_combout\,
	datab => \div|ShiftLeft2~61_combout\,
	datac => \div|p~3_combout\,
	datad => \div|ShiftLeft2~41_combout\,
	combout => \div|ShiftLeft2~42_combout\);

-- Location: LCCOMB_X34_Y57_N12
\div|ShiftLeft2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~28_combout\ = (\div|ShiftLeft2~61_combout\ & \div|ShiftLeft2~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div|ShiftLeft2~61_combout\,
	datad => \div|ShiftLeft2~27_combout\,
	combout => \div|ShiftLeft2~28_combout\);

-- Location: LCCOMB_X34_Y59_N26
\div|ShiftLeft2~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~21_combout\ = (\div|ShiftLeft2~13_combout\ & ((\div|ShiftLeft2~19_combout\) # ((\div|p~1_combout\ & \div|ShiftLeft2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft2~13_combout\,
	datab => \div|p~1_combout\,
	datac => \div|ShiftLeft2~20_combout\,
	datad => \div|ShiftLeft2~19_combout\,
	combout => \div|ShiftLeft2~21_combout\);

-- Location: LCCOMB_X34_Y58_N10
\div|ShiftLeft1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft1~22_combout\ = (!\div|p~1_combout\ & ((\div|LessThan44~30_combout\ & ((\div|Add25~0_combout\))) # (!\div|LessThan44~30_combout\ & (\div|Add24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add24~0_combout\,
	datab => \div|Add25~0_combout\,
	datac => \div|LessThan44~30_combout\,
	datad => \div|p~1_combout\,
	combout => \div|ShiftLeft1~22_combout\);

-- Location: LCCOMB_X34_Y58_N12
\div|ShiftLeft2~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~23_combout\ = (\div|ShiftLeft2~13_combout\ & ((\div|ShiftLeft2~22_combout\) # ((\div|b\(1) & \div|ShiftLeft1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|b\(1),
	datab => \div|ShiftLeft2~13_combout\,
	datac => \div|ShiftLeft2~22_combout\,
	datad => \div|ShiftLeft1~22_combout\,
	combout => \div|ShiftLeft2~23_combout\);

-- Location: LCCOMB_X34_Y59_N4
\div|ShiftLeft2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~24_combout\ = (!\div|p~1_combout\ & (!\div|p~3_combout\ & (\div|ShiftLeft2~20_combout\ & \div|ShiftLeft2~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|p~1_combout\,
	datab => \div|p~3_combout\,
	datac => \div|ShiftLeft2~20_combout\,
	datad => \div|ShiftLeft2~61_combout\,
	combout => \div|ShiftLeft2~24_combout\);

-- Location: LCCOMB_X34_Y59_N24
\div|ShiftLeft2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~62_combout\ = (!\div|p~1_combout\ & (\div|b\(0) & (\div|ShiftLeft2~13_combout\ & !\div|p~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|p~1_combout\,
	datab => \div|b\(0),
	datac => \div|ShiftLeft2~13_combout\,
	datad => \div|p~0_combout\,
	combout => \div|ShiftLeft2~62_combout\);

-- Location: LCCOMB_X35_Y59_N0
\div|Add27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add27~0_combout\ = (\div|a\(0) & ((GND) # (!\div|ShiftLeft2~62_combout\))) # (!\div|a\(0) & (\div|ShiftLeft2~62_combout\ $ (GND)))
-- \div|Add27~1\ = CARRY((\div|a\(0)) # (!\div|ShiftLeft2~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(0),
	datab => \div|ShiftLeft2~62_combout\,
	datad => VCC,
	combout => \div|Add27~0_combout\,
	cout => \div|Add27~1\);

-- Location: LCCOMB_X36_Y59_N22
\div|Add27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add27~2_combout\ = (\div|curr_state.l00p~q\ & (((\div|Add27~0_combout\)))) # (!\div|curr_state.l00p~q\ & (\div|Add0~0_combout\ & ((!\div|curr_state.b_eq_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add0~0_combout\,
	datab => \div|curr_state.l00p~q\,
	datac => \div|Add27~0_combout\,
	datad => \div|curr_state.b_eq_1~q\,
	combout => \div|Add27~2_combout\);

-- Location: LCCOMB_X36_Y59_N18
\div|a_next[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|a_next\(0) = (GLOBAL(\div|curr_state~7clkctrl_outclk\) & (\div|a_next\(0))) # (!GLOBAL(\div|curr_state~7clkctrl_outclk\) & ((\div|Add27~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|a_next\(0),
	datac => \div|Add27~2_combout\,
	datad => \div|curr_state~7clkctrl_outclk\,
	combout => \div|a_next\(0));

-- Location: LCCOMB_X41_Y59_N0
\div|a~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|a~1_combout\ = (\start~input_o\ & (\div|Add0~0_combout\)) # (!\start~input_o\ & ((\div|a_next\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|Add0~0_combout\,
	datac => \start~input_o\,
	datad => \div|a_next\(0),
	combout => \div|a~1_combout\);

-- Location: FF_X41_Y59_N1
\div|a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|a~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|a\(0));

-- Location: LCCOMB_X35_Y59_N2
\div|Add27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add27~3_combout\ = (\div|a\(1) & ((\div|ShiftLeft2~24_combout\ & (!\div|Add27~1\)) # (!\div|ShiftLeft2~24_combout\ & (\div|Add27~1\ & VCC)))) # (!\div|a\(1) & ((\div|ShiftLeft2~24_combout\ & ((\div|Add27~1\) # (GND))) # (!\div|ShiftLeft2~24_combout\ 
-- & (!\div|Add27~1\))))
-- \div|Add27~4\ = CARRY((\div|a\(1) & (\div|ShiftLeft2~24_combout\ & !\div|Add27~1\)) # (!\div|a\(1) & ((\div|ShiftLeft2~24_combout\) # (!\div|Add27~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(1),
	datab => \div|ShiftLeft2~24_combout\,
	datad => VCC,
	cin => \div|Add27~1\,
	combout => \div|Add27~3_combout\,
	cout => \div|Add27~4\);

-- Location: LCCOMB_X40_Y59_N22
\div|Add27~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add27~11_combout\ = (\div|curr_state.l00p~q\ & (((\div|Add27~3_combout\)))) # (!\div|curr_state.l00p~q\ & (!\div|curr_state.b_eq_1~q\ & (\div|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|curr_state.b_eq_1~q\,
	datab => \div|Add0~2_combout\,
	datac => \div|curr_state.l00p~q\,
	datad => \div|Add27~3_combout\,
	combout => \div|Add27~11_combout\);

-- Location: LCCOMB_X40_Y59_N2
\div|a_next[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|a_next\(1) = (GLOBAL(\div|curr_state~7clkctrl_outclk\) & (\div|a_next\(1))) # (!GLOBAL(\div|curr_state~7clkctrl_outclk\) & ((\div|Add27~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|a_next\(1),
	datac => \div|Add27~11_combout\,
	datad => \div|curr_state~7clkctrl_outclk\,
	combout => \div|a_next\(1));

-- Location: LCCOMB_X40_Y59_N20
\div|a~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|a~4_combout\ = (\start~input_o\ & (\div|Add0~2_combout\)) # (!\start~input_o\ & ((\div|a_next\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~input_o\,
	datac => \div|Add0~2_combout\,
	datad => \div|a_next\(1),
	combout => \div|a~4_combout\);

-- Location: FF_X40_Y59_N21
\div|a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|a~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|a\(1));

-- Location: LCCOMB_X35_Y59_N4
\div|Add27~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add27~5_combout\ = ((\div|a\(2) $ (\div|ShiftLeft2~23_combout\ $ (\div|Add27~4\)))) # (GND)
-- \div|Add27~6\ = CARRY((\div|a\(2) & ((!\div|Add27~4\) # (!\div|ShiftLeft2~23_combout\))) # (!\div|a\(2) & (!\div|ShiftLeft2~23_combout\ & !\div|Add27~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(2),
	datab => \div|ShiftLeft2~23_combout\,
	datad => VCC,
	cin => \div|Add27~4\,
	combout => \div|Add27~5_combout\,
	cout => \div|Add27~6\);

-- Location: LCCOMB_X40_Y59_N4
\div|Add27~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add27~10_combout\ = (\div|curr_state.l00p~q\ & (((\div|Add27~5_combout\)))) # (!\div|curr_state.l00p~q\ & (!\div|curr_state.b_eq_1~q\ & (\div|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|curr_state.b_eq_1~q\,
	datab => \div|Add0~4_combout\,
	datac => \div|curr_state.l00p~q\,
	datad => \div|Add27~5_combout\,
	combout => \div|Add27~10_combout\);

-- Location: LCCOMB_X40_Y59_N24
\div|a_next[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|a_next\(2) = (GLOBAL(\div|curr_state~7clkctrl_outclk\) & (\div|a_next\(2))) # (!GLOBAL(\div|curr_state~7clkctrl_outclk\) & ((\div|Add27~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|a_next\(2),
	datac => \div|Add27~10_combout\,
	datad => \div|curr_state~7clkctrl_outclk\,
	combout => \div|a_next\(2));

-- Location: LCCOMB_X40_Y59_N14
\div|a~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|a~3_combout\ = (\start~input_o\ & (\div|Add0~4_combout\)) # (!\start~input_o\ & ((\div|a_next\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~input_o\,
	datac => \div|Add0~4_combout\,
	datad => \div|a_next\(2),
	combout => \div|a~3_combout\);

-- Location: FF_X40_Y59_N15
\div|a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|a~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|a\(2));

-- Location: LCCOMB_X35_Y59_N6
\div|Add27~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add27~7_combout\ = (\div|ShiftLeft2~21_combout\ & ((\div|a\(3) & (!\div|Add27~6\)) # (!\div|a\(3) & ((\div|Add27~6\) # (GND))))) # (!\div|ShiftLeft2~21_combout\ & ((\div|a\(3) & (\div|Add27~6\ & VCC)) # (!\div|a\(3) & (!\div|Add27~6\))))
-- \div|Add27~8\ = CARRY((\div|ShiftLeft2~21_combout\ & ((!\div|Add27~6\) # (!\div|a\(3)))) # (!\div|ShiftLeft2~21_combout\ & (!\div|a\(3) & !\div|Add27~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft2~21_combout\,
	datab => \div|a\(3),
	datad => VCC,
	cin => \div|Add27~6\,
	combout => \div|Add27~7_combout\,
	cout => \div|Add27~8\);

-- Location: LCCOMB_X40_Y59_N26
\div|Add27~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add27~9_combout\ = (\div|curr_state.l00p~q\ & (((\div|Add27~7_combout\)))) # (!\div|curr_state.l00p~q\ & (!\div|curr_state.b_eq_1~q\ & (\div|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|curr_state.b_eq_1~q\,
	datab => \div|Add0~6_combout\,
	datac => \div|curr_state.l00p~q\,
	datad => \div|Add27~7_combout\,
	combout => \div|Add27~9_combout\);

-- Location: LCCOMB_X40_Y59_N18
\div|a_next[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|a_next\(3) = (GLOBAL(\div|curr_state~7clkctrl_outclk\) & (\div|a_next\(3))) # (!GLOBAL(\div|curr_state~7clkctrl_outclk\) & ((\div|Add27~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|a_next\(3),
	datac => \div|Add27~9_combout\,
	datad => \div|curr_state~7clkctrl_outclk\,
	combout => \div|a_next\(3));

-- Location: LCCOMB_X40_Y59_N28
\div|a~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|a~2_combout\ = (\start~input_o\ & (\div|Add0~6_combout\)) # (!\start~input_o\ & ((\div|a_next\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \div|Add0~6_combout\,
	datad => \div|a_next\(3),
	combout => \div|a~2_combout\);

-- Location: FF_X40_Y59_N29
\div|a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|a~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|a\(3));

-- Location: LCCOMB_X35_Y59_N8
\div|Add27~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add27~12_combout\ = ((\div|ShiftLeft2~28_combout\ $ (\div|a\(4) $ (\div|Add27~8\)))) # (GND)
-- \div|Add27~13\ = CARRY((\div|ShiftLeft2~28_combout\ & (\div|a\(4) & !\div|Add27~8\)) # (!\div|ShiftLeft2~28_combout\ & ((\div|a\(4)) # (!\div|Add27~8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft2~28_combout\,
	datab => \div|a\(4),
	datad => VCC,
	cin => \div|Add27~8\,
	combout => \div|Add27~12_combout\,
	cout => \div|Add27~13\);

-- Location: LCCOMB_X40_Y59_N8
\div|Add27~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add27~14_combout\ = (\div|curr_state.l00p~q\ & (((\div|Add27~12_combout\)))) # (!\div|curr_state.l00p~q\ & (!\div|curr_state.b_eq_1~q\ & (\div|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|curr_state.b_eq_1~q\,
	datab => \div|Add0~8_combout\,
	datac => \div|curr_state.l00p~q\,
	datad => \div|Add27~12_combout\,
	combout => \div|Add27~14_combout\);

-- Location: LCCOMB_X40_Y59_N12
\div|a_next[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|a_next\(4) = (GLOBAL(\div|curr_state~7clkctrl_outclk\) & (\div|a_next\(4))) # (!GLOBAL(\div|curr_state~7clkctrl_outclk\) & ((\div|Add27~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|a_next\(4),
	datac => \div|Add27~14_combout\,
	datad => \div|curr_state~7clkctrl_outclk\,
	combout => \div|a_next\(4));

-- Location: LCCOMB_X40_Y59_N30
\div|a~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|a~5_combout\ = (\start~input_o\ & (\div|Add0~8_combout\)) # (!\start~input_o\ & ((\div|a_next\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~input_o\,
	datac => \div|Add0~8_combout\,
	datad => \div|a_next\(4),
	combout => \div|a~5_combout\);

-- Location: FF_X40_Y59_N31
\div|a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|a~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|a\(4));

-- Location: LCCOMB_X35_Y59_N10
\div|Add27~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add27~15_combout\ = (\div|ShiftLeft2~42_combout\ & ((\div|a\(5) & (!\div|Add27~13\)) # (!\div|a\(5) & ((\div|Add27~13\) # (GND))))) # (!\div|ShiftLeft2~42_combout\ & ((\div|a\(5) & (\div|Add27~13\ & VCC)) # (!\div|a\(5) & (!\div|Add27~13\))))
-- \div|Add27~16\ = CARRY((\div|ShiftLeft2~42_combout\ & ((!\div|Add27~13\) # (!\div|a\(5)))) # (!\div|ShiftLeft2~42_combout\ & (!\div|a\(5) & !\div|Add27~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft2~42_combout\,
	datab => \div|a\(5),
	datad => VCC,
	cin => \div|Add27~13\,
	combout => \div|Add27~15_combout\,
	cout => \div|Add27~16\);

-- Location: LCCOMB_X38_Y59_N4
\div|Add27~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add27~23_combout\ = (\div|curr_state.l00p~q\ & (((\div|Add27~15_combout\)))) # (!\div|curr_state.l00p~q\ & (!\div|curr_state.b_eq_1~q\ & (\div|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|curr_state.b_eq_1~q\,
	datab => \div|Add0~10_combout\,
	datac => \div|curr_state.l00p~q\,
	datad => \div|Add27~15_combout\,
	combout => \div|Add27~23_combout\);

-- Location: LCCOMB_X38_Y59_N18
\div|a_next[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|a_next\(5) = (GLOBAL(\div|curr_state~7clkctrl_outclk\) & (\div|a_next\(5))) # (!GLOBAL(\div|curr_state~7clkctrl_outclk\) & ((\div|Add27~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|a_next\(5),
	datac => \div|Add27~23_combout\,
	datad => \div|curr_state~7clkctrl_outclk\,
	combout => \div|a_next\(5));

-- Location: LCCOMB_X38_Y59_N26
\div|a~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|a~8_combout\ = (\start~input_o\ & (\div|Add0~10_combout\)) # (!\start~input_o\ & ((\div|a_next\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|Add0~10_combout\,
	datac => \start~input_o\,
	datad => \div|a_next\(5),
	combout => \div|a~8_combout\);

-- Location: FF_X38_Y59_N27
\div|a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|a~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|a\(5));

-- Location: LCCOMB_X35_Y59_N12
\div|Add27~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add27~17_combout\ = ((\div|a\(6) $ (\div|ShiftLeft2~38_combout\ $ (\div|Add27~16\)))) # (GND)
-- \div|Add27~18\ = CARRY((\div|a\(6) & ((!\div|Add27~16\) # (!\div|ShiftLeft2~38_combout\))) # (!\div|a\(6) & (!\div|ShiftLeft2~38_combout\ & !\div|Add27~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(6),
	datab => \div|ShiftLeft2~38_combout\,
	datad => VCC,
	cin => \div|Add27~16\,
	combout => \div|Add27~17_combout\,
	cout => \div|Add27~18\);

-- Location: LCCOMB_X38_Y59_N30
\div|Add27~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add27~22_combout\ = (\div|curr_state.l00p~q\ & (((\div|Add27~17_combout\)))) # (!\div|curr_state.l00p~q\ & (\div|Add0~12_combout\ & (!\div|curr_state.b_eq_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add0~12_combout\,
	datab => \div|curr_state.l00p~q\,
	datac => \div|curr_state.b_eq_1~q\,
	datad => \div|Add27~17_combout\,
	combout => \div|Add27~22_combout\);

-- Location: LCCOMB_X38_Y59_N24
\div|a_next[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|a_next\(6) = (GLOBAL(\div|curr_state~7clkctrl_outclk\) & (\div|a_next\(6))) # (!GLOBAL(\div|curr_state~7clkctrl_outclk\) & ((\div|Add27~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|a_next\(6),
	datac => \div|Add27~22_combout\,
	datad => \div|curr_state~7clkctrl_outclk\,
	combout => \div|a_next\(6));

-- Location: LCCOMB_X38_Y59_N8
\div|a~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|a~7_combout\ = (\start~input_o\ & (\div|Add0~12_combout\)) # (!\start~input_o\ & ((\div|a_next\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add0~12_combout\,
	datac => \start~input_o\,
	datad => \div|a_next\(6),
	combout => \div|a~7_combout\);

-- Location: FF_X38_Y59_N9
\div|a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|a~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|a\(6));

-- Location: LCCOMB_X35_Y59_N14
\div|Add27~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add27~19_combout\ = (\div|a\(7) & ((\div|ShiftLeft2~33_combout\ & (!\div|Add27~18\)) # (!\div|ShiftLeft2~33_combout\ & (\div|Add27~18\ & VCC)))) # (!\div|a\(7) & ((\div|ShiftLeft2~33_combout\ & ((\div|Add27~18\) # (GND))) # 
-- (!\div|ShiftLeft2~33_combout\ & (!\div|Add27~18\))))
-- \div|Add27~20\ = CARRY((\div|a\(7) & (\div|ShiftLeft2~33_combout\ & !\div|Add27~18\)) # (!\div|a\(7) & ((\div|ShiftLeft2~33_combout\) # (!\div|Add27~18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(7),
	datab => \div|ShiftLeft2~33_combout\,
	datad => VCC,
	cin => \div|Add27~18\,
	combout => \div|Add27~19_combout\,
	cout => \div|Add27~20\);

-- Location: LCCOMB_X35_Y59_N16
\div|Add27~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add27~24_combout\ = ((\div|a\(8) $ (\div|ShiftLeft2~60_combout\ $ (\div|Add27~20\)))) # (GND)
-- \div|Add27~25\ = CARRY((\div|a\(8) & ((!\div|Add27~20\) # (!\div|ShiftLeft2~60_combout\))) # (!\div|a\(8) & (!\div|ShiftLeft2~60_combout\ & !\div|Add27~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(8),
	datab => \div|ShiftLeft2~60_combout\,
	datad => VCC,
	cin => \div|Add27~20\,
	combout => \div|Add27~24_combout\,
	cout => \div|Add27~25\);

-- Location: LCCOMB_X36_Y59_N8
\div|Add27~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add27~47_combout\ = (\div|curr_state.l00p~q\ & (((\div|Add27~24_combout\)))) # (!\div|curr_state.l00p~q\ & (\div|Add0~16_combout\ & ((!\div|curr_state.b_eq_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|curr_state.l00p~q\,
	datab => \div|Add0~16_combout\,
	datac => \div|Add27~24_combout\,
	datad => \div|curr_state.b_eq_1~q\,
	combout => \div|Add27~47_combout\);

-- Location: LCCOMB_X36_Y59_N28
\div|a_next[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|a_next\(8) = (GLOBAL(\div|curr_state~7clkctrl_outclk\) & (\div|a_next\(8))) # (!GLOBAL(\div|curr_state~7clkctrl_outclk\) & ((\div|Add27~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|a_next\(8),
	datac => \div|Add27~47_combout\,
	datad => \div|curr_state~7clkctrl_outclk\,
	combout => \div|a_next\(8));

-- Location: LCCOMB_X36_Y59_N20
\div|a~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|a~16_combout\ = (\start~input_o\ & (\div|Add0~16_combout\)) # (!\start~input_o\ & ((\div|a_next\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|Add0~16_combout\,
	datac => \start~input_o\,
	datad => \div|a_next\(8),
	combout => \div|a~16_combout\);

-- Location: FF_X36_Y59_N21
\div|a[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|a~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|a\(8));

-- Location: LCCOMB_X35_Y59_N18
\div|Add27~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add27~26_combout\ = (\div|a\(9) & ((\div|ShiftLeft2~57_combout\ & (!\div|Add27~25\)) # (!\div|ShiftLeft2~57_combout\ & (\div|Add27~25\ & VCC)))) # (!\div|a\(9) & ((\div|ShiftLeft2~57_combout\ & ((\div|Add27~25\) # (GND))) # 
-- (!\div|ShiftLeft2~57_combout\ & (!\div|Add27~25\))))
-- \div|Add27~27\ = CARRY((\div|a\(9) & (\div|ShiftLeft2~57_combout\ & !\div|Add27~25\)) # (!\div|a\(9) & ((\div|ShiftLeft2~57_combout\) # (!\div|Add27~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(9),
	datab => \div|ShiftLeft2~57_combout\,
	datad => VCC,
	cin => \div|Add27~25\,
	combout => \div|Add27~26_combout\,
	cout => \div|Add27~27\);

-- Location: LCCOMB_X36_Y59_N30
\div|Add27~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add27~46_combout\ = (\div|curr_state.l00p~q\ & (((\div|Add27~26_combout\)))) # (!\div|curr_state.l00p~q\ & (!\div|curr_state.b_eq_1~q\ & (\div|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|curr_state.b_eq_1~q\,
	datab => \div|Add0~18_combout\,
	datac => \div|curr_state.l00p~q\,
	datad => \div|Add27~26_combout\,
	combout => \div|Add27~46_combout\);

-- Location: LCCOMB_X36_Y59_N26
\div|a_next[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|a_next\(9) = (GLOBAL(\div|curr_state~7clkctrl_outclk\) & (\div|a_next\(9))) # (!GLOBAL(\div|curr_state~7clkctrl_outclk\) & ((\div|Add27~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|a_next\(9),
	datac => \div|Add27~46_combout\,
	datad => \div|curr_state~7clkctrl_outclk\,
	combout => \div|a_next\(9));

-- Location: LCCOMB_X39_Y59_N4
\div|a~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|a~15_combout\ = (\start~input_o\ & (\div|Add0~18_combout\)) # (!\start~input_o\ & ((\div|a_next\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|Add0~18_combout\,
	datac => \start~input_o\,
	datad => \div|a_next\(9),
	combout => \div|a~15_combout\);

-- Location: FF_X39_Y59_N5
\div|a[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|a~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|a\(9));

-- Location: LCCOMB_X35_Y59_N20
\div|Add27~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add27~28_combout\ = ((\div|ShiftLeft2~56_combout\ $ (\div|a\(10) $ (\div|Add27~27\)))) # (GND)
-- \div|Add27~29\ = CARRY((\div|ShiftLeft2~56_combout\ & (\div|a\(10) & !\div|Add27~27\)) # (!\div|ShiftLeft2~56_combout\ & ((\div|a\(10)) # (!\div|Add27~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft2~56_combout\,
	datab => \div|a\(10),
	datad => VCC,
	cin => \div|Add27~27\,
	combout => \div|Add27~28_combout\,
	cout => \div|Add27~29\);

-- Location: LCCOMB_X35_Y59_N22
\div|Add27~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add27~30_combout\ = (\div|ShiftLeft2~53_combout\ & ((\div|a\(11) & (!\div|Add27~29\)) # (!\div|a\(11) & ((\div|Add27~29\) # (GND))))) # (!\div|ShiftLeft2~53_combout\ & ((\div|a\(11) & (\div|Add27~29\ & VCC)) # (!\div|a\(11) & (!\div|Add27~29\))))
-- \div|Add27~31\ = CARRY((\div|ShiftLeft2~53_combout\ & ((!\div|Add27~29\) # (!\div|a\(11)))) # (!\div|ShiftLeft2~53_combout\ & (!\div|a\(11) & !\div|Add27~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft2~53_combout\,
	datab => \div|a\(11),
	datad => VCC,
	cin => \div|Add27~29\,
	combout => \div|Add27~30_combout\,
	cout => \div|Add27~31\);

-- Location: LCCOMB_X40_Y59_N6
\div|Add27~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add27~44_combout\ = (\div|curr_state.l00p~q\ & (((\div|Add27~30_combout\)))) # (!\div|curr_state.l00p~q\ & (!\div|curr_state.b_eq_1~q\ & (\div|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|curr_state.b_eq_1~q\,
	datab => \div|Add0~22_combout\,
	datac => \div|curr_state.l00p~q\,
	datad => \div|Add27~30_combout\,
	combout => \div|Add27~44_combout\);

-- Location: LCCOMB_X40_Y59_N10
\div|a_next[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|a_next\(11) = (GLOBAL(\div|curr_state~7clkctrl_outclk\) & (\div|a_next\(11))) # (!GLOBAL(\div|curr_state~7clkctrl_outclk\) & ((\div|Add27~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|a_next\(11),
	datac => \div|curr_state~7clkctrl_outclk\,
	datad => \div|Add27~44_combout\,
	combout => \div|a_next\(11));

-- Location: LCCOMB_X40_Y59_N0
\div|a~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|a~13_combout\ = (\start~input_o\ & (\div|Add0~22_combout\)) # (!\start~input_o\ & ((\div|a_next\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \div|Add0~22_combout\,
	datad => \div|a_next\(11),
	combout => \div|a~13_combout\);

-- Location: FF_X40_Y59_N1
\div|a[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|a~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|a\(11));

-- Location: LCCOMB_X35_Y59_N24
\div|Add27~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add27~32_combout\ = ((\div|ShiftLeft2~51_combout\ $ (\div|a\(12) $ (\div|Add27~31\)))) # (GND)
-- \div|Add27~33\ = CARRY((\div|ShiftLeft2~51_combout\ & (\div|a\(12) & !\div|Add27~31\)) # (!\div|ShiftLeft2~51_combout\ & ((\div|a\(12)) # (!\div|Add27~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft2~51_combout\,
	datab => \div|a\(12),
	datad => VCC,
	cin => \div|Add27~31\,
	combout => \div|Add27~32_combout\,
	cout => \div|Add27~33\);

-- Location: LCCOMB_X38_Y59_N2
\div|Add27~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add27~43_combout\ = (\div|curr_state.l00p~q\ & (((\div|Add27~32_combout\)))) # (!\div|curr_state.l00p~q\ & (\div|Add0~24_combout\ & (!\div|curr_state.b_eq_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add0~24_combout\,
	datab => \div|curr_state.l00p~q\,
	datac => \div|curr_state.b_eq_1~q\,
	datad => \div|Add27~32_combout\,
	combout => \div|Add27~43_combout\);

-- Location: LCCOMB_X38_Y59_N16
\div|a_next[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|a_next\(12) = (GLOBAL(\div|curr_state~7clkctrl_outclk\) & (\div|a_next\(12))) # (!GLOBAL(\div|curr_state~7clkctrl_outclk\) & ((\div|Add27~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|a_next\(12),
	datac => \div|curr_state~7clkctrl_outclk\,
	datad => \div|Add27~43_combout\,
	combout => \div|a_next\(12));

-- Location: LCCOMB_X38_Y59_N28
\div|a~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|a~12_combout\ = (\start~input_o\ & (\div|Add0~24_combout\)) # (!\start~input_o\ & ((\div|a_next\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add0~24_combout\,
	datac => \start~input_o\,
	datad => \div|a_next\(12),
	combout => \div|a~12_combout\);

-- Location: FF_X38_Y59_N29
\div|a[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|a~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|a\(12));

-- Location: LCCOMB_X39_Y59_N22
\div|get_msb_pos~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|get_msb_pos~30_combout\ = (\div|a\(14)) # ((\div|a\(12) & !\div|a\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|a\(12),
	datac => \div|a\(14),
	datad => \div|a\(13),
	combout => \div|get_msb_pos~30_combout\);

-- Location: LCCOMB_X39_Y59_N2
\div|get_msb_pos~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|get_msb_pos~26_combout\ = (!\div|a\(3) & ((\div|a\(2)) # ((!\div|a\(1) & \div|a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(1),
	datab => \div|a\(2),
	datac => \div|a\(0),
	datad => \div|a\(3),
	combout => \div|get_msb_pos~26_combout\);

-- Location: LCCOMB_X39_Y59_N28
\div|get_msb_pos~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|get_msb_pos~27_combout\ = (!\div|a\(5) & ((\div|a\(4)) # (\div|get_msb_pos~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(4),
	datac => \div|a\(5),
	datad => \div|get_msb_pos~26_combout\,
	combout => \div|get_msb_pos~27_combout\);

-- Location: LCCOMB_X39_Y59_N18
\div|get_msb_pos~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|get_msb_pos~28_combout\ = (\div|a\(8)) # ((!\div|a\(7) & ((\div|a\(6)) # (\div|get_msb_pos~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(6),
	datab => \div|a\(7),
	datac => \div|a\(8),
	datad => \div|get_msb_pos~27_combout\,
	combout => \div|get_msb_pos~28_combout\);

-- Location: LCCOMB_X39_Y59_N16
\div|get_msb_pos~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|get_msb_pos~29_combout\ = (!\div|a\(11) & ((\div|a\(10)) # ((!\div|a\(9) & \div|get_msb_pos~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(10),
	datab => \div|a\(9),
	datac => \div|a\(11),
	datad => \div|get_msb_pos~28_combout\,
	combout => \div|get_msb_pos~29_combout\);

-- Location: LCCOMB_X39_Y59_N20
\div|get_msb_pos~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|get_msb_pos~31_combout\ = (!\div|a\(15) & ((\div|get_msb_pos~30_combout\) # ((!\div|a\(13) & \div|get_msb_pos~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(15),
	datab => \div|a\(13),
	datac => \div|get_msb_pos~30_combout\,
	datad => \div|get_msb_pos~29_combout\,
	combout => \div|get_msb_pos~31_combout\);

-- Location: LCCOMB_X39_Y56_N14
\div|Add24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add24~2_combout\ = (\div|get_msb_pos~38_combout\ & ((\div|get_msb_pos~40_combout\ & (!\div|Add24~1\)) # (!\div|get_msb_pos~40_combout\ & ((\div|Add24~1\) # (GND))))) # (!\div|get_msb_pos~38_combout\ & ((\div|get_msb_pos~40_combout\ & (\div|Add24~1\ & 
-- VCC)) # (!\div|get_msb_pos~40_combout\ & (!\div|Add24~1\))))
-- \div|Add24~3\ = CARRY((\div|get_msb_pos~38_combout\ & ((!\div|Add24~1\) # (!\div|get_msb_pos~40_combout\))) # (!\div|get_msb_pos~38_combout\ & (!\div|get_msb_pos~40_combout\ & !\div|Add24~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|get_msb_pos~38_combout\,
	datab => \div|get_msb_pos~40_combout\,
	datad => VCC,
	cin => \div|Add24~1\,
	combout => \div|Add24~2_combout\,
	cout => \div|Add24~3\);

-- Location: LCCOMB_X39_Y56_N16
\div|Add24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add24~4_combout\ = ((\div|get_msb_pos~35_combout\ $ (\div|get_msb_pos~36_combout\ $ (\div|Add24~3\)))) # (GND)
-- \div|Add24~5\ = CARRY((\div|get_msb_pos~35_combout\ & ((!\div|Add24~3\) # (!\div|get_msb_pos~36_combout\))) # (!\div|get_msb_pos~35_combout\ & (!\div|get_msb_pos~36_combout\ & !\div|Add24~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|get_msb_pos~35_combout\,
	datab => \div|get_msb_pos~36_combout\,
	datad => VCC,
	cin => \div|Add24~3\,
	combout => \div|Add24~4_combout\,
	cout => \div|Add24~5\);

-- Location: LCCOMB_X40_Y56_N2
\div|ShiftLeft0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~8_combout\ = (\div|Add24~0_combout\ & (((\div|Add24~2_combout\)))) # (!\div|Add24~0_combout\ & ((\div|Add24~2_combout\ & (\div|b\(5))) # (!\div|Add24~2_combout\ & ((\div|b\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add24~0_combout\,
	datab => \div|b\(5),
	datac => \div|b\(7),
	datad => \div|Add24~2_combout\,
	combout => \div|ShiftLeft0~8_combout\);

-- Location: LCCOMB_X40_Y56_N0
\div|ShiftLeft0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~9_combout\ = (\div|Add24~0_combout\ & ((\div|ShiftLeft0~8_combout\ & ((\div|b\(4)))) # (!\div|ShiftLeft0~8_combout\ & (\div|b\(6))))) # (!\div|Add24~0_combout\ & (((\div|ShiftLeft0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add24~0_combout\,
	datab => \div|b\(6),
	datac => \div|b\(4),
	datad => \div|ShiftLeft0~8_combout\,
	combout => \div|ShiftLeft0~9_combout\);

-- Location: LCCOMB_X40_Y56_N26
\div|ShiftLeft0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~6_combout\ = (\div|Add24~0_combout\ & (\div|b\(2))) # (!\div|Add24~0_combout\ & ((\div|b\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|b\(2),
	datac => \div|b\(3),
	datad => \div|Add24~0_combout\,
	combout => \div|ShiftLeft0~6_combout\);

-- Location: LCCOMB_X40_Y56_N8
\div|ShiftLeft0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~5_combout\ = (\div|Add24~0_combout\ & ((\div|b\(0)))) # (!\div|Add24~0_combout\ & (\div|b\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|b\(1),
	datac => \div|b\(0),
	datad => \div|Add24~0_combout\,
	combout => \div|ShiftLeft0~5_combout\);

-- Location: LCCOMB_X40_Y56_N4
\div|ShiftLeft0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~7_combout\ = (\div|Add24~2_combout\ & ((\div|ShiftLeft0~5_combout\))) # (!\div|Add24~2_combout\ & (\div|ShiftLeft0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft0~6_combout\,
	datac => \div|ShiftLeft0~5_combout\,
	datad => \div|Add24~2_combout\,
	combout => \div|ShiftLeft0~7_combout\);

-- Location: LCCOMB_X39_Y56_N30
\div|ShiftLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~4_combout\ = (\div|Add24~6_combout\ & (!\div|Add24~10_combout\ & !\div|Add24~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|Add24~6_combout\,
	datac => \div|Add24~10_combout\,
	datad => \div|Add24~8_combout\,
	combout => \div|ShiftLeft0~4_combout\);

-- Location: LCCOMB_X40_Y56_N22
\div|ShiftLeft0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~10_combout\ = (\div|ShiftLeft0~4_combout\ & ((\div|Add24~4_combout\ & ((\div|ShiftLeft0~7_combout\))) # (!\div|Add24~4_combout\ & (\div|ShiftLeft0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add24~4_combout\,
	datab => \div|ShiftLeft0~9_combout\,
	datac => \div|ShiftLeft0~7_combout\,
	datad => \div|ShiftLeft0~4_combout\,
	combout => \div|ShiftLeft0~10_combout\);

-- Location: LCCOMB_X38_Y56_N0
\div|ShiftLeft0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~18_combout\ = (\div|Add24~0_combout\ & (\div|b\(1))) # (!\div|Add24~0_combout\ & ((\div|b\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|b\(1),
	datac => \div|Add24~0_combout\,
	datad => \div|b\(2),
	combout => \div|ShiftLeft0~18_combout\);

-- Location: LCCOMB_X38_Y56_N10
\div|ShiftLeft0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~19_combout\ = (\div|Add24~2_combout\ & (\div|b\(0) & (!\div|Add24~0_combout\))) # (!\div|Add24~2_combout\ & (((\div|ShiftLeft0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|b\(0),
	datab => \div|Add24~0_combout\,
	datac => \div|Add24~2_combout\,
	datad => \div|ShiftLeft0~18_combout\,
	combout => \div|ShiftLeft0~19_combout\);

-- Location: LCCOMB_X38_Y56_N12
\div|ShiftLeft0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~16_combout\ = (!\div|Add24~8_combout\ & (\div|Add24~6_combout\ & (!\div|Add24~4_combout\ & !\div|Add24~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add24~8_combout\,
	datab => \div|Add24~6_combout\,
	datac => \div|Add24~4_combout\,
	datad => \div|Add24~10_combout\,
	combout => \div|ShiftLeft0~16_combout\);

-- Location: LCCOMB_X38_Y56_N2
\div|ShiftLeft0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~15_combout\ = (\div|Add24~0_combout\ & (\div|Add24~2_combout\ & \div|b\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|Add24~0_combout\,
	datac => \div|Add24~2_combout\,
	datad => \div|b\(7),
	combout => \div|ShiftLeft0~15_combout\);

-- Location: LCCOMB_X39_Y56_N8
\div|ShiftLeft0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~14_combout\ = (!\div|Add24~10_combout\ & (\div|Add24~4_combout\ & (!\div|Add24~6_combout\ & !\div|Add24~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add24~10_combout\,
	datab => \div|Add24~4_combout\,
	datac => \div|Add24~6_combout\,
	datad => \div|Add24~8_combout\,
	combout => \div|ShiftLeft0~14_combout\);

-- Location: LCCOMB_X38_Y56_N30
\div|ShiftLeft0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~11_combout\ = (\div|Add24~0_combout\ & (\div|b\(3))) # (!\div|Add24~0_combout\ & ((\div|b\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|b\(3),
	datac => \div|Add24~0_combout\,
	datad => \div|b\(4),
	combout => \div|ShiftLeft0~11_combout\);

-- Location: LCCOMB_X40_Y56_N28
\div|ShiftLeft0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~12_combout\ = (\div|Add24~0_combout\ & ((\div|b\(5)))) # (!\div|Add24~0_combout\ & (\div|b\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|b\(6),
	datac => \div|b\(5),
	datad => \div|Add24~0_combout\,
	combout => \div|ShiftLeft0~12_combout\);

-- Location: LCCOMB_X38_Y56_N28
\div|ShiftLeft0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~13_combout\ = (\div|Add24~2_combout\ & (\div|ShiftLeft0~11_combout\)) # (!\div|Add24~2_combout\ & ((\div|ShiftLeft0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft0~11_combout\,
	datac => \div|Add24~2_combout\,
	datad => \div|ShiftLeft0~12_combout\,
	combout => \div|ShiftLeft0~13_combout\);

-- Location: LCCOMB_X38_Y56_N6
\div|ShiftLeft0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~17_combout\ = (\div|ShiftLeft0~16_combout\ & ((\div|ShiftLeft0~13_combout\) # ((\div|ShiftLeft0~15_combout\ & \div|ShiftLeft0~14_combout\)))) # (!\div|ShiftLeft0~16_combout\ & (\div|ShiftLeft0~15_combout\ & (\div|ShiftLeft0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft0~16_combout\,
	datab => \div|ShiftLeft0~15_combout\,
	datac => \div|ShiftLeft0~14_combout\,
	datad => \div|ShiftLeft0~13_combout\,
	combout => \div|ShiftLeft0~17_combout\);

-- Location: LCCOMB_X38_Y56_N8
\div|ShiftLeft0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~20_combout\ = (\div|ShiftLeft0~17_combout\) # ((\div|ShiftLeft0~19_combout\ & (\div|Add24~4_combout\ & \div|ShiftLeft0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft0~19_combout\,
	datab => \div|Add24~4_combout\,
	datac => \div|ShiftLeft0~4_combout\,
	datad => \div|ShiftLeft0~17_combout\,
	combout => \div|ShiftLeft0~20_combout\);

-- Location: LCCOMB_X36_Y56_N24
\div|ShiftLeft0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~21_combout\ = (\div|Add24~2_combout\ & ((\div|Add24~0_combout\ & (\div|b\(6))) # (!\div|Add24~0_combout\ & ((\div|b\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|b\(6),
	datab => \div|b\(7),
	datac => \div|Add24~0_combout\,
	datad => \div|Add24~2_combout\,
	combout => \div|ShiftLeft0~21_combout\);

-- Location: LCCOMB_X36_Y56_N0
\div|ShiftLeft0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~23_combout\ = (!\div|Add24~2_combout\ & ((\div|Add24~0_combout\ & (\div|b\(4))) # (!\div|Add24~0_combout\ & ((\div|b\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|b\(4),
	datab => \div|b\(5),
	datac => \div|Add24~0_combout\,
	datad => \div|Add24~2_combout\,
	combout => \div|ShiftLeft0~23_combout\);

-- Location: LCCOMB_X36_Y56_N30
\div|ShiftLeft0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~22_combout\ = (!\div|Add24~2_combout\ & ((\div|Add24~0_combout\ & ((\div|b\(0)))) # (!\div|Add24~0_combout\ & (\div|b\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|b\(1),
	datab => \div|b\(0),
	datac => \div|Add24~0_combout\,
	datad => \div|Add24~2_combout\,
	combout => \div|ShiftLeft0~22_combout\);

-- Location: LCCOMB_X34_Y56_N28
\div|ShiftLeft0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~24_combout\ = (\div|Add24~2_combout\ & ((\div|Add24~0_combout\ & (\div|b\(2))) # (!\div|Add24~0_combout\ & ((\div|b\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|b\(2),
	datab => \div|b\(3),
	datac => \div|Add24~0_combout\,
	datad => \div|Add24~2_combout\,
	combout => \div|ShiftLeft0~24_combout\);

-- Location: LCCOMB_X36_Y56_N10
\div|ShiftLeft0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~25_combout\ = (\div|Add24~4_combout\ & (((\div|ShiftLeft0~22_combout\)))) # (!\div|Add24~4_combout\ & ((\div|ShiftLeft0~23_combout\) # ((\div|ShiftLeft0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add24~4_combout\,
	datab => \div|ShiftLeft0~23_combout\,
	datac => \div|ShiftLeft0~22_combout\,
	datad => \div|ShiftLeft0~24_combout\,
	combout => \div|ShiftLeft0~25_combout\);

-- Location: LCCOMB_X36_Y56_N16
\div|ShiftLeft0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~26_combout\ = (\div|ShiftLeft0~14_combout\ & ((\div|ShiftLeft0~21_combout\) # ((\div|ShiftLeft0~4_combout\ & \div|ShiftLeft0~25_combout\)))) # (!\div|ShiftLeft0~14_combout\ & (((\div|ShiftLeft0~4_combout\ & \div|ShiftLeft0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft0~14_combout\,
	datab => \div|ShiftLeft0~21_combout\,
	datac => \div|ShiftLeft0~4_combout\,
	datad => \div|ShiftLeft0~25_combout\,
	combout => \div|ShiftLeft0~26_combout\);

-- Location: LCCOMB_X39_Y56_N26
\div|ShiftLeft0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~30_combout\ = (\div|b\(7) & (!\div|Add24~2_combout\ & \div|Add24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|b\(7),
	datac => \div|Add24~2_combout\,
	datad => \div|Add24~0_combout\,
	combout => \div|ShiftLeft0~30_combout\);

-- Location: LCCOMB_X36_Y56_N2
\div|ShiftLeft0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~31_combout\ = (\div|Add24~2_combout\ & ((\div|Add24~0_combout\ & ((\div|b\(5)))) # (!\div|Add24~0_combout\ & (\div|b\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|b\(6),
	datab => \div|b\(5),
	datac => \div|Add24~0_combout\,
	datad => \div|Add24~2_combout\,
	combout => \div|ShiftLeft0~31_combout\);

-- Location: LCCOMB_X36_Y56_N26
\div|ShiftLeft0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~27_combout\ = (\div|b\(0) & (!\div|Add24~0_combout\ & !\div|Add24~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|b\(0),
	datac => \div|Add24~0_combout\,
	datad => \div|Add24~2_combout\,
	combout => \div|ShiftLeft0~27_combout\);

-- Location: LCCOMB_X38_Y56_N22
\div|ShiftLeft0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~28_combout\ = (\div|Add24~2_combout\ & ((\div|ShiftLeft0~18_combout\))) # (!\div|Add24~2_combout\ & (\div|ShiftLeft0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|Add24~2_combout\,
	datac => \div|ShiftLeft0~11_combout\,
	datad => \div|ShiftLeft0~18_combout\,
	combout => \div|ShiftLeft0~28_combout\);

-- Location: LCCOMB_X36_Y56_N20
\div|ShiftLeft0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~29_combout\ = (\div|ShiftLeft0~4_combout\ & ((\div|Add24~4_combout\ & (\div|ShiftLeft0~27_combout\)) # (!\div|Add24~4_combout\ & ((\div|ShiftLeft0~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft0~27_combout\,
	datab => \div|Add24~4_combout\,
	datac => \div|ShiftLeft0~4_combout\,
	datad => \div|ShiftLeft0~28_combout\,
	combout => \div|ShiftLeft0~29_combout\);

-- Location: LCCOMB_X36_Y56_N28
\div|ShiftLeft0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~32_combout\ = (\div|ShiftLeft0~29_combout\) # ((\div|ShiftLeft0~14_combout\ & ((\div|ShiftLeft0~30_combout\) # (\div|ShiftLeft0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft0~30_combout\,
	datab => \div|ShiftLeft0~31_combout\,
	datac => \div|ShiftLeft0~14_combout\,
	datad => \div|ShiftLeft0~29_combout\,
	combout => \div|ShiftLeft0~32_combout\);

-- Location: LCCOMB_X40_Y56_N30
\div|ShiftLeft0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~33_combout\ = (\div|Add24~4_combout\ & (!\div|Add24~6_combout\ & ((\div|ShiftLeft0~9_combout\)))) # (!\div|Add24~4_combout\ & (\div|Add24~6_combout\ & (\div|ShiftLeft0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add24~4_combout\,
	datab => \div|Add24~6_combout\,
	datac => \div|ShiftLeft0~7_combout\,
	datad => \div|ShiftLeft0~9_combout\,
	combout => \div|ShiftLeft0~33_combout\);

-- Location: LCCOMB_X40_Y56_N16
\div|ShiftLeft0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~34_combout\ = (!\div|Add24~10_combout\ & (\div|ShiftLeft0~33_combout\ & !\div|Add24~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|Add24~10_combout\,
	datac => \div|ShiftLeft0~33_combout\,
	datad => \div|Add24~8_combout\,
	combout => \div|ShiftLeft0~34_combout\);

-- Location: LCCOMB_X39_Y56_N28
\div|ShiftLeft0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~35_combout\ = (!\div|Add24~10_combout\ & (!\div|Add24~4_combout\ & (!\div|Add24~6_combout\ & !\div|Add24~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add24~10_combout\,
	datab => \div|Add24~4_combout\,
	datac => \div|Add24~6_combout\,
	datad => \div|Add24~8_combout\,
	combout => \div|ShiftLeft0~35_combout\);

-- Location: LCCOMB_X38_Y56_N16
\div|ShiftLeft0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~36_combout\ = (\div|ShiftLeft0~13_combout\ & ((\div|ShiftLeft0~14_combout\) # ((\div|ShiftLeft0~15_combout\ & \div|ShiftLeft0~35_combout\)))) # (!\div|ShiftLeft0~13_combout\ & (\div|ShiftLeft0~15_combout\ & 
-- ((\div|ShiftLeft0~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft0~13_combout\,
	datab => \div|ShiftLeft0~15_combout\,
	datac => \div|ShiftLeft0~14_combout\,
	datad => \div|ShiftLeft0~35_combout\,
	combout => \div|ShiftLeft0~36_combout\);

-- Location: LCCOMB_X38_Y56_N14
\div|ShiftLeft0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~37_combout\ = (\div|ShiftLeft0~36_combout\) # ((\div|ShiftLeft0~19_combout\ & (!\div|Add24~4_combout\ & \div|ShiftLeft0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft0~19_combout\,
	datab => \div|Add24~4_combout\,
	datac => \div|ShiftLeft0~4_combout\,
	datad => \div|ShiftLeft0~36_combout\,
	combout => \div|ShiftLeft0~37_combout\);

-- Location: LCCOMB_X36_Y56_N14
\div|ShiftLeft0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~38_combout\ = (!\div|Add24~4_combout\ & (!\div|Add24~10_combout\ & !\div|Add24~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add24~4_combout\,
	datac => \div|Add24~10_combout\,
	datad => \div|Add24~8_combout\,
	combout => \div|ShiftLeft0~38_combout\);

-- Location: LCCOMB_X36_Y56_N8
\div|ShiftLeft0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~39_combout\ = (\div|ShiftLeft0~38_combout\ & ((\div|Add24~6_combout\ & (\div|ShiftLeft0~22_combout\)) # (!\div|Add24~6_combout\ & ((\div|ShiftLeft0~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft0~22_combout\,
	datab => \div|Add24~6_combout\,
	datac => \div|ShiftLeft0~38_combout\,
	datad => \div|ShiftLeft0~21_combout\,
	combout => \div|ShiftLeft0~39_combout\);

-- Location: LCCOMB_X36_Y56_N22
\div|ShiftLeft0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~40_combout\ = (\div|ShiftLeft0~39_combout\) # ((\div|ShiftLeft0~14_combout\ & ((\div|ShiftLeft0~23_combout\) # (\div|ShiftLeft0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft0~14_combout\,
	datab => \div|ShiftLeft0~23_combout\,
	datac => \div|ShiftLeft0~39_combout\,
	datad => \div|ShiftLeft0~24_combout\,
	combout => \div|ShiftLeft0~40_combout\);

-- Location: LCCOMB_X38_Y56_N20
\div|ShiftLeft0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~41_combout\ = (!\div|Add24~0_combout\ & \div|b\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div|Add24~0_combout\,
	datad => \div|b\(0),
	combout => \div|ShiftLeft0~41_combout\);

-- Location: LCCOMB_X40_Y56_N14
\div|ShiftLeft0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~42_combout\ = (!\div|Add24~2_combout\ & (\div|ShiftLeft0~41_combout\ & (!\div|Add24~4_combout\ & \div|ShiftLeft0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add24~2_combout\,
	datab => \div|ShiftLeft0~41_combout\,
	datac => \div|Add24~4_combout\,
	datad => \div|ShiftLeft0~4_combout\,
	combout => \div|ShiftLeft0~42_combout\);

-- Location: LCCOMB_X40_Y56_N12
\div|ShiftLeft0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~43_combout\ = (\div|ShiftLeft0~35_combout\ & ((\div|ShiftLeft0~30_combout\) # ((\div|Add24~2_combout\ & \div|ShiftLeft0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add24~2_combout\,
	datab => \div|ShiftLeft0~12_combout\,
	datac => \div|ShiftLeft0~30_combout\,
	datad => \div|ShiftLeft0~35_combout\,
	combout => \div|ShiftLeft0~43_combout\);

-- Location: LCCOMB_X40_Y56_N10
\div|ShiftLeft0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~44_combout\ = (\div|ShiftLeft0~42_combout\) # ((\div|ShiftLeft0~43_combout\) # ((\div|ShiftLeft0~14_combout\ & \div|ShiftLeft0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft0~14_combout\,
	datab => \div|ShiftLeft0~28_combout\,
	datac => \div|ShiftLeft0~42_combout\,
	datad => \div|ShiftLeft0~43_combout\,
	combout => \div|ShiftLeft0~44_combout\);

-- Location: LCCOMB_X39_Y56_N6
\div|ShiftLeft0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~45_combout\ = (!\div|Add24~6_combout\ & (!\div|Add24~10_combout\ & !\div|Add24~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|Add24~6_combout\,
	datac => \div|Add24~10_combout\,
	datad => \div|Add24~8_combout\,
	combout => \div|ShiftLeft0~45_combout\);

-- Location: LCCOMB_X40_Y56_N24
\div|ShiftLeft0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~46_combout\ = (\div|ShiftLeft0~45_combout\ & ((\div|Add24~4_combout\ & (\div|ShiftLeft0~7_combout\)) # (!\div|Add24~4_combout\ & ((\div|ShiftLeft0~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add24~4_combout\,
	datab => \div|ShiftLeft0~7_combout\,
	datac => \div|ShiftLeft0~45_combout\,
	datad => \div|ShiftLeft0~9_combout\,
	combout => \div|ShiftLeft0~46_combout\);

-- Location: LCCOMB_X38_Y56_N26
\div|ShiftLeft0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~47_combout\ = (\div|ShiftLeft0~19_combout\ & ((\div|ShiftLeft0~14_combout\) # ((\div|ShiftLeft0~35_combout\ & \div|ShiftLeft0~13_combout\)))) # (!\div|ShiftLeft0~19_combout\ & (\div|ShiftLeft0~35_combout\ & 
-- ((\div|ShiftLeft0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft0~19_combout\,
	datab => \div|ShiftLeft0~35_combout\,
	datac => \div|ShiftLeft0~14_combout\,
	datad => \div|ShiftLeft0~13_combout\,
	combout => \div|ShiftLeft0~47_combout\);

-- Location: LCCOMB_X36_Y56_N4
\div|ShiftLeft0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~53_combout\ = (!\div|Add24~6_combout\ & (!\div|Add24~8_combout\ & (!\div|Add24~10_combout\ & \div|ShiftLeft0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add24~6_combout\,
	datab => \div|Add24~8_combout\,
	datac => \div|Add24~10_combout\,
	datad => \div|ShiftLeft0~25_combout\,
	combout => \div|ShiftLeft0~53_combout\);

-- Location: LCCOMB_X36_Y56_N12
\div|ShiftLeft0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~48_combout\ = (\div|ShiftLeft0~45_combout\ & ((\div|Add24~4_combout\ & (\div|ShiftLeft0~27_combout\)) # (!\div|Add24~4_combout\ & ((\div|ShiftLeft0~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft0~27_combout\,
	datab => \div|Add24~4_combout\,
	datac => \div|ShiftLeft0~45_combout\,
	datad => \div|ShiftLeft0~28_combout\,
	combout => \div|ShiftLeft0~48_combout\);

-- Location: LCCOMB_X40_Y56_N6
\div|ShiftLeft0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~49_combout\ = (\div|ShiftLeft0~35_combout\ & ((\div|Add24~2_combout\ & (\div|ShiftLeft0~5_combout\)) # (!\div|Add24~2_combout\ & ((\div|ShiftLeft0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add24~2_combout\,
	datab => \div|ShiftLeft0~5_combout\,
	datac => \div|ShiftLeft0~6_combout\,
	datad => \div|ShiftLeft0~35_combout\,
	combout => \div|ShiftLeft0~49_combout\);

-- Location: LCCOMB_X38_Y56_N4
\div|ShiftLeft0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~50_combout\ = (\div|ShiftLeft0~35_combout\ & ((\div|Add24~2_combout\ & (\div|ShiftLeft0~41_combout\)) # (!\div|Add24~2_combout\ & ((\div|ShiftLeft0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft0~41_combout\,
	datab => \div|Add24~2_combout\,
	datac => \div|ShiftLeft0~18_combout\,
	datad => \div|ShiftLeft0~35_combout\,
	combout => \div|ShiftLeft0~50_combout\);

-- Location: LCCOMB_X40_Y56_N20
\div|ShiftLeft0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~51_combout\ = (!\div|Add24~2_combout\ & (\div|ShiftLeft0~5_combout\ & \div|ShiftLeft0~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add24~2_combout\,
	datac => \div|ShiftLeft0~5_combout\,
	datad => \div|ShiftLeft0~35_combout\,
	combout => \div|ShiftLeft0~51_combout\);

-- Location: LCCOMB_X36_Y56_N6
\div|ShiftLeft0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~54_combout\ = (!\div|Add24~0_combout\ & (\div|b\(0) & (!\div|Add24~2_combout\ & !\div|Add24~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add24~0_combout\,
	datab => \div|b\(0),
	datac => \div|Add24~2_combout\,
	datad => \div|Add24~4_combout\,
	combout => \div|ShiftLeft0~54_combout\);

-- Location: LCCOMB_X36_Y56_N18
\div|ShiftLeft0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft0~52_combout\ = (!\div|Add24~6_combout\ & (!\div|Add24~8_combout\ & (!\div|Add24~10_combout\ & \div|ShiftLeft0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add24~6_combout\,
	datab => \div|Add24~8_combout\,
	datac => \div|Add24~10_combout\,
	datad => \div|ShiftLeft0~54_combout\,
	combout => \div|ShiftLeft0~52_combout\);

-- Location: LCCOMB_X35_Y56_N0
\div|LessThan44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|LessThan44~1_cout\ = CARRY((!\div|a\(0) & \div|ShiftLeft0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(0),
	datab => \div|ShiftLeft0~52_combout\,
	datad => VCC,
	cout => \div|LessThan44~1_cout\);

-- Location: LCCOMB_X35_Y56_N2
\div|LessThan44~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|LessThan44~3_cout\ = CARRY((\div|ShiftLeft0~51_combout\ & (\div|a\(1) & !\div|LessThan44~1_cout\)) # (!\div|ShiftLeft0~51_combout\ & ((\div|a\(1)) # (!\div|LessThan44~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft0~51_combout\,
	datab => \div|a\(1),
	datad => VCC,
	cin => \div|LessThan44~1_cout\,
	cout => \div|LessThan44~3_cout\);

-- Location: LCCOMB_X35_Y56_N4
\div|LessThan44~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|LessThan44~5_cout\ = CARRY((\div|ShiftLeft0~50_combout\ & ((!\div|LessThan44~3_cout\) # (!\div|a\(2)))) # (!\div|ShiftLeft0~50_combout\ & (!\div|a\(2) & !\div|LessThan44~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft0~50_combout\,
	datab => \div|a\(2),
	datad => VCC,
	cin => \div|LessThan44~3_cout\,
	cout => \div|LessThan44~5_cout\);

-- Location: LCCOMB_X35_Y56_N6
\div|LessThan44~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|LessThan44~7_cout\ = CARRY((\div|a\(3) & ((!\div|LessThan44~5_cout\) # (!\div|ShiftLeft0~49_combout\))) # (!\div|a\(3) & (!\div|ShiftLeft0~49_combout\ & !\div|LessThan44~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(3),
	datab => \div|ShiftLeft0~49_combout\,
	datad => VCC,
	cin => \div|LessThan44~5_cout\,
	cout => \div|LessThan44~7_cout\);

-- Location: LCCOMB_X35_Y56_N8
\div|LessThan44~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|LessThan44~9_cout\ = CARRY((\div|a\(4) & (\div|ShiftLeft0~48_combout\ & !\div|LessThan44~7_cout\)) # (!\div|a\(4) & ((\div|ShiftLeft0~48_combout\) # (!\div|LessThan44~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(4),
	datab => \div|ShiftLeft0~48_combout\,
	datad => VCC,
	cin => \div|LessThan44~7_cout\,
	cout => \div|LessThan44~9_cout\);

-- Location: LCCOMB_X35_Y56_N10
\div|LessThan44~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|LessThan44~11_cout\ = CARRY((\div|ShiftLeft0~53_combout\ & (\div|a\(5) & !\div|LessThan44~9_cout\)) # (!\div|ShiftLeft0~53_combout\ & ((\div|a\(5)) # (!\div|LessThan44~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft0~53_combout\,
	datab => \div|a\(5),
	datad => VCC,
	cin => \div|LessThan44~9_cout\,
	cout => \div|LessThan44~11_cout\);

-- Location: LCCOMB_X35_Y56_N12
\div|LessThan44~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|LessThan44~13_cout\ = CARRY((\div|ShiftLeft0~47_combout\ & ((!\div|LessThan44~11_cout\) # (!\div|a\(6)))) # (!\div|ShiftLeft0~47_combout\ & (!\div|a\(6) & !\div|LessThan44~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft0~47_combout\,
	datab => \div|a\(6),
	datad => VCC,
	cin => \div|LessThan44~11_cout\,
	cout => \div|LessThan44~13_cout\);

-- Location: LCCOMB_X35_Y56_N14
\div|LessThan44~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|LessThan44~15_cout\ = CARRY((\div|ShiftLeft0~46_combout\ & (\div|a\(7) & !\div|LessThan44~13_cout\)) # (!\div|ShiftLeft0~46_combout\ & ((\div|a\(7)) # (!\div|LessThan44~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft0~46_combout\,
	datab => \div|a\(7),
	datad => VCC,
	cin => \div|LessThan44~13_cout\,
	cout => \div|LessThan44~15_cout\);

-- Location: LCCOMB_X35_Y56_N16
\div|LessThan44~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|LessThan44~17_cout\ = CARRY((\div|a\(8) & (\div|ShiftLeft0~44_combout\ & !\div|LessThan44~15_cout\)) # (!\div|a\(8) & ((\div|ShiftLeft0~44_combout\) # (!\div|LessThan44~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(8),
	datab => \div|ShiftLeft0~44_combout\,
	datad => VCC,
	cin => \div|LessThan44~15_cout\,
	cout => \div|LessThan44~17_cout\);

-- Location: LCCOMB_X35_Y56_N18
\div|LessThan44~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|LessThan44~19_cout\ = CARRY((\div|a\(9) & ((!\div|LessThan44~17_cout\) # (!\div|ShiftLeft0~40_combout\))) # (!\div|a\(9) & (!\div|ShiftLeft0~40_combout\ & !\div|LessThan44~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(9),
	datab => \div|ShiftLeft0~40_combout\,
	datad => VCC,
	cin => \div|LessThan44~17_cout\,
	cout => \div|LessThan44~19_cout\);

-- Location: LCCOMB_X35_Y56_N20
\div|LessThan44~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|LessThan44~21_cout\ = CARRY((\div|ShiftLeft0~37_combout\ & ((!\div|LessThan44~19_cout\) # (!\div|a\(10)))) # (!\div|ShiftLeft0~37_combout\ & (!\div|a\(10) & !\div|LessThan44~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft0~37_combout\,
	datab => \div|a\(10),
	datad => VCC,
	cin => \div|LessThan44~19_cout\,
	cout => \div|LessThan44~21_cout\);

-- Location: LCCOMB_X35_Y56_N22
\div|LessThan44~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|LessThan44~23_cout\ = CARRY((\div|ShiftLeft0~34_combout\ & (\div|a\(11) & !\div|LessThan44~21_cout\)) # (!\div|ShiftLeft0~34_combout\ & ((\div|a\(11)) # (!\div|LessThan44~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft0~34_combout\,
	datab => \div|a\(11),
	datad => VCC,
	cin => \div|LessThan44~21_cout\,
	cout => \div|LessThan44~23_cout\);

-- Location: LCCOMB_X35_Y56_N24
\div|LessThan44~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|LessThan44~25_cout\ = CARRY((\div|a\(12) & (\div|ShiftLeft0~32_combout\ & !\div|LessThan44~23_cout\)) # (!\div|a\(12) & ((\div|ShiftLeft0~32_combout\) # (!\div|LessThan44~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(12),
	datab => \div|ShiftLeft0~32_combout\,
	datad => VCC,
	cin => \div|LessThan44~23_cout\,
	cout => \div|LessThan44~25_cout\);

-- Location: LCCOMB_X35_Y56_N26
\div|LessThan44~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|LessThan44~27_cout\ = CARRY((\div|a\(13) & ((!\div|LessThan44~25_cout\) # (!\div|ShiftLeft0~26_combout\))) # (!\div|a\(13) & (!\div|ShiftLeft0~26_combout\ & !\div|LessThan44~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(13),
	datab => \div|ShiftLeft0~26_combout\,
	datad => VCC,
	cin => \div|LessThan44~25_cout\,
	cout => \div|LessThan44~27_cout\);

-- Location: LCCOMB_X35_Y56_N28
\div|LessThan44~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|LessThan44~29_cout\ = CARRY((\div|a\(14) & (\div|ShiftLeft0~20_combout\ & !\div|LessThan44~27_cout\)) # (!\div|a\(14) & ((\div|ShiftLeft0~20_combout\) # (!\div|LessThan44~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(14),
	datab => \div|ShiftLeft0~20_combout\,
	datad => VCC,
	cin => \div|LessThan44~27_cout\,
	cout => \div|LessThan44~29_cout\);

-- Location: LCCOMB_X35_Y56_N30
\div|LessThan44~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|LessThan44~30_combout\ = (\div|a\(15) & (\div|LessThan44~29_cout\ & \div|ShiftLeft0~10_combout\)) # (!\div|a\(15) & ((\div|LessThan44~29_cout\) # (\div|ShiftLeft0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|a\(15),
	datad => \div|ShiftLeft0~10_combout\,
	cin => \div|LessThan44~29_cout\,
	combout => \div|LessThan44~30_combout\);

-- Location: LCCOMB_X34_Y56_N12
\div|ShiftLeft2~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~63_combout\ = (!\div|ShiftLeft2~14_combout\ & ((\div|LessThan44~30_combout\ & ((\div|Add25~4_combout\))) # (!\div|LessThan44~30_combout\ & (\div|Add24~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|LessThan44~30_combout\,
	datab => \div|Add24~4_combout\,
	datac => \div|Add25~4_combout\,
	datad => \div|ShiftLeft2~14_combout\,
	combout => \div|ShiftLeft2~63_combout\);

-- Location: LCCOMB_X34_Y56_N16
\div|ShiftLeft2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~48_combout\ = (\div|ShiftLeft2~63_combout\ & ((\div|ShiftLeft2~47_combout\) # ((\div|ShiftLeft2~16_combout\ & \div|ShiftLeft2~41_combout\)))) # (!\div|ShiftLeft2~63_combout\ & (\div|ShiftLeft2~16_combout\ & 
-- ((\div|ShiftLeft2~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft2~63_combout\,
	datab => \div|ShiftLeft2~16_combout\,
	datac => \div|ShiftLeft2~47_combout\,
	datad => \div|ShiftLeft2~41_combout\,
	combout => \div|ShiftLeft2~48_combout\);

-- Location: LCCOMB_X35_Y59_N26
\div|Add27~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add27~34_combout\ = (\div|ShiftLeft2~48_combout\ & ((\div|a\(13) & (!\div|Add27~33\)) # (!\div|a\(13) & ((\div|Add27~33\) # (GND))))) # (!\div|ShiftLeft2~48_combout\ & ((\div|a\(13) & (\div|Add27~33\ & VCC)) # (!\div|a\(13) & (!\div|Add27~33\))))
-- \div|Add27~35\ = CARRY((\div|ShiftLeft2~48_combout\ & ((!\div|Add27~33\) # (!\div|a\(13)))) # (!\div|ShiftLeft2~48_combout\ & (!\div|a\(13) & !\div|Add27~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft2~48_combout\,
	datab => \div|a\(13),
	datad => VCC,
	cin => \div|Add27~33\,
	combout => \div|Add27~34_combout\,
	cout => \div|Add27~35\);

-- Location: LCCOMB_X38_Y59_N12
\div|Add27~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add27~42_combout\ = (\div|curr_state.l00p~q\ & (((\div|Add27~34_combout\)))) # (!\div|curr_state.l00p~q\ & (!\div|curr_state.b_eq_1~q\ & (\div|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|curr_state.b_eq_1~q\,
	datab => \div|curr_state.l00p~q\,
	datac => \div|Add0~26_combout\,
	datad => \div|Add27~34_combout\,
	combout => \div|Add27~42_combout\);

-- Location: LCCOMB_X38_Y59_N6
\div|a_next[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|a_next\(13) = (GLOBAL(\div|curr_state~7clkctrl_outclk\) & (\div|a_next\(13))) # (!GLOBAL(\div|curr_state~7clkctrl_outclk\) & ((\div|Add27~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|a_next\(13),
	datac => \div|curr_state~7clkctrl_outclk\,
	datad => \div|Add27~42_combout\,
	combout => \div|a_next\(13));

-- Location: LCCOMB_X38_Y59_N22
\div|a~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|a~11_combout\ = (\start~input_o\ & (\div|Add0~26_combout\)) # (!\start~input_o\ & ((\div|a_next\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datac => \div|Add0~26_combout\,
	datad => \div|a_next\(13),
	combout => \div|a~11_combout\);

-- Location: FF_X38_Y59_N23
\div|a[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|a~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|a\(13));

-- Location: LCCOMB_X40_Y59_N16
\div|get_msb_pos~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|get_msb_pos~6_combout\ = (!\div|a\(4) & (!\div|a\(3) & ((\div|a\(1)) # (\div|a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(4),
	datab => \div|a\(1),
	datac => \div|a\(2),
	datad => \div|a\(3),
	combout => \div|get_msb_pos~6_combout\);

-- Location: LCCOMB_X39_Y56_N10
\div|get_msb_pos~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|get_msb_pos~3_combout\ = (!\div|a\(8) & ((\div|a\(6)) # ((\div|a\(5)) # (\div|get_msb_pos~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(6),
	datab => \div|a\(5),
	datac => \div|a\(8),
	datad => \div|get_msb_pos~6_combout\,
	combout => \div|get_msb_pos~3_combout\);

-- Location: LCCOMB_X39_Y56_N24
\div|get_msb_pos~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|get_msb_pos~41_combout\ = (\div|a\(10)) # ((\div|a\(9)) # ((!\div|a\(7) & \div|get_msb_pos~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(10),
	datab => \div|a\(7),
	datac => \div|a\(9),
	datad => \div|get_msb_pos~3_combout\,
	combout => \div|get_msb_pos~41_combout\);

-- Location: LCCOMB_X39_Y56_N2
\div|get_msb_pos~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|get_msb_pos~39_combout\ = (\div|a\(12)) # ((\div|a\(11)) # (!\div|get_msb_pos~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|a\(12),
	datac => \div|a\(11),
	datad => \div|get_msb_pos~41_combout\,
	combout => \div|get_msb_pos~39_combout\);

-- Location: LCCOMB_X39_Y56_N0
\div|get_msb_pos~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|get_msb_pos~40_combout\ = (!\div|a\(15) & ((\div|a\(14)) # ((\div|a\(13)) # (!\div|get_msb_pos~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(14),
	datab => \div|a\(15),
	datac => \div|a\(13),
	datad => \div|get_msb_pos~39_combout\,
	combout => \div|get_msb_pos~40_combout\);

-- Location: LCCOMB_X34_Y56_N0
\div|p~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|p~1_combout\ = (\div|LessThan44~30_combout\ & ((\div|Add25~2_combout\))) # (!\div|LessThan44~30_combout\ & (\div|Add24~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add24~2_combout\,
	datab => \div|Add25~2_combout\,
	datac => \div|LessThan44~30_combout\,
	combout => \div|p~1_combout\);

-- Location: LCCOMB_X35_Y58_N4
\div|ShiftLeft2~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~55_combout\ = (\div|p~1_combout\ & (\div|b\(7) & (\div|ShiftLeft2~13_combout\ & \div|p~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|p~1_combout\,
	datab => \div|b\(7),
	datac => \div|ShiftLeft2~13_combout\,
	datad => \div|p~0_combout\,
	combout => \div|ShiftLeft2~55_combout\);

-- Location: LCCOMB_X35_Y58_N6
\div|ShiftLeft2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~54_combout\ = (\div|ShiftLeft2~15_combout\ & ((\div|ShiftLeft2~35_combout\) # ((\div|p~0_combout\ & \div|ShiftLeft2~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft2~15_combout\,
	datab => \div|p~0_combout\,
	datac => \div|ShiftLeft2~35_combout\,
	datad => \div|ShiftLeft2~36_combout\,
	combout => \div|ShiftLeft2~54_combout\);

-- Location: LCCOMB_X35_Y58_N14
\div|ShiftLeft2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~56_combout\ = (\div|ShiftLeft2~55_combout\) # ((\div|ShiftLeft2~54_combout\) # ((\div|ShiftLeft2~16_combout\ & \div|ShiftLeft2~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft2~16_combout\,
	datab => \div|ShiftLeft2~55_combout\,
	datac => \div|ShiftLeft2~34_combout\,
	datad => \div|ShiftLeft2~54_combout\,
	combout => \div|ShiftLeft2~56_combout\);

-- Location: LCCOMB_X36_Y59_N12
\div|Add27~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add27~45_combout\ = (\div|curr_state.l00p~q\ & (((\div|Add27~28_combout\)))) # (!\div|curr_state.l00p~q\ & (!\div|curr_state.b_eq_1~q\ & (\div|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|curr_state.b_eq_1~q\,
	datab => \div|Add0~20_combout\,
	datac => \div|curr_state.l00p~q\,
	datad => \div|Add27~28_combout\,
	combout => \div|Add27~45_combout\);

-- Location: LCCOMB_X36_Y59_N16
\div|a_next[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|a_next\(10) = (GLOBAL(\div|curr_state~7clkctrl_outclk\) & (\div|a_next\(10))) # (!GLOBAL(\div|curr_state~7clkctrl_outclk\) & ((\div|Add27~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|a_next\(10),
	datac => \div|curr_state~7clkctrl_outclk\,
	datad => \div|Add27~45_combout\,
	combout => \div|a_next\(10));

-- Location: LCCOMB_X39_Y59_N6
\div|a~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|a~14_combout\ = (\start~input_o\ & (\div|Add0~20_combout\)) # (!\start~input_o\ & ((\div|a_next\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add0~20_combout\,
	datac => \start~input_o\,
	datad => \div|a_next\(10),
	combout => \div|a~14_combout\);

-- Location: FF_X39_Y59_N7
\div|a[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|a~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|a\(10));

-- Location: LCCOMB_X39_Y59_N10
\div|LessThan45~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|LessThan45~18_combout\ = (!\div|a\(10) & (!\div|a\(9) & (!\div|a\(8) & \div|get_msb_pos~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(10),
	datab => \div|a\(9),
	datac => \div|a\(8),
	datad => \div|get_msb_pos~22_combout\,
	combout => \div|LessThan45~18_combout\);

-- Location: LCCOMB_X39_Y60_N30
\div|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Selector2~0_combout\ = (\div|curr_state.l00p~q\ & ((\div|Equal2~2_combout\) # ((!\div|a\(15) & \div|LessThan45~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(15),
	datab => \div|curr_state.l00p~q\,
	datac => \div|LessThan45~18_combout\,
	datad => \div|Equal2~2_combout\,
	combout => \div|Selector2~0_combout\);

-- Location: LCCOMB_X39_Y60_N10
\div|LessThan45~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|LessThan45~3_cout\ = CARRY((\div|a\(0) & !\div|b\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(0),
	datab => \div|b\(0),
	datad => VCC,
	cout => \div|LessThan45~3_cout\);

-- Location: LCCOMB_X39_Y60_N12
\div|LessThan45~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|LessThan45~5_cout\ = CARRY((\div|b\(1) & ((!\div|LessThan45~3_cout\) # (!\div|a\(1)))) # (!\div|b\(1) & (!\div|a\(1) & !\div|LessThan45~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|b\(1),
	datab => \div|a\(1),
	datad => VCC,
	cin => \div|LessThan45~3_cout\,
	cout => \div|LessThan45~5_cout\);

-- Location: LCCOMB_X39_Y60_N14
\div|LessThan45~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|LessThan45~7_cout\ = CARRY((\div|a\(2) & ((!\div|LessThan45~5_cout\) # (!\div|b\(2)))) # (!\div|a\(2) & (!\div|b\(2) & !\div|LessThan45~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(2),
	datab => \div|b\(2),
	datad => VCC,
	cin => \div|LessThan45~5_cout\,
	cout => \div|LessThan45~7_cout\);

-- Location: LCCOMB_X39_Y60_N16
\div|LessThan45~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|LessThan45~9_cout\ = CARRY((\div|b\(3) & ((!\div|LessThan45~7_cout\) # (!\div|a\(3)))) # (!\div|b\(3) & (!\div|a\(3) & !\div|LessThan45~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|b\(3),
	datab => \div|a\(3),
	datad => VCC,
	cin => \div|LessThan45~7_cout\,
	cout => \div|LessThan45~9_cout\);

-- Location: LCCOMB_X39_Y60_N18
\div|LessThan45~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|LessThan45~11_cout\ = CARRY((\div|a\(4) & ((!\div|LessThan45~9_cout\) # (!\div|b\(4)))) # (!\div|a\(4) & (!\div|b\(4) & !\div|LessThan45~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(4),
	datab => \div|b\(4),
	datad => VCC,
	cin => \div|LessThan45~9_cout\,
	cout => \div|LessThan45~11_cout\);

-- Location: LCCOMB_X39_Y60_N20
\div|LessThan45~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|LessThan45~13_cout\ = CARRY((\div|b\(5) & ((!\div|LessThan45~11_cout\) # (!\div|a\(5)))) # (!\div|b\(5) & (!\div|a\(5) & !\div|LessThan45~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|b\(5),
	datab => \div|a\(5),
	datad => VCC,
	cin => \div|LessThan45~11_cout\,
	cout => \div|LessThan45~13_cout\);

-- Location: LCCOMB_X39_Y60_N22
\div|LessThan45~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|LessThan45~15_cout\ = CARRY((\div|a\(6) & ((!\div|LessThan45~13_cout\) # (!\div|b\(6)))) # (!\div|a\(6) & (!\div|b\(6) & !\div|LessThan45~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(6),
	datab => \div|b\(6),
	datad => VCC,
	cin => \div|LessThan45~13_cout\,
	cout => \div|LessThan45~15_cout\);

-- Location: LCCOMB_X39_Y60_N24
\div|LessThan45~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|LessThan45~16_combout\ = (\div|a\(7) & ((\div|LessThan45~15_cout\) # (!\div|b\(7)))) # (!\div|a\(7) & (\div|LessThan45~15_cout\ & !\div|b\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(7),
	datad => \div|b\(7),
	cin => \div|LessThan45~15_cout\,
	combout => \div|LessThan45~16_combout\);

-- Location: LCCOMB_X39_Y60_N28
\div|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Selector2~1_combout\ = (\div|curr_state.b_eq_1~q\) # ((\div|Selector2~0_combout\ & ((\div|Equal2~2_combout\) # (!\div|LessThan45~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|curr_state.b_eq_1~q\,
	datab => \div|Equal2~2_combout\,
	datac => \div|Selector2~0_combout\,
	datad => \div|LessThan45~16_combout\,
	combout => \div|Selector2~1_combout\);

-- Location: FF_X39_Y60_N29
\div|curr_state.epistemology\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|Selector2~1_combout\,
	sclr => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|curr_state.epistemology~q\);

-- Location: LCCOMB_X40_Y60_N24
\div|curr_state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|curr_state~9_combout\ = (\start~input_o\) # ((!\div|curr_state.epistemology~q\ & \div|curr_state.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \div|curr_state.epistemology~q\,
	datac => \div|curr_state.idle~q\,
	combout => \div|curr_state~9_combout\);

-- Location: FF_X40_Y60_N27
\div|curr_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \div|curr_state~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|curr_state.idle~q\);

-- Location: LCCOMB_X40_Y60_N0
\div|curr_state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|curr_state~7_combout\ = (\div|curr_state.epistemology~q\) # (!\div|curr_state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div|curr_state.idle~q\,
	datad => \div|curr_state.epistemology~q\,
	combout => \div|curr_state~7_combout\);

-- Location: CLKCTRL_G11
\div|curr_state~7clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \div|curr_state~7clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \div|curr_state~7clkctrl_outclk\);

-- Location: LCCOMB_X34_Y58_N20
\div|ShiftLeft2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~17_combout\ = (\div|p~2_combout\ & (\div|p~3_combout\ & !\div|ShiftLeft2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|p~2_combout\,
	datac => \div|p~3_combout\,
	datad => \div|ShiftLeft2~14_combout\,
	combout => \div|ShiftLeft2~17_combout\);

-- Location: LCCOMB_X34_Y58_N6
\div|ShiftLeft2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~44_combout\ = (\div|ShiftLeft2~17_combout\ & ((\div|ShiftLeft2~22_combout\) # ((\div|b\(1) & \div|ShiftLeft1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|b\(1),
	datab => \div|ShiftLeft2~17_combout\,
	datac => \div|ShiftLeft2~22_combout\,
	datad => \div|ShiftLeft1~22_combout\,
	combout => \div|ShiftLeft2~44_combout\);

-- Location: LCCOMB_X35_Y58_N18
\div|ShiftLeft2~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~45_combout\ = (\div|p~0_combout\ & (\div|b\(7) & (\div|ShiftLeft2~15_combout\ & \div|p~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|p~0_combout\,
	datab => \div|b\(7),
	datac => \div|ShiftLeft2~15_combout\,
	datad => \div|p~1_combout\,
	combout => \div|ShiftLeft2~45_combout\);

-- Location: LCCOMB_X35_Y58_N8
\div|ShiftLeft2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~46_combout\ = (\div|ShiftLeft2~44_combout\) # ((\div|ShiftLeft2~45_combout\) # ((\div|ShiftLeft2~16_combout\ & \div|ShiftLeft2~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft2~16_combout\,
	datab => \div|ShiftLeft2~37_combout\,
	datac => \div|ShiftLeft2~44_combout\,
	datad => \div|ShiftLeft2~45_combout\,
	combout => \div|ShiftLeft2~46_combout\);

-- Location: LCCOMB_X35_Y59_N28
\div|Add27~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add27~36_combout\ = ((\div|a\(14) $ (\div|ShiftLeft2~46_combout\ $ (\div|Add27~35\)))) # (GND)
-- \div|Add27~37\ = CARRY((\div|a\(14) & ((!\div|Add27~35\) # (!\div|ShiftLeft2~46_combout\))) # (!\div|a\(14) & (!\div|ShiftLeft2~46_combout\ & !\div|Add27~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(14),
	datab => \div|ShiftLeft2~46_combout\,
	datad => VCC,
	cin => \div|Add27~35\,
	combout => \div|Add27~36_combout\,
	cout => \div|Add27~37\);

-- Location: LCCOMB_X38_Y59_N10
\div|Add27~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add27~41_combout\ = (\div|curr_state.l00p~q\ & (((\div|Add27~36_combout\)))) # (!\div|curr_state.l00p~q\ & (!\div|curr_state.b_eq_1~q\ & (\div|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|curr_state.b_eq_1~q\,
	datab => \div|Add0~28_combout\,
	datac => \div|curr_state.l00p~q\,
	datad => \div|Add27~36_combout\,
	combout => \div|Add27~41_combout\);

-- Location: LCCOMB_X38_Y59_N20
\div|a_next[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|a_next\(14) = (GLOBAL(\div|curr_state~7clkctrl_outclk\) & (\div|a_next\(14))) # (!GLOBAL(\div|curr_state~7clkctrl_outclk\) & ((\div|Add27~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|a_next\(14),
	datac => \div|curr_state~7clkctrl_outclk\,
	datad => \div|Add27~41_combout\,
	combout => \div|a_next\(14));

-- Location: LCCOMB_X38_Y59_N0
\div|a~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|a~10_combout\ = (\start~input_o\ & (\div|Add0~28_combout\)) # (!\start~input_o\ & ((\div|a_next\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datac => \div|Add0~28_combout\,
	datad => \div|a_next\(14),
	combout => \div|a~10_combout\);

-- Location: FF_X38_Y59_N1
\div|a[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|a~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|a\(14));

-- Location: LCCOMB_X39_Y59_N24
\div|get_msb_pos~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|get_msb_pos~22_combout\ = (!\div|a\(14) & (!\div|a\(12) & (!\div|a\(11) & !\div|a\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(14),
	datab => \div|a\(12),
	datac => \div|a\(11),
	datad => \div|a\(13),
	combout => \div|get_msb_pos~22_combout\);

-- Location: LCCOMB_X39_Y59_N30
\div|get_msb_pos~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|get_msb_pos~34_combout\ = (!\div|a\(8) & (!\div|a\(9) & (!\div|a\(7) & !\div|a\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(8),
	datab => \div|a\(9),
	datac => \div|a\(7),
	datad => \div|a\(10),
	combout => \div|get_msb_pos~34_combout\);

-- Location: LCCOMB_X39_Y59_N0
\div|get_msb_pos~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|get_msb_pos~33_combout\ = (\div|a\(5)) # ((\div|a\(6)) # ((\div|a\(4)) # (\div|a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(5),
	datab => \div|a\(6),
	datac => \div|a\(4),
	datad => \div|a\(3),
	combout => \div|get_msb_pos~33_combout\);

-- Location: LCCOMB_X39_Y59_N12
\div|get_msb_pos~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|get_msb_pos~35_combout\ = (!\div|a\(15) & (((\div|get_msb_pos~34_combout\ & \div|get_msb_pos~33_combout\)) # (!\div|get_msb_pos~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(15),
	datab => \div|get_msb_pos~22_combout\,
	datac => \div|get_msb_pos~34_combout\,
	datad => \div|get_msb_pos~33_combout\,
	combout => \div|get_msb_pos~35_combout\);

-- Location: LCCOMB_X39_Y56_N18
\div|Add24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add24~6_combout\ = (\div|get_msb_pos~32_combout\ & ((\div|b\(7) & (!\div|Add24~5\)) # (!\div|b\(7) & (\div|Add24~5\ & VCC)))) # (!\div|get_msb_pos~32_combout\ & ((\div|b\(7) & ((\div|Add24~5\) # (GND))) # (!\div|b\(7) & (!\div|Add24~5\))))
-- \div|Add24~7\ = CARRY((\div|get_msb_pos~32_combout\ & (\div|b\(7) & !\div|Add24~5\)) # (!\div|get_msb_pos~32_combout\ & ((\div|b\(7)) # (!\div|Add24~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|get_msb_pos~32_combout\,
	datab => \div|b\(7),
	datad => VCC,
	cin => \div|Add24~5\,
	combout => \div|Add24~6_combout\,
	cout => \div|Add24~7\);

-- Location: LCCOMB_X39_Y56_N22
\div|Add24~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add24~10_combout\ = !\div|Add24~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \div|Add24~9\,
	combout => \div|Add24~10_combout\);

-- Location: LCCOMB_X40_Y56_N18
\div|ShiftLeft2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~11_combout\ = (!\div|Add24~6_combout\ & (!\div|Add24~10_combout\ & (!\div|Add24~4_combout\ & !\div|Add24~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add24~6_combout\,
	datab => \div|Add24~10_combout\,
	datac => \div|Add24~4_combout\,
	datad => \div|Add24~8_combout\,
	combout => \div|ShiftLeft2~11_combout\);

-- Location: LCCOMB_X38_Y58_N28
\div|ShiftLeft2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~12_combout\ = (!\div|Add25~6_combout\ & !\div|Add25~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div|Add25~6_combout\,
	datad => \div|Add25~4_combout\,
	combout => \div|ShiftLeft2~12_combout\);

-- Location: LCCOMB_X34_Y57_N0
\div|ShiftLeft2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~13_combout\ = (\div|LessThan44~30_combout\ & (((\div|ShiftLeft2~12_combout\ & !\div|ShiftLeft2~10_combout\)))) # (!\div|LessThan44~30_combout\ & (\div|ShiftLeft2~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft2~11_combout\,
	datab => \div|ShiftLeft2~12_combout\,
	datac => \div|ShiftLeft2~10_combout\,
	datad => \div|LessThan44~30_combout\,
	combout => \div|ShiftLeft2~13_combout\);

-- Location: LCCOMB_X34_Y59_N28
\div|ShiftLeft2~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~33_combout\ = (\div|ShiftLeft2~13_combout\ & ((\div|ShiftLeft2~32_combout\) # ((\div|ShiftLeft2~29_combout\ & \div|ShiftLeft2~15_combout\)))) # (!\div|ShiftLeft2~13_combout\ & (\div|ShiftLeft2~29_combout\ & 
-- ((\div|ShiftLeft2~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft2~13_combout\,
	datab => \div|ShiftLeft2~29_combout\,
	datac => \div|ShiftLeft2~32_combout\,
	datad => \div|ShiftLeft2~15_combout\,
	combout => \div|ShiftLeft2~33_combout\);

-- Location: LCCOMB_X36_Y59_N4
\div|Add27~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add27~21_combout\ = (\div|curr_state.l00p~q\ & (((\div|Add27~19_combout\)))) # (!\div|curr_state.l00p~q\ & (!\div|curr_state.b_eq_1~q\ & (\div|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|curr_state.b_eq_1~q\,
	datab => \div|Add0~14_combout\,
	datac => \div|curr_state.l00p~q\,
	datad => \div|Add27~19_combout\,
	combout => \div|Add27~21_combout\);

-- Location: LCCOMB_X36_Y59_N24
\div|a_next[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|a_next\(7) = (GLOBAL(\div|curr_state~7clkctrl_outclk\) & (\div|a_next\(7))) # (!GLOBAL(\div|curr_state~7clkctrl_outclk\) & ((\div|Add27~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|a_next\(7),
	datac => \div|Add27~21_combout\,
	datad => \div|curr_state~7clkctrl_outclk\,
	combout => \div|a_next\(7));

-- Location: LCCOMB_X39_Y59_N8
\div|a~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|a~6_combout\ = (\start~input_o\ & (\div|Add0~14_combout\)) # (!\start~input_o\ & ((\div|a_next\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add0~14_combout\,
	datac => \start~input_o\,
	datad => \div|a_next\(7),
	combout => \div|a~6_combout\);

-- Location: FF_X39_Y59_N9
\div|a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|a~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|a\(7));

-- Location: LCCOMB_X39_Y59_N14
\div|get_msb_pos~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|get_msb_pos~32_combout\ = (!\div|a\(15) & ((\div|a\(7)) # (!\div|LessThan45~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|a\(7),
	datac => \div|a\(15),
	datad => \div|LessThan45~18_combout\,
	combout => \div|get_msb_pos~32_combout\);

-- Location: LCCOMB_X34_Y58_N22
\div|p~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|p~2_combout\ = (\div|LessThan44~30_combout\ & ((\div|Add25~6_combout\))) # (!\div|LessThan44~30_combout\ & (\div|Add24~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|Add24~6_combout\,
	datac => \div|LessThan44~30_combout\,
	datad => \div|Add25~6_combout\,
	combout => \div|p~2_combout\);

-- Location: LCCOMB_X34_Y58_N14
\div|ShiftLeft2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~16_combout\ = (\div|p~2_combout\ & (!\div|p~3_combout\ & !\div|ShiftLeft2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|p~2_combout\,
	datac => \div|p~3_combout\,
	datad => \div|ShiftLeft2~14_combout\,
	combout => \div|ShiftLeft2~16_combout\);

-- Location: LCCOMB_X34_Y59_N10
\div|ShiftLeft2~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft2~43_combout\ = (\div|ShiftLeft2~16_combout\ & ((\div|ShiftLeft2~32_combout\) # ((\div|ShiftLeft2~29_combout\ & \div|ShiftLeft2~17_combout\)))) # (!\div|ShiftLeft2~16_combout\ & (\div|ShiftLeft2~29_combout\ & 
-- ((\div|ShiftLeft2~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft2~16_combout\,
	datab => \div|ShiftLeft2~29_combout\,
	datac => \div|ShiftLeft2~32_combout\,
	datad => \div|ShiftLeft2~17_combout\,
	combout => \div|ShiftLeft2~43_combout\);

-- Location: LCCOMB_X35_Y59_N30
\div|Add27~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add27~38_combout\ = \div|a\(15) $ (\div|Add27~37\ $ (!\div|ShiftLeft2~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(15),
	datad => \div|ShiftLeft2~43_combout\,
	cin => \div|Add27~37\,
	combout => \div|Add27~38_combout\);

-- Location: LCCOMB_X36_Y59_N14
\div|Add27~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add27~40_combout\ = (\div|curr_state.l00p~q\ & (((\div|Add27~38_combout\)))) # (!\div|curr_state.l00p~q\ & (!\div|curr_state.b_eq_1~q\ & (\div|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|curr_state.b_eq_1~q\,
	datab => \div|Add0~30_combout\,
	datac => \div|curr_state.l00p~q\,
	datad => \div|Add27~38_combout\,
	combout => \div|Add27~40_combout\);

-- Location: LCCOMB_X36_Y59_N10
\div|a_next[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|a_next\(15) = (GLOBAL(\div|curr_state~7clkctrl_outclk\) & (\div|a_next\(15))) # (!GLOBAL(\div|curr_state~7clkctrl_outclk\) & ((\div|Add27~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|a_next\(15),
	datac => \div|Add27~40_combout\,
	datad => \div|curr_state~7clkctrl_outclk\,
	combout => \div|a_next\(15));

-- Location: LCCOMB_X39_Y59_N26
\div|a~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|a~9_combout\ = (\start~input_o\ & (\div|Add0~30_combout\)) # (!\start~input_o\ & ((\div|a_next\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|Add0~30_combout\,
	datac => \start~input_o\,
	datad => \div|a_next\(15),
	combout => \div|a~9_combout\);

-- Location: FF_X39_Y59_N27
\div|a[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|a~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|a\(15));

-- Location: LCCOMB_X39_Y60_N6
\div|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Selector1~0_combout\ = (!\div|Equal2~2_combout\ & ((\div|a\(15)) # ((\div|LessThan45~16_combout\) # (!\div|LessThan45~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(15),
	datab => \div|Equal2~2_combout\,
	datac => \div|LessThan45~18_combout\,
	datad => \div|LessThan45~16_combout\,
	combout => \div|Selector1~0_combout\);

-- Location: LCCOMB_X39_Y60_N8
\div|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Selector1~1_combout\ = (\div|curr_state.init~q\ & (((\div|curr_state.l00p~q\ & \div|Selector1~0_combout\)) # (!\div|Equal1~1_combout\))) # (!\div|curr_state.init~q\ & (((\div|curr_state.l00p~q\ & \div|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|curr_state.init~q\,
	datab => \div|Equal1~1_combout\,
	datac => \div|curr_state.l00p~q\,
	datad => \div|Selector1~0_combout\,
	combout => \div|Selector1~1_combout\);

-- Location: FF_X39_Y60_N9
\div|curr_state.l00p\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|Selector1~1_combout\,
	sclr => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|curr_state.l00p~q\);

-- Location: LCCOMB_X34_Y57_N22
\div|ShiftLeft1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft1~11_combout\ = (!\div|p~1_combout\ & (\div|p~0_combout\ & \div|ShiftLeft2~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|p~1_combout\,
	datac => \div|p~0_combout\,
	datad => \div|ShiftLeft2~13_combout\,
	combout => \div|ShiftLeft1~11_combout\);

-- Location: LCCOMB_X34_Y57_N18
\div|ShiftLeft1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft1~8_combout\ = (\div|p~1_combout\) # ((\div|p~0_combout\) # (!\div|ShiftLeft2~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|p~1_combout\,
	datac => \div|p~0_combout\,
	datad => \div|ShiftLeft2~13_combout\,
	combout => \div|ShiftLeft1~8_combout\);

-- Location: LCCOMB_X34_Y61_N0
\div|Add26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add26~0_combout\ = (\div|q\(0) & (\div|ShiftLeft1~8_combout\ $ (GND))) # (!\div|q\(0) & (!\div|ShiftLeft1~8_combout\ & VCC))
-- \div|Add26~1\ = CARRY((\div|q\(0) & !\div|ShiftLeft1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|q\(0),
	datab => \div|ShiftLeft1~8_combout\,
	datad => VCC,
	combout => \div|Add26~0_combout\,
	cout => \div|Add26~1\);

-- Location: LCCOMB_X33_Y59_N30
\div|Add26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add26~2_combout\ = (\div|curr_state.l00p~q\ & (((\div|Add26~0_combout\)))) # (!\div|curr_state.l00p~q\ & (\div|curr_state.b_eq_1~q\ & (\dividend[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|curr_state.l00p~q\,
	datab => \div|curr_state.b_eq_1~q\,
	datac => \dividend[0]~input_o\,
	datad => \div|Add26~0_combout\,
	combout => \div|Add26~2_combout\);

-- Location: LCCOMB_X33_Y59_N10
\div|q_next[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|q_next\(0) = (GLOBAL(\div|curr_state~7clkctrl_outclk\) & (\div|q_next\(0))) # (!GLOBAL(\div|curr_state~7clkctrl_outclk\) & ((\div|Add26~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|q_next\(0),
	datac => \div|Add26~2_combout\,
	datad => \div|curr_state~7clkctrl_outclk\,
	combout => \div|q_next\(0));

-- Location: LCCOMB_X33_Y59_N16
\div|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|q~0_combout\ = (!\start~input_o\ & \div|q_next\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \start~input_o\,
	datad => \div|q_next\(0),
	combout => \div|q~0_combout\);

-- Location: FF_X33_Y59_N17
\div|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q\(0));

-- Location: LCCOMB_X34_Y61_N2
\div|Add26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add26~3_combout\ = (\div|q\(1) & ((\div|ShiftLeft1~11_combout\ & (\div|Add26~1\ & VCC)) # (!\div|ShiftLeft1~11_combout\ & (!\div|Add26~1\)))) # (!\div|q\(1) & ((\div|ShiftLeft1~11_combout\ & (!\div|Add26~1\)) # (!\div|ShiftLeft1~11_combout\ & 
-- ((\div|Add26~1\) # (GND)))))
-- \div|Add26~4\ = CARRY((\div|q\(1) & (!\div|ShiftLeft1~11_combout\ & !\div|Add26~1\)) # (!\div|q\(1) & ((!\div|Add26~1\) # (!\div|ShiftLeft1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|q\(1),
	datab => \div|ShiftLeft1~11_combout\,
	datad => VCC,
	cin => \div|Add26~1\,
	combout => \div|Add26~3_combout\,
	cout => \div|Add26~4\);

-- Location: LCCOMB_X32_Y61_N30
\div|Add26~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add26~11_combout\ = (\div|curr_state.l00p~q\ & (((\div|Add26~3_combout\)))) # (!\div|curr_state.l00p~q\ & (\div|curr_state.b_eq_1~q\ & ((\dividend[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|curr_state.b_eq_1~q\,
	datab => \div|curr_state.l00p~q\,
	datac => \div|Add26~3_combout\,
	datad => \dividend[1]~input_o\,
	combout => \div|Add26~11_combout\);

-- Location: LCCOMB_X32_Y61_N6
\div|q_next[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|q_next\(1) = (GLOBAL(\div|curr_state~7clkctrl_outclk\) & (\div|q_next\(1))) # (!GLOBAL(\div|curr_state~7clkctrl_outclk\) & ((\div|Add26~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|q_next\(1),
	datac => \div|Add26~11_combout\,
	datad => \div|curr_state~7clkctrl_outclk\,
	combout => \div|q_next\(1));

-- Location: LCCOMB_X32_Y61_N22
\div|q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|q~3_combout\ = (!\start~input_o\ & \div|q_next\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datad => \div|q_next\(1),
	combout => \div|q~3_combout\);

-- Location: FF_X32_Y61_N23
\div|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|q~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q\(1));

-- Location: LCCOMB_X33_Y59_N28
\div|internal_sign~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|internal_sign~0_combout\ = \divisor[7]~input_o\ $ (\dividend[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor[7]~input_o\,
	datad => \dividend[15]~input_o\,
	combout => \div|internal_sign~0_combout\);

-- Location: LCCOMB_X33_Y59_N6
\div|Add28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add28~0_combout\ = \dividend[15]~input_o\ $ (\divisor[7]~input_o\ $ (\div|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dividend[15]~input_o\,
	datac => \divisor[7]~input_o\,
	datad => \div|q\(0),
	combout => \div|Add28~0_combout\);

-- Location: LCCOMB_X32_Y59_N0
\div|Add28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add28~1_combout\ = (\div|Add28~0_combout\ & (\div|internal_sign~0_combout\ $ (VCC))) # (!\div|Add28~0_combout\ & (\div|internal_sign~0_combout\ & VCC))
-- \div|Add28~2\ = CARRY((\div|Add28~0_combout\ & \div|internal_sign~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add28~0_combout\,
	datab => \div|internal_sign~0_combout\,
	datad => VCC,
	combout => \div|Add28~1_combout\,
	cout => \div|Add28~2\);

-- Location: LCCOMB_X32_Y59_N2
\div|Add28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add28~3_combout\ = (\div|Add28~2\ & (\div|q\(1) $ ((!\div|internal_sign~0_combout\)))) # (!\div|Add28~2\ & ((\div|q\(1) $ (\div|internal_sign~0_combout\)) # (GND)))
-- \div|Add28~4\ = CARRY((\div|q\(1) $ (!\div|internal_sign~0_combout\)) # (!\div|Add28~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|q\(1),
	datab => \div|internal_sign~0_combout\,
	datad => VCC,
	cin => \div|Add28~2\,
	combout => \div|Add28~3_combout\,
	cout => \div|Add28~4\);

-- Location: CLKCTRL_G13
\div|curr_state.epistemology~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \div|curr_state.epistemology~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \div|curr_state.epistemology~clkctrl_outclk\);

-- Location: LCCOMB_X31_Y59_N30
\div|quotient[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|quotient\(1) = (GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & (\div|Add28~3_combout\)) # (!GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & ((\div|quotient\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add28~3_combout\,
	datac => \div|quotient\(1),
	datad => \div|curr_state.epistemology~clkctrl_outclk\,
	combout => \div|quotient\(1));

-- Location: LCCOMB_X34_Y57_N16
\div|ShiftLeft1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft1~10_combout\ = ((\div|p~0_combout\) # (!\div|ShiftLeft2~13_combout\)) # (!\div|p~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|p~1_combout\,
	datac => \div|p~0_combout\,
	datad => \div|ShiftLeft2~13_combout\,
	combout => \div|ShiftLeft1~10_combout\);

-- Location: LCCOMB_X34_Y61_N4
\div|Add26~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add26~5_combout\ = ((\div|ShiftLeft1~10_combout\ $ (\div|q\(2) $ (\div|Add26~4\)))) # (GND)
-- \div|Add26~6\ = CARRY((\div|ShiftLeft1~10_combout\ & (\div|q\(2) & !\div|Add26~4\)) # (!\div|ShiftLeft1~10_combout\ & ((\div|q\(2)) # (!\div|Add26~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft1~10_combout\,
	datab => \div|q\(2),
	datad => VCC,
	cin => \div|Add26~4\,
	combout => \div|Add26~5_combout\,
	cout => \div|Add26~6\);

-- Location: LCCOMB_X32_Y61_N8
\div|Add26~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add26~10_combout\ = (\div|curr_state.l00p~q\ & (((\div|Add26~5_combout\)))) # (!\div|curr_state.l00p~q\ & (\div|curr_state.b_eq_1~q\ & (\dividend[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|curr_state.b_eq_1~q\,
	datab => \div|curr_state.l00p~q\,
	datac => \dividend[2]~input_o\,
	datad => \div|Add26~5_combout\,
	combout => \div|Add26~10_combout\);

-- Location: LCCOMB_X32_Y61_N16
\div|q_next[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|q_next\(2) = (GLOBAL(\div|curr_state~7clkctrl_outclk\) & (\div|q_next\(2))) # (!GLOBAL(\div|curr_state~7clkctrl_outclk\) & ((\div|Add26~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|q_next\(2),
	datac => \div|Add26~10_combout\,
	datad => \div|curr_state~7clkctrl_outclk\,
	combout => \div|q_next\(2));

-- Location: LCCOMB_X32_Y61_N4
\div|q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|q~2_combout\ = (!\start~input_o\ & \div|q_next\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datad => \div|q_next\(2),
	combout => \div|q~2_combout\);

-- Location: FF_X32_Y61_N5
\div|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|q~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q\(2));

-- Location: LCCOMB_X32_Y59_N4
\div|Add28~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add28~5_combout\ = (\div|Add28~4\ & ((\div|internal_sign~0_combout\ $ (\div|q\(2))))) # (!\div|Add28~4\ & (\div|internal_sign~0_combout\ $ (\div|q\(2) $ (VCC))))
-- \div|Add28~6\ = CARRY((!\div|Add28~4\ & (\div|internal_sign~0_combout\ $ (\div|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|internal_sign~0_combout\,
	datab => \div|q\(2),
	datad => VCC,
	cin => \div|Add28~4\,
	combout => \div|Add28~5_combout\,
	cout => \div|Add28~6\);

-- Location: LCCOMB_X31_Y59_N24
\div|quotient[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|quotient\(2) = (GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & (\div|Add28~5_combout\)) # (!GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & ((\div|quotient\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add28~5_combout\,
	datab => \div|quotient\(2),
	datad => \div|curr_state.epistemology~clkctrl_outclk\,
	combout => \div|quotient\(2));

-- Location: LCCOMB_X35_Y61_N22
\div|ShiftLeft1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft1~9_combout\ = (\div|p~0_combout\ & (\div|p~1_combout\ & (\div|ShiftLeft2~61_combout\ & !\div|p~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|p~0_combout\,
	datab => \div|p~1_combout\,
	datac => \div|ShiftLeft2~61_combout\,
	datad => \div|p~3_combout\,
	combout => \div|ShiftLeft1~9_combout\);

-- Location: LCCOMB_X34_Y61_N6
\div|Add26~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add26~7_combout\ = (\div|q\(3) & ((\div|ShiftLeft1~9_combout\ & (\div|Add26~6\ & VCC)) # (!\div|ShiftLeft1~9_combout\ & (!\div|Add26~6\)))) # (!\div|q\(3) & ((\div|ShiftLeft1~9_combout\ & (!\div|Add26~6\)) # (!\div|ShiftLeft1~9_combout\ & 
-- ((\div|Add26~6\) # (GND)))))
-- \div|Add26~8\ = CARRY((\div|q\(3) & (!\div|ShiftLeft1~9_combout\ & !\div|Add26~6\)) # (!\div|q\(3) & ((!\div|Add26~6\) # (!\div|ShiftLeft1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|q\(3),
	datab => \div|ShiftLeft1~9_combout\,
	datad => VCC,
	cin => \div|Add26~6\,
	combout => \div|Add26~7_combout\,
	cout => \div|Add26~8\);

-- Location: LCCOMB_X33_Y61_N4
\div|Add26~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add26~9_combout\ = (\div|curr_state.l00p~q\ & (((\div|Add26~7_combout\)))) # (!\div|curr_state.l00p~q\ & (\div|curr_state.b_eq_1~q\ & (\dividend[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|curr_state.l00p~q\,
	datab => \div|curr_state.b_eq_1~q\,
	datac => \dividend[3]~input_o\,
	datad => \div|Add26~7_combout\,
	combout => \div|Add26~9_combout\);

-- Location: LCCOMB_X33_Y61_N0
\div|q_next[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|q_next\(3) = (GLOBAL(\div|curr_state~7clkctrl_outclk\) & (\div|q_next\(3))) # (!GLOBAL(\div|curr_state~7clkctrl_outclk\) & ((\div|Add26~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|q_next\(3),
	datac => \div|Add26~9_combout\,
	datad => \div|curr_state~7clkctrl_outclk\,
	combout => \div|q_next\(3));

-- Location: LCCOMB_X33_Y61_N24
\div|q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|q~1_combout\ = (!\start~input_o\ & \div|q_next\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \start~input_o\,
	datad => \div|q_next\(3),
	combout => \div|q~1_combout\);

-- Location: FF_X33_Y61_N25
\div|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q\(3));

-- Location: LCCOMB_X32_Y59_N6
\div|Add28~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add28~7_combout\ = (\div|Add28~6\ & (\div|internal_sign~0_combout\ $ ((!\div|q\(3))))) # (!\div|Add28~6\ & ((\div|internal_sign~0_combout\ $ (\div|q\(3))) # (GND)))
-- \div|Add28~8\ = CARRY((\div|internal_sign~0_combout\ $ (!\div|q\(3))) # (!\div|Add28~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|internal_sign~0_combout\,
	datab => \div|q\(3),
	datad => VCC,
	cin => \div|Add28~6\,
	combout => \div|Add28~7_combout\,
	cout => \div|Add28~8\);

-- Location: LCCOMB_X31_Y59_N2
\div|quotient[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|quotient\(3) = (GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & (\div|Add28~7_combout\)) # (!GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & ((\div|quotient\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add28~7_combout\,
	datab => \div|quotient\(3),
	datad => \div|curr_state.epistemology~clkctrl_outclk\,
	combout => \div|quotient\(3));

-- Location: LCCOMB_X31_Y59_N28
\div|quotient[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|quotient\(0) = (GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & ((\div|Add28~1_combout\))) # (!GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & (\div|quotient\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|quotient\(0),
	datac => \div|Add28~1_combout\,
	datad => \div|curr_state.epistemology~clkctrl_outclk\,
	combout => \div|quotient\(0));

-- Location: LCCOMB_X32_Y62_N0
\quotient_gen:0:quotient_dcd|segments_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient_gen:0:quotient_dcd|segments_out[0]~0_combout\ = (\div|quotient\(2) & (!\div|quotient\(1) & (\div|quotient\(3) $ (!\div|quotient\(0))))) # (!\div|quotient\(2) & (\div|quotient\(0) & (\div|quotient\(1) $ (!\div|quotient\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|quotient\(1),
	datab => \div|quotient\(2),
	datac => \div|quotient\(3),
	datad => \div|quotient\(0),
	combout => \quotient_gen:0:quotient_dcd|segments_out[0]~0_combout\);

-- Location: LCCOMB_X32_Y62_N14
\quotient_gen:0:quotient_dcd|segments_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient_gen:0:quotient_dcd|segments_out[1]~1_combout\ = (\div|quotient\(1) & ((\div|quotient\(0) & ((\div|quotient\(3)))) # (!\div|quotient\(0) & (\div|quotient\(2))))) # (!\div|quotient\(1) & (\div|quotient\(2) & (\div|quotient\(3) $ 
-- (\div|quotient\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|quotient\(1),
	datab => \div|quotient\(2),
	datac => \div|quotient\(3),
	datad => \div|quotient\(0),
	combout => \quotient_gen:0:quotient_dcd|segments_out[1]~1_combout\);

-- Location: LCCOMB_X32_Y62_N24
\quotient_gen:0:quotient_dcd|segments_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient_gen:0:quotient_dcd|segments_out[2]~2_combout\ = (\div|quotient\(2) & (\div|quotient\(3) & ((\div|quotient\(1)) # (!\div|quotient\(0))))) # (!\div|quotient\(2) & (\div|quotient\(1) & (!\div|quotient\(3) & !\div|quotient\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|quotient\(1),
	datab => \div|quotient\(2),
	datac => \div|quotient\(3),
	datad => \div|quotient\(0),
	combout => \quotient_gen:0:quotient_dcd|segments_out[2]~2_combout\);

-- Location: LCCOMB_X32_Y62_N26
\quotient_gen:0:quotient_dcd|segments_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient_gen:0:quotient_dcd|segments_out[3]~3_combout\ = (\div|quotient\(1) & ((\div|quotient\(2) & ((\div|quotient\(0)))) # (!\div|quotient\(2) & (\div|quotient\(3) & !\div|quotient\(0))))) # (!\div|quotient\(1) & (!\div|quotient\(3) & 
-- (\div|quotient\(2) $ (\div|quotient\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|quotient\(1),
	datab => \div|quotient\(2),
	datac => \div|quotient\(3),
	datad => \div|quotient\(0),
	combout => \quotient_gen:0:quotient_dcd|segments_out[3]~3_combout\);

-- Location: LCCOMB_X32_Y62_N12
\quotient_gen:0:quotient_dcd|segments_out[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient_gen:0:quotient_dcd|segments_out[4]~4_combout\ = (\div|quotient\(1) & (((!\div|quotient\(3) & \div|quotient\(0))))) # (!\div|quotient\(1) & ((\div|quotient\(2) & (!\div|quotient\(3))) # (!\div|quotient\(2) & ((\div|quotient\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|quotient\(1),
	datab => \div|quotient\(2),
	datac => \div|quotient\(3),
	datad => \div|quotient\(0),
	combout => \quotient_gen:0:quotient_dcd|segments_out[4]~4_combout\);

-- Location: LCCOMB_X32_Y62_N22
\quotient_gen:0:quotient_dcd|segments_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient_gen:0:quotient_dcd|segments_out[5]~5_combout\ = (\div|quotient\(1) & (!\div|quotient\(3) & ((\div|quotient\(0)) # (!\div|quotient\(2))))) # (!\div|quotient\(1) & (\div|quotient\(0) & (\div|quotient\(2) $ (!\div|quotient\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|quotient\(1),
	datab => \div|quotient\(2),
	datac => \div|quotient\(3),
	datad => \div|quotient\(0),
	combout => \quotient_gen:0:quotient_dcd|segments_out[5]~5_combout\);

-- Location: LCCOMB_X32_Y62_N4
\quotient_gen:0:quotient_dcd|segments_out[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient_gen:0:quotient_dcd|segments_out[6]~6_combout\ = (\div|quotient\(0) & ((\div|quotient\(3)) # (\div|quotient\(1) $ (\div|quotient\(2))))) # (!\div|quotient\(0) & ((\div|quotient\(1)) # (\div|quotient\(2) $ (\div|quotient\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|quotient\(1),
	datab => \div|quotient\(2),
	datac => \div|quotient\(3),
	datad => \div|quotient\(0),
	combout => \quotient_gen:0:quotient_dcd|segments_out[6]~6_combout\);

-- Location: LCCOMB_X34_Y58_N26
\div|ShiftLeft1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft1~14_combout\ = ((\div|p~0_combout\) # (!\div|ShiftLeft2~15_combout\)) # (!\div|p~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|p~1_combout\,
	datac => \div|p~0_combout\,
	datad => \div|ShiftLeft2~15_combout\,
	combout => \div|ShiftLeft1~14_combout\);

-- Location: LCCOMB_X34_Y58_N4
\div|ShiftLeft1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft1~15_combout\ = (\div|p~3_combout\ & (\div|ShiftLeft2~61_combout\ & \div|ShiftLeft1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|p~3_combout\,
	datab => \div|ShiftLeft2~61_combout\,
	datad => \div|ShiftLeft1~22_combout\,
	combout => \div|ShiftLeft1~15_combout\);

-- Location: LCCOMB_X35_Y61_N20
\div|ShiftLeft1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft1~12_combout\ = (\div|p~0_combout\) # ((\div|p~1_combout\) # ((!\div|p~3_combout\) # (!\div|ShiftLeft2~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|p~0_combout\,
	datab => \div|p~1_combout\,
	datac => \div|ShiftLeft2~61_combout\,
	datad => \div|p~3_combout\,
	combout => \div|ShiftLeft1~12_combout\);

-- Location: LCCOMB_X34_Y61_N8
\div|Add26~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add26~12_combout\ = ((\div|ShiftLeft1~12_combout\ $ (\div|q\(4) $ (\div|Add26~8\)))) # (GND)
-- \div|Add26~13\ = CARRY((\div|ShiftLeft1~12_combout\ & (\div|q\(4) & !\div|Add26~8\)) # (!\div|ShiftLeft1~12_combout\ & ((\div|q\(4)) # (!\div|Add26~8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft1~12_combout\,
	datab => \div|q\(4),
	datad => VCC,
	cin => \div|Add26~8\,
	combout => \div|Add26~12_combout\,
	cout => \div|Add26~13\);

-- Location: LCCOMB_X33_Y61_N30
\div|Add26~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add26~14_combout\ = (\div|curr_state.l00p~q\ & (((\div|Add26~12_combout\)))) # (!\div|curr_state.l00p~q\ & (\div|curr_state.b_eq_1~q\ & ((\dividend[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|curr_state.l00p~q\,
	datab => \div|curr_state.b_eq_1~q\,
	datac => \div|Add26~12_combout\,
	datad => \dividend[4]~input_o\,
	combout => \div|Add26~14_combout\);

-- Location: LCCOMB_X33_Y61_N18
\div|q_next[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|q_next\(4) = (GLOBAL(\div|curr_state~7clkctrl_outclk\) & (\div|q_next\(4))) # (!GLOBAL(\div|curr_state~7clkctrl_outclk\) & ((\div|Add26~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|q_next\(4),
	datac => \div|Add26~14_combout\,
	datad => \div|curr_state~7clkctrl_outclk\,
	combout => \div|q_next\(4));

-- Location: LCCOMB_X33_Y61_N10
\div|q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|q~4_combout\ = (!\start~input_o\ & \div|q_next\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \start~input_o\,
	datad => \div|q_next\(4),
	combout => \div|q~4_combout\);

-- Location: FF_X33_Y61_N11
\div|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|q~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q\(4));

-- Location: LCCOMB_X34_Y61_N10
\div|Add26~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add26~15_combout\ = (\div|q\(5) & ((\div|ShiftLeft1~15_combout\ & (\div|Add26~13\ & VCC)) # (!\div|ShiftLeft1~15_combout\ & (!\div|Add26~13\)))) # (!\div|q\(5) & ((\div|ShiftLeft1~15_combout\ & (!\div|Add26~13\)) # (!\div|ShiftLeft1~15_combout\ & 
-- ((\div|Add26~13\) # (GND)))))
-- \div|Add26~16\ = CARRY((\div|q\(5) & (!\div|ShiftLeft1~15_combout\ & !\div|Add26~13\)) # (!\div|q\(5) & ((!\div|Add26~13\) # (!\div|ShiftLeft1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|q\(5),
	datab => \div|ShiftLeft1~15_combout\,
	datad => VCC,
	cin => \div|Add26~13\,
	combout => \div|Add26~15_combout\,
	cout => \div|Add26~16\);

-- Location: LCCOMB_X33_Y61_N22
\div|Add26~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add26~23_combout\ = (\div|curr_state.l00p~q\ & (((\div|Add26~15_combout\)))) # (!\div|curr_state.l00p~q\ & (\div|curr_state.b_eq_1~q\ & (\dividend[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|curr_state.l00p~q\,
	datab => \div|curr_state.b_eq_1~q\,
	datac => \dividend[5]~input_o\,
	datad => \div|Add26~15_combout\,
	combout => \div|Add26~23_combout\);

-- Location: LCCOMB_X33_Y61_N2
\div|q_next[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|q_next\(5) = (GLOBAL(\div|curr_state~7clkctrl_outclk\) & (\div|q_next\(5))) # (!GLOBAL(\div|curr_state~7clkctrl_outclk\) & ((\div|Add26~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|q_next\(5),
	datac => \div|Add26~23_combout\,
	datad => \div|curr_state~7clkctrl_outclk\,
	combout => \div|q_next\(5));

-- Location: LCCOMB_X33_Y61_N14
\div|q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|q~7_combout\ = (!\start~input_o\ & \div|q_next\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \start~input_o\,
	datad => \div|q_next\(5),
	combout => \div|q~7_combout\);

-- Location: FF_X33_Y61_N15
\div|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|q~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q\(5));

-- Location: LCCOMB_X34_Y61_N12
\div|Add26~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add26~17_combout\ = ((\div|q\(6) $ (\div|ShiftLeft1~14_combout\ $ (\div|Add26~16\)))) # (GND)
-- \div|Add26~18\ = CARRY((\div|q\(6) & ((!\div|Add26~16\) # (!\div|ShiftLeft1~14_combout\))) # (!\div|q\(6) & (!\div|ShiftLeft1~14_combout\ & !\div|Add26~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|q\(6),
	datab => \div|ShiftLeft1~14_combout\,
	datad => VCC,
	cin => \div|Add26~16\,
	combout => \div|Add26~17_combout\,
	cout => \div|Add26~18\);

-- Location: LCCOMB_X33_Y61_N8
\div|Add26~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add26~22_combout\ = (\div|curr_state.l00p~q\ & (((\div|Add26~17_combout\)))) # (!\div|curr_state.l00p~q\ & (\div|curr_state.b_eq_1~q\ & ((\dividend[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|curr_state.l00p~q\,
	datab => \div|curr_state.b_eq_1~q\,
	datac => \div|Add26~17_combout\,
	datad => \dividend[6]~input_o\,
	combout => \div|Add26~22_combout\);

-- Location: LCCOMB_X33_Y61_N20
\div|q_next[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|q_next\(6) = (GLOBAL(\div|curr_state~7clkctrl_outclk\) & (\div|q_next\(6))) # (!GLOBAL(\div|curr_state~7clkctrl_outclk\) & ((\div|Add26~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|q_next\(6),
	datac => \div|Add26~22_combout\,
	datad => \div|curr_state~7clkctrl_outclk\,
	combout => \div|q_next\(6));

-- Location: LCCOMB_X33_Y61_N28
\div|q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|q~6_combout\ = (!\start~input_o\ & \div|q_next\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \start~input_o\,
	datad => \div|q_next\(6),
	combout => \div|q~6_combout\);

-- Location: FF_X33_Y61_N29
\div|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|q~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q\(6));

-- Location: LCCOMB_X32_Y59_N8
\div|Add28~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add28~9_combout\ = (\div|Add28~8\ & ((\div|internal_sign~0_combout\ $ (\div|q\(4))))) # (!\div|Add28~8\ & (\div|internal_sign~0_combout\ $ (\div|q\(4) $ (VCC))))
-- \div|Add28~10\ = CARRY((!\div|Add28~8\ & (\div|internal_sign~0_combout\ $ (\div|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|internal_sign~0_combout\,
	datab => \div|q\(4),
	datad => VCC,
	cin => \div|Add28~8\,
	combout => \div|Add28~9_combout\,
	cout => \div|Add28~10\);

-- Location: LCCOMB_X32_Y59_N10
\div|Add28~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add28~11_combout\ = (\div|Add28~10\ & (\div|internal_sign~0_combout\ $ ((!\div|q\(5))))) # (!\div|Add28~10\ & ((\div|internal_sign~0_combout\ $ (\div|q\(5))) # (GND)))
-- \div|Add28~12\ = CARRY((\div|internal_sign~0_combout\ $ (!\div|q\(5))) # (!\div|Add28~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|internal_sign~0_combout\,
	datab => \div|q\(5),
	datad => VCC,
	cin => \div|Add28~10\,
	combout => \div|Add28~11_combout\,
	cout => \div|Add28~12\);

-- Location: LCCOMB_X32_Y59_N12
\div|Add28~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add28~13_combout\ = (\div|Add28~12\ & ((\div|q\(6) $ (\div|internal_sign~0_combout\)))) # (!\div|Add28~12\ & (\div|q\(6) $ (\div|internal_sign~0_combout\ $ (VCC))))
-- \div|Add28~14\ = CARRY((!\div|Add28~12\ & (\div|q\(6) $ (\div|internal_sign~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|q\(6),
	datab => \div|internal_sign~0_combout\,
	datad => VCC,
	cin => \div|Add28~12\,
	combout => \div|Add28~13_combout\,
	cout => \div|Add28~14\);

-- Location: LCCOMB_X31_Y59_N0
\div|quotient[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|quotient\(6) = (GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & ((\div|Add28~13_combout\))) # (!GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & (\div|quotient\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|quotient\(6),
	datac => \div|Add28~13_combout\,
	datad => \div|curr_state.epistemology~clkctrl_outclk\,
	combout => \div|quotient\(6));

-- Location: LCCOMB_X35_Y61_N6
\div|ShiftLeft1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft1~13_combout\ = (\div|p~0_combout\ & (\div|ShiftLeft2~15_combout\ & \div|p~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|p~0_combout\,
	datac => \div|ShiftLeft2~15_combout\,
	datad => \div|p~1_combout\,
	combout => \div|ShiftLeft1~13_combout\);

-- Location: LCCOMB_X34_Y61_N14
\div|Add26~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add26~19_combout\ = (\div|ShiftLeft1~13_combout\ & ((\div|q\(7) & (\div|Add26~18\ & VCC)) # (!\div|q\(7) & (!\div|Add26~18\)))) # (!\div|ShiftLeft1~13_combout\ & ((\div|q\(7) & (!\div|Add26~18\)) # (!\div|q\(7) & ((\div|Add26~18\) # (GND)))))
-- \div|Add26~20\ = CARRY((\div|ShiftLeft1~13_combout\ & (!\div|q\(7) & !\div|Add26~18\)) # (!\div|ShiftLeft1~13_combout\ & ((!\div|Add26~18\) # (!\div|q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft1~13_combout\,
	datab => \div|q\(7),
	datad => VCC,
	cin => \div|Add26~18\,
	combout => \div|Add26~19_combout\,
	cout => \div|Add26~20\);

-- Location: LCCOMB_X33_Y59_N4
\div|Add26~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add26~21_combout\ = (\div|curr_state.l00p~q\ & (((\div|Add26~19_combout\)))) # (!\div|curr_state.l00p~q\ & (\dividend[7]~input_o\ & (\div|curr_state.b_eq_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|curr_state.l00p~q\,
	datab => \dividend[7]~input_o\,
	datac => \div|curr_state.b_eq_1~q\,
	datad => \div|Add26~19_combout\,
	combout => \div|Add26~21_combout\);

-- Location: LCCOMB_X33_Y59_N20
\div|q_next[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|q_next\(7) = (GLOBAL(\div|curr_state~7clkctrl_outclk\) & (\div|q_next\(7))) # (!GLOBAL(\div|curr_state~7clkctrl_outclk\) & ((\div|Add26~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|q_next\(7),
	datac => \div|Add26~21_combout\,
	datad => \div|curr_state~7clkctrl_outclk\,
	combout => \div|q_next\(7));

-- Location: LCCOMB_X33_Y59_N2
\div|q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|q~5_combout\ = (!\start~input_o\ & \div|q_next\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \start~input_o\,
	datad => \div|q_next\(7),
	combout => \div|q~5_combout\);

-- Location: FF_X33_Y59_N3
\div|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|q~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q\(7));

-- Location: LCCOMB_X32_Y59_N14
\div|Add28~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add28~15_combout\ = (\div|Add28~14\ & (\div|q\(7) $ ((!\div|internal_sign~0_combout\)))) # (!\div|Add28~14\ & ((\div|q\(7) $ (\div|internal_sign~0_combout\)) # (GND)))
-- \div|Add28~16\ = CARRY((\div|q\(7) $ (!\div|internal_sign~0_combout\)) # (!\div|Add28~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|q\(7),
	datab => \div|internal_sign~0_combout\,
	datad => VCC,
	cin => \div|Add28~14\,
	combout => \div|Add28~15_combout\,
	cout => \div|Add28~16\);

-- Location: LCCOMB_X31_Y59_N18
\div|quotient[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|quotient\(7) = (GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & ((\div|Add28~15_combout\))) # (!GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & (\div|quotient\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|quotient\(7),
	datac => \div|Add28~15_combout\,
	datad => \div|curr_state.epistemology~clkctrl_outclk\,
	combout => \div|quotient\(7));

-- Location: LCCOMB_X31_Y59_N10
\div|quotient[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|quotient\(5) = (GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & ((\div|Add28~11_combout\))) # (!GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & (\div|quotient\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|quotient\(5),
	datac => \div|Add28~11_combout\,
	datad => \div|curr_state.epistemology~clkctrl_outclk\,
	combout => \div|quotient\(5));

-- Location: LCCOMB_X31_Y59_N20
\div|quotient[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|quotient\(4) = (GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & ((\div|Add28~9_combout\))) # (!GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & (\div|quotient\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|quotient\(4),
	datac => \div|Add28~9_combout\,
	datad => \div|curr_state.epistemology~clkctrl_outclk\,
	combout => \div|quotient\(4));

-- Location: LCCOMB_X28_Y59_N0
\quotient_gen:1:quotient_dcd|segments_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient_gen:1:quotient_dcd|segments_out[0]~0_combout\ = (\div|quotient\(6) & (!\div|quotient\(5) & (\div|quotient\(7) $ (!\div|quotient\(4))))) # (!\div|quotient\(6) & (\div|quotient\(4) & (\div|quotient\(7) $ (!\div|quotient\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|quotient\(6),
	datab => \div|quotient\(7),
	datac => \div|quotient\(5),
	datad => \div|quotient\(4),
	combout => \quotient_gen:1:quotient_dcd|segments_out[0]~0_combout\);

-- Location: LCCOMB_X28_Y59_N26
\quotient_gen:1:quotient_dcd|segments_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient_gen:1:quotient_dcd|segments_out[1]~1_combout\ = (\div|quotient\(7) & ((\div|quotient\(4) & ((\div|quotient\(5)))) # (!\div|quotient\(4) & (\div|quotient\(6))))) # (!\div|quotient\(7) & (\div|quotient\(6) & (\div|quotient\(5) $ 
-- (\div|quotient\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|quotient\(6),
	datab => \div|quotient\(7),
	datac => \div|quotient\(5),
	datad => \div|quotient\(4),
	combout => \quotient_gen:1:quotient_dcd|segments_out[1]~1_combout\);

-- Location: LCCOMB_X28_Y59_N12
\quotient_gen:1:quotient_dcd|segments_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient_gen:1:quotient_dcd|segments_out[2]~2_combout\ = (\div|quotient\(6) & (\div|quotient\(7) & ((\div|quotient\(5)) # (!\div|quotient\(4))))) # (!\div|quotient\(6) & (!\div|quotient\(7) & (\div|quotient\(5) & !\div|quotient\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|quotient\(6),
	datab => \div|quotient\(7),
	datac => \div|quotient\(5),
	datad => \div|quotient\(4),
	combout => \quotient_gen:1:quotient_dcd|segments_out[2]~2_combout\);

-- Location: LCCOMB_X28_Y59_N2
\quotient_gen:1:quotient_dcd|segments_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient_gen:1:quotient_dcd|segments_out[3]~3_combout\ = (\div|quotient\(5) & ((\div|quotient\(6) & ((\div|quotient\(4)))) # (!\div|quotient\(6) & (\div|quotient\(7) & !\div|quotient\(4))))) # (!\div|quotient\(5) & (!\div|quotient\(7) & 
-- (\div|quotient\(6) $ (\div|quotient\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|quotient\(6),
	datab => \div|quotient\(7),
	datac => \div|quotient\(5),
	datad => \div|quotient\(4),
	combout => \quotient_gen:1:quotient_dcd|segments_out[3]~3_combout\);

-- Location: LCCOMB_X28_Y59_N8
\quotient_gen:1:quotient_dcd|segments_out[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient_gen:1:quotient_dcd|segments_out[4]~4_combout\ = (\div|quotient\(5) & (((!\div|quotient\(7) & \div|quotient\(4))))) # (!\div|quotient\(5) & ((\div|quotient\(6) & (!\div|quotient\(7))) # (!\div|quotient\(6) & ((\div|quotient\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|quotient\(6),
	datab => \div|quotient\(7),
	datac => \div|quotient\(5),
	datad => \div|quotient\(4),
	combout => \quotient_gen:1:quotient_dcd|segments_out[4]~4_combout\);

-- Location: LCCOMB_X28_Y59_N10
\quotient_gen:1:quotient_dcd|segments_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient_gen:1:quotient_dcd|segments_out[5]~5_combout\ = (\div|quotient\(6) & (\div|quotient\(4) & (\div|quotient\(7) $ (\div|quotient\(5))))) # (!\div|quotient\(6) & (!\div|quotient\(7) & ((\div|quotient\(5)) # (\div|quotient\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|quotient\(6),
	datab => \div|quotient\(7),
	datac => \div|quotient\(5),
	datad => \div|quotient\(4),
	combout => \quotient_gen:1:quotient_dcd|segments_out[5]~5_combout\);

-- Location: LCCOMB_X28_Y59_N16
\quotient_gen:1:quotient_dcd|segments_out[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient_gen:1:quotient_dcd|segments_out[6]~6_combout\ = (\div|quotient\(4) & ((\div|quotient\(7)) # (\div|quotient\(6) $ (\div|quotient\(5))))) # (!\div|quotient\(4) & ((\div|quotient\(5)) # (\div|quotient\(6) $ (\div|quotient\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|quotient\(6),
	datab => \div|quotient\(7),
	datac => \div|quotient\(5),
	datad => \div|quotient\(4),
	combout => \quotient_gen:1:quotient_dcd|segments_out[6]~6_combout\);

-- Location: LCCOMB_X35_Y61_N12
\div|ShiftLeft1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft1~16_combout\ = (\div|p~1_combout\) # ((\div|p~0_combout\) # (!\div|ShiftLeft2~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|p~1_combout\,
	datac => \div|p~0_combout\,
	datad => \div|ShiftLeft2~16_combout\,
	combout => \div|ShiftLeft1~16_combout\);

-- Location: LCCOMB_X34_Y61_N16
\div|Add26~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add26~24_combout\ = ((\div|q\(8) $ (\div|ShiftLeft1~16_combout\ $ (\div|Add26~20\)))) # (GND)
-- \div|Add26~25\ = CARRY((\div|q\(8) & ((!\div|Add26~20\) # (!\div|ShiftLeft1~16_combout\))) # (!\div|q\(8) & (!\div|ShiftLeft1~16_combout\ & !\div|Add26~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|q\(8),
	datab => \div|ShiftLeft1~16_combout\,
	datad => VCC,
	cin => \div|Add26~20\,
	combout => \div|Add26~24_combout\,
	cout => \div|Add26~25\);

-- Location: LCCOMB_X33_Y59_N22
\div|Add26~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add26~26_combout\ = (\div|curr_state.l00p~q\ & (((\div|Add26~24_combout\)))) # (!\div|curr_state.l00p~q\ & (\dividend[8]~input_o\ & (\div|curr_state.b_eq_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|curr_state.l00p~q\,
	datab => \dividend[8]~input_o\,
	datac => \div|curr_state.b_eq_1~q\,
	datad => \div|Add26~24_combout\,
	combout => \div|Add26~26_combout\);

-- Location: LCCOMB_X33_Y59_N18
\div|q_next[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|q_next\(8) = (GLOBAL(\div|curr_state~7clkctrl_outclk\) & (\div|q_next\(8))) # (!GLOBAL(\div|curr_state~7clkctrl_outclk\) & ((\div|Add26~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|q_next\(8),
	datac => \div|Add26~26_combout\,
	datad => \div|curr_state~7clkctrl_outclk\,
	combout => \div|q_next\(8));

-- Location: LCCOMB_X33_Y59_N0
\div|q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|q~8_combout\ = (!\start~input_o\ & \div|q_next\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \start~input_o\,
	datad => \div|q_next\(8),
	combout => \div|q~8_combout\);

-- Location: FF_X33_Y59_N1
\div|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|q~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q\(8));

-- Location: LCCOMB_X32_Y59_N16
\div|Add28~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add28~17_combout\ = (\div|Add28~16\ & ((\div|internal_sign~0_combout\ $ (\div|q\(8))))) # (!\div|Add28~16\ & (\div|internal_sign~0_combout\ $ (\div|q\(8) $ (VCC))))
-- \div|Add28~18\ = CARRY((!\div|Add28~16\ & (\div|internal_sign~0_combout\ $ (\div|q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|internal_sign~0_combout\,
	datab => \div|q\(8),
	datad => VCC,
	cin => \div|Add28~16\,
	combout => \div|Add28~17_combout\,
	cout => \div|Add28~18\);

-- Location: LCCOMB_X31_Y59_N8
\div|quotient[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|quotient\(8) = (GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & (\div|Add28~17_combout\)) # (!GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & ((\div|quotient\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|Add28~17_combout\,
	datac => \div|quotient\(8),
	datad => \div|curr_state.epistemology~clkctrl_outclk\,
	combout => \div|quotient\(8));

-- Location: LCCOMB_X34_Y58_N8
\div|ShiftLeft1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft1~23_combout\ = (!\div|p~3_combout\ & (!\div|ShiftLeft2~14_combout\ & (\div|p~2_combout\ & \div|ShiftLeft1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|p~3_combout\,
	datab => \div|ShiftLeft2~14_combout\,
	datac => \div|p~2_combout\,
	datad => \div|ShiftLeft1~22_combout\,
	combout => \div|ShiftLeft1~23_combout\);

-- Location: LCCOMB_X34_Y61_N18
\div|Add26~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add26~27_combout\ = (\div|q\(9) & ((\div|ShiftLeft1~23_combout\ & (\div|Add26~25\ & VCC)) # (!\div|ShiftLeft1~23_combout\ & (!\div|Add26~25\)))) # (!\div|q\(9) & ((\div|ShiftLeft1~23_combout\ & (!\div|Add26~25\)) # (!\div|ShiftLeft1~23_combout\ & 
-- ((\div|Add26~25\) # (GND)))))
-- \div|Add26~28\ = CARRY((\div|q\(9) & (!\div|ShiftLeft1~23_combout\ & !\div|Add26~25\)) # (!\div|q\(9) & ((!\div|Add26~25\) # (!\div|ShiftLeft1~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|q\(9),
	datab => \div|ShiftLeft1~23_combout\,
	datad => VCC,
	cin => \div|Add26~25\,
	combout => \div|Add26~27_combout\,
	cout => \div|Add26~28\);

-- Location: LCCOMB_X31_Y61_N8
\div|Add26~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add26~35_combout\ = (\div|curr_state.l00p~q\ & (((\div|Add26~27_combout\)))) # (!\div|curr_state.l00p~q\ & (\div|curr_state.b_eq_1~q\ & ((\dividend[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|curr_state.l00p~q\,
	datab => \div|curr_state.b_eq_1~q\,
	datac => \div|Add26~27_combout\,
	datad => \dividend[9]~input_o\,
	combout => \div|Add26~35_combout\);

-- Location: LCCOMB_X31_Y61_N18
\div|q_next[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|q_next\(9) = (GLOBAL(\div|curr_state~7clkctrl_outclk\) & (\div|q_next\(9))) # (!GLOBAL(\div|curr_state~7clkctrl_outclk\) & ((\div|Add26~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|q_next\(9),
	datac => \div|Add26~35_combout\,
	datad => \div|curr_state~7clkctrl_outclk\,
	combout => \div|q_next\(9));

-- Location: LCCOMB_X31_Y61_N14
\div|q~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|q~11_combout\ = (!\start~input_o\ & \div|q_next\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datad => \div|q_next\(9),
	combout => \div|q~11_combout\);

-- Location: FF_X31_Y61_N15
\div|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|q~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q\(9));

-- Location: LCCOMB_X32_Y59_N18
\div|Add28~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add28~19_combout\ = (\div|Add28~18\ & (\div|q\(9) $ ((!\div|internal_sign~0_combout\)))) # (!\div|Add28~18\ & ((\div|q\(9) $ (\div|internal_sign~0_combout\)) # (GND)))
-- \div|Add28~20\ = CARRY((\div|q\(9) $ (!\div|internal_sign~0_combout\)) # (!\div|Add28~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|q\(9),
	datab => \div|internal_sign~0_combout\,
	datad => VCC,
	cin => \div|Add28~18\,
	combout => \div|Add28~19_combout\,
	cout => \div|Add28~20\);

-- Location: LCCOMB_X31_Y59_N22
\div|quotient[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|quotient\(9) = (GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & (\div|Add28~19_combout\)) # (!GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & ((\div|quotient\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|Add28~19_combout\,
	datac => \div|quotient\(9),
	datad => \div|curr_state.epistemology~clkctrl_outclk\,
	combout => \div|quotient\(9));

-- Location: LCCOMB_X35_Y61_N0
\div|ShiftLeft1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft1~18_combout\ = ((\div|p~0_combout\) # (!\div|ShiftLeft2~16_combout\)) # (!\div|p~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|p~1_combout\,
	datac => \div|p~0_combout\,
	datad => \div|ShiftLeft2~16_combout\,
	combout => \div|ShiftLeft1~18_combout\);

-- Location: LCCOMB_X34_Y61_N20
\div|Add26~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add26~29_combout\ = ((\div|q\(10) $ (\div|ShiftLeft1~18_combout\ $ (\div|Add26~28\)))) # (GND)
-- \div|Add26~30\ = CARRY((\div|q\(10) & ((!\div|Add26~28\) # (!\div|ShiftLeft1~18_combout\))) # (!\div|q\(10) & (!\div|ShiftLeft1~18_combout\ & !\div|Add26~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|q\(10),
	datab => \div|ShiftLeft1~18_combout\,
	datad => VCC,
	cin => \div|Add26~28\,
	combout => \div|Add26~29_combout\,
	cout => \div|Add26~30\);

-- Location: LCCOMB_X31_Y61_N30
\div|Add26~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add26~34_combout\ = (\div|curr_state.l00p~q\ & (((\div|Add26~29_combout\)))) # (!\div|curr_state.l00p~q\ & (\div|curr_state.b_eq_1~q\ & (\dividend[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|curr_state.l00p~q\,
	datab => \div|curr_state.b_eq_1~q\,
	datac => \dividend[10]~input_o\,
	datad => \div|Add26~29_combout\,
	combout => \div|Add26~34_combout\);

-- Location: LCCOMB_X31_Y61_N12
\div|q_next[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|q_next\(10) = (GLOBAL(\div|curr_state~7clkctrl_outclk\) & (\div|q_next\(10))) # (!GLOBAL(\div|curr_state~7clkctrl_outclk\) & ((\div|Add26~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|q_next\(10),
	datac => \div|Add26~34_combout\,
	datad => \div|curr_state~7clkctrl_outclk\,
	combout => \div|q_next\(10));

-- Location: LCCOMB_X31_Y61_N28
\div|q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|q~10_combout\ = (!\start~input_o\ & \div|q_next\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datad => \div|q_next\(10),
	combout => \div|q~10_combout\);

-- Location: FF_X31_Y61_N29
\div|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|q~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q\(10));

-- Location: LCCOMB_X32_Y59_N20
\div|Add28~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add28~21_combout\ = (\div|Add28~20\ & ((\div|q\(10) $ (\div|internal_sign~0_combout\)))) # (!\div|Add28~20\ & (\div|q\(10) $ (\div|internal_sign~0_combout\ $ (VCC))))
-- \div|Add28~22\ = CARRY((!\div|Add28~20\ & (\div|q\(10) $ (\div|internal_sign~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|q\(10),
	datab => \div|internal_sign~0_combout\,
	datad => VCC,
	cin => \div|Add28~20\,
	combout => \div|Add28~21_combout\,
	cout => \div|Add28~22\);

-- Location: LCCOMB_X31_Y59_N16
\div|quotient[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|quotient\(10) = (GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & ((\div|Add28~21_combout\))) # (!GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & (\div|quotient\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|quotient\(10),
	datac => \div|Add28~21_combout\,
	datad => \div|curr_state.epistemology~clkctrl_outclk\,
	combout => \div|quotient\(10));

-- Location: LCCOMB_X35_Y61_N30
\div|ShiftLeft1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft1~17_combout\ = (\div|p~1_combout\ & (\div|p~0_combout\ & \div|ShiftLeft2~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|p~1_combout\,
	datac => \div|p~0_combout\,
	datad => \div|ShiftLeft2~16_combout\,
	combout => \div|ShiftLeft1~17_combout\);

-- Location: LCCOMB_X34_Y61_N22
\div|Add26~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add26~31_combout\ = (\div|ShiftLeft1~17_combout\ & ((\div|q\(11) & (\div|Add26~30\ & VCC)) # (!\div|q\(11) & (!\div|Add26~30\)))) # (!\div|ShiftLeft1~17_combout\ & ((\div|q\(11) & (!\div|Add26~30\)) # (!\div|q\(11) & ((\div|Add26~30\) # (GND)))))
-- \div|Add26~32\ = CARRY((\div|ShiftLeft1~17_combout\ & (!\div|q\(11) & !\div|Add26~30\)) # (!\div|ShiftLeft1~17_combout\ & ((!\div|Add26~30\) # (!\div|q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft1~17_combout\,
	datab => \div|q\(11),
	datad => VCC,
	cin => \div|Add26~30\,
	combout => \div|Add26~31_combout\,
	cout => \div|Add26~32\);

-- Location: LCCOMB_X31_Y61_N4
\div|Add26~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add26~33_combout\ = (\div|curr_state.l00p~q\ & (((\div|Add26~31_combout\)))) # (!\div|curr_state.l00p~q\ & (\div|curr_state.b_eq_1~q\ & ((\dividend[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|curr_state.l00p~q\,
	datab => \div|curr_state.b_eq_1~q\,
	datac => \div|Add26~31_combout\,
	datad => \dividend[11]~input_o\,
	combout => \div|Add26~33_combout\);

-- Location: LCCOMB_X31_Y61_N2
\div|q_next[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|q_next\(11) = (GLOBAL(\div|curr_state~7clkctrl_outclk\) & (\div|q_next\(11))) # (!GLOBAL(\div|curr_state~7clkctrl_outclk\) & ((\div|Add26~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|q_next\(11),
	datac => \div|Add26~33_combout\,
	datad => \div|curr_state~7clkctrl_outclk\,
	combout => \div|q_next\(11));

-- Location: LCCOMB_X31_Y61_N6
\div|q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|q~9_combout\ = (!\start~input_o\ & \div|q_next\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datad => \div|q_next\(11),
	combout => \div|q~9_combout\);

-- Location: FF_X31_Y61_N7
\div|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|q~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q\(11));

-- Location: LCCOMB_X32_Y59_N22
\div|Add28~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add28~23_combout\ = (\div|Add28~22\ & (\div|internal_sign~0_combout\ $ ((!\div|q\(11))))) # (!\div|Add28~22\ & ((\div|internal_sign~0_combout\ $ (\div|q\(11))) # (GND)))
-- \div|Add28~24\ = CARRY((\div|internal_sign~0_combout\ $ (!\div|q\(11))) # (!\div|Add28~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|internal_sign~0_combout\,
	datab => \div|q\(11),
	datad => VCC,
	cin => \div|Add28~22\,
	combout => \div|Add28~23_combout\,
	cout => \div|Add28~24\);

-- Location: LCCOMB_X31_Y59_N14
\div|quotient[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|quotient\(11) = (GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & (\div|Add28~23_combout\)) # (!GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & ((\div|quotient\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|Add28~23_combout\,
	datac => \div|quotient\(11),
	datad => \div|curr_state.epistemology~clkctrl_outclk\,
	combout => \div|quotient\(11));

-- Location: LCCOMB_X31_Y62_N16
\quotient_gen:2:quotient_dcd|segments_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient_gen:2:quotient_dcd|segments_out[0]~0_combout\ = (\div|quotient\(10) & (!\div|quotient\(9) & (\div|quotient\(8) $ (!\div|quotient\(11))))) # (!\div|quotient\(10) & (\div|quotient\(8) & (\div|quotient\(9) $ (!\div|quotient\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|quotient\(8),
	datab => \div|quotient\(9),
	datac => \div|quotient\(10),
	datad => \div|quotient\(11),
	combout => \quotient_gen:2:quotient_dcd|segments_out[0]~0_combout\);

-- Location: LCCOMB_X31_Y62_N2
\quotient_gen:2:quotient_dcd|segments_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient_gen:2:quotient_dcd|segments_out[1]~1_combout\ = (\div|quotient\(9) & ((\div|quotient\(8) & ((\div|quotient\(11)))) # (!\div|quotient\(8) & (\div|quotient\(10))))) # (!\div|quotient\(9) & (\div|quotient\(10) & (\div|quotient\(8) $ 
-- (\div|quotient\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|quotient\(8),
	datab => \div|quotient\(9),
	datac => \div|quotient\(10),
	datad => \div|quotient\(11),
	combout => \quotient_gen:2:quotient_dcd|segments_out[1]~1_combout\);

-- Location: LCCOMB_X31_Y62_N8
\quotient_gen:2:quotient_dcd|segments_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient_gen:2:quotient_dcd|segments_out[2]~2_combout\ = (\div|quotient\(10) & (\div|quotient\(11) & ((\div|quotient\(9)) # (!\div|quotient\(8))))) # (!\div|quotient\(10) & (!\div|quotient\(8) & (\div|quotient\(9) & !\div|quotient\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|quotient\(8),
	datab => \div|quotient\(9),
	datac => \div|quotient\(10),
	datad => \div|quotient\(11),
	combout => \quotient_gen:2:quotient_dcd|segments_out[2]~2_combout\);

-- Location: LCCOMB_X31_Y62_N6
\quotient_gen:2:quotient_dcd|segments_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient_gen:2:quotient_dcd|segments_out[3]~3_combout\ = (\div|quotient\(9) & ((\div|quotient\(8) & (\div|quotient\(10))) # (!\div|quotient\(8) & (!\div|quotient\(10) & \div|quotient\(11))))) # (!\div|quotient\(9) & (!\div|quotient\(11) & 
-- (\div|quotient\(8) $ (\div|quotient\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|quotient\(8),
	datab => \div|quotient\(9),
	datac => \div|quotient\(10),
	datad => \div|quotient\(11),
	combout => \quotient_gen:2:quotient_dcd|segments_out[3]~3_combout\);

-- Location: LCCOMB_X31_Y62_N0
\quotient_gen:2:quotient_dcd|segments_out[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient_gen:2:quotient_dcd|segments_out[4]~4_combout\ = (\div|quotient\(9) & (\div|quotient\(8) & ((!\div|quotient\(11))))) # (!\div|quotient\(9) & ((\div|quotient\(10) & ((!\div|quotient\(11)))) # (!\div|quotient\(10) & (\div|quotient\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|quotient\(8),
	datab => \div|quotient\(9),
	datac => \div|quotient\(10),
	datad => \div|quotient\(11),
	combout => \quotient_gen:2:quotient_dcd|segments_out[4]~4_combout\);

-- Location: LCCOMB_X31_Y62_N10
\quotient_gen:2:quotient_dcd|segments_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient_gen:2:quotient_dcd|segments_out[5]~5_combout\ = (\div|quotient\(8) & (\div|quotient\(11) $ (((\div|quotient\(9)) # (!\div|quotient\(10)))))) # (!\div|quotient\(8) & (\div|quotient\(9) & (!\div|quotient\(10) & !\div|quotient\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|quotient\(8),
	datab => \div|quotient\(9),
	datac => \div|quotient\(10),
	datad => \div|quotient\(11),
	combout => \quotient_gen:2:quotient_dcd|segments_out[5]~5_combout\);

-- Location: LCCOMB_X31_Y62_N12
\quotient_gen:2:quotient_dcd|segments_out[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient_gen:2:quotient_dcd|segments_out[6]~6_combout\ = (\div|quotient\(8) & ((\div|quotient\(11)) # (\div|quotient\(9) $ (\div|quotient\(10))))) # (!\div|quotient\(8) & ((\div|quotient\(9)) # (\div|quotient\(10) $ (\div|quotient\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|quotient\(8),
	datab => \div|quotient\(9),
	datac => \div|quotient\(10),
	datad => \div|quotient\(11),
	combout => \quotient_gen:2:quotient_dcd|segments_out[6]~6_combout\);

-- Location: LCCOMB_X34_Y58_N2
\div|ShiftLeft1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft1~24_combout\ = (\div|p~3_combout\ & (!\div|ShiftLeft2~14_combout\ & (\div|p~2_combout\ & \div|ShiftLeft1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|p~3_combout\,
	datab => \div|ShiftLeft2~14_combout\,
	datac => \div|p~2_combout\,
	datad => \div|ShiftLeft1~22_combout\,
	combout => \div|ShiftLeft1~24_combout\);

-- Location: LCCOMB_X34_Y58_N18
\div|ShiftLeft1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft1~19_combout\ = (\div|p~1_combout\) # ((\div|p~0_combout\) # (!\div|ShiftLeft2~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|p~1_combout\,
	datac => \div|p~0_combout\,
	datad => \div|ShiftLeft2~17_combout\,
	combout => \div|ShiftLeft1~19_combout\);

-- Location: LCCOMB_X34_Y61_N24
\div|Add26~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add26~36_combout\ = ((\div|ShiftLeft1~19_combout\ $ (\div|q\(12) $ (\div|Add26~32\)))) # (GND)
-- \div|Add26~37\ = CARRY((\div|ShiftLeft1~19_combout\ & (\div|q\(12) & !\div|Add26~32\)) # (!\div|ShiftLeft1~19_combout\ & ((\div|q\(12)) # (!\div|Add26~32\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft1~19_combout\,
	datab => \div|q\(12),
	datad => VCC,
	cin => \div|Add26~32\,
	combout => \div|Add26~36_combout\,
	cout => \div|Add26~37\);

-- Location: LCCOMB_X35_Y61_N26
\div|Add26~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add26~38_combout\ = (\div|curr_state.l00p~q\ & (((\div|Add26~36_combout\)))) # (!\div|curr_state.l00p~q\ & (\div|curr_state.b_eq_1~q\ & (\dividend[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|curr_state.l00p~q\,
	datab => \div|curr_state.b_eq_1~q\,
	datac => \dividend[12]~input_o\,
	datad => \div|Add26~36_combout\,
	combout => \div|Add26~38_combout\);

-- Location: LCCOMB_X35_Y61_N2
\div|q_next[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|q_next\(12) = (GLOBAL(\div|curr_state~7clkctrl_outclk\) & (\div|q_next\(12))) # (!GLOBAL(\div|curr_state~7clkctrl_outclk\) & ((\div|Add26~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|q_next\(12),
	datac => \div|Add26~38_combout\,
	datad => \div|curr_state~7clkctrl_outclk\,
	combout => \div|q_next\(12));

-- Location: LCCOMB_X35_Y61_N24
\div|q~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|q~12_combout\ = (!\start~input_o\ & \div|q_next\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datad => \div|q_next\(12),
	combout => \div|q~12_combout\);

-- Location: FF_X35_Y61_N25
\div|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|q~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q\(12));

-- Location: LCCOMB_X34_Y61_N26
\div|Add26~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add26~39_combout\ = (\div|ShiftLeft1~24_combout\ & ((\div|q\(13) & (\div|Add26~37\ & VCC)) # (!\div|q\(13) & (!\div|Add26~37\)))) # (!\div|ShiftLeft1~24_combout\ & ((\div|q\(13) & (!\div|Add26~37\)) # (!\div|q\(13) & ((\div|Add26~37\) # (GND)))))
-- \div|Add26~40\ = CARRY((\div|ShiftLeft1~24_combout\ & (!\div|q\(13) & !\div|Add26~37\)) # (!\div|ShiftLeft1~24_combout\ & ((!\div|Add26~37\) # (!\div|q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft1~24_combout\,
	datab => \div|q\(13),
	datad => VCC,
	cin => \div|Add26~37\,
	combout => \div|Add26~39_combout\,
	cout => \div|Add26~40\);

-- Location: LCCOMB_X35_Y61_N8
\div|Add26~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add26~47_combout\ = (\div|curr_state.l00p~q\ & (((\div|Add26~39_combout\)))) # (!\div|curr_state.l00p~q\ & (\div|curr_state.b_eq_1~q\ & ((\dividend[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|curr_state.l00p~q\,
	datab => \div|curr_state.b_eq_1~q\,
	datac => \div|Add26~39_combout\,
	datad => \dividend[13]~input_o\,
	combout => \div|Add26~47_combout\);

-- Location: LCCOMB_X35_Y61_N18
\div|q_next[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|q_next\(13) = (GLOBAL(\div|curr_state~7clkctrl_outclk\) & (\div|q_next\(13))) # (!GLOBAL(\div|curr_state~7clkctrl_outclk\) & ((\div|Add26~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|q_next\(13),
	datac => \div|Add26~47_combout\,
	datad => \div|curr_state~7clkctrl_outclk\,
	combout => \div|q_next\(13));

-- Location: LCCOMB_X35_Y61_N28
\div|q~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|q~15_combout\ = (!\start~input_o\ & \div|q_next\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datad => \div|q_next\(13),
	combout => \div|q~15_combout\);

-- Location: FF_X35_Y61_N29
\div|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|q~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q\(13));

-- Location: LCCOMB_X32_Y59_N24
\div|Add28~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add28~25_combout\ = (\div|Add28~24\ & ((\div|internal_sign~0_combout\ $ (\div|q\(12))))) # (!\div|Add28~24\ & (\div|internal_sign~0_combout\ $ (\div|q\(12) $ (VCC))))
-- \div|Add28~26\ = CARRY((!\div|Add28~24\ & (\div|internal_sign~0_combout\ $ (\div|q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|internal_sign~0_combout\,
	datab => \div|q\(12),
	datad => VCC,
	cin => \div|Add28~24\,
	combout => \div|Add28~25_combout\,
	cout => \div|Add28~26\);

-- Location: LCCOMB_X32_Y59_N26
\div|Add28~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add28~27_combout\ = (\div|Add28~26\ & (\div|internal_sign~0_combout\ $ ((!\div|q\(13))))) # (!\div|Add28~26\ & ((\div|internal_sign~0_combout\ $ (\div|q\(13))) # (GND)))
-- \div|Add28~28\ = CARRY((\div|internal_sign~0_combout\ $ (!\div|q\(13))) # (!\div|Add28~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|internal_sign~0_combout\,
	datab => \div|q\(13),
	datad => VCC,
	cin => \div|Add28~26\,
	combout => \div|Add28~27_combout\,
	cout => \div|Add28~28\);

-- Location: LCCOMB_X31_Y59_N26
\div|quotient[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|quotient\(13) = (GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & (\div|Add28~27_combout\)) # (!GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & ((\div|quotient\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|Add28~27_combout\,
	datac => \div|quotient\(13),
	datad => \div|curr_state.epistemology~clkctrl_outclk\,
	combout => \div|quotient\(13));

-- Location: LCCOMB_X31_Y59_N12
\div|quotient[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|quotient\(12) = (GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & ((\div|Add28~25_combout\))) # (!GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & (\div|quotient\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|quotient\(12),
	datac => \div|Add28~25_combout\,
	datad => \div|curr_state.epistemology~clkctrl_outclk\,
	combout => \div|quotient\(12));

-- Location: LCCOMB_X35_Y61_N4
\div|ShiftLeft1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft1~21_combout\ = ((\div|p~0_combout\) # (!\div|ShiftLeft2~17_combout\)) # (!\div|p~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|p~1_combout\,
	datac => \div|p~0_combout\,
	datad => \div|ShiftLeft2~17_combout\,
	combout => \div|ShiftLeft1~21_combout\);

-- Location: LCCOMB_X34_Y61_N28
\div|Add26~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add26~41_combout\ = ((\div|ShiftLeft1~21_combout\ $ (\div|q\(14) $ (\div|Add26~40\)))) # (GND)
-- \div|Add26~42\ = CARRY((\div|ShiftLeft1~21_combout\ & (\div|q\(14) & !\div|Add26~40\)) # (!\div|ShiftLeft1~21_combout\ & ((\div|q\(14)) # (!\div|Add26~40\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|ShiftLeft1~21_combout\,
	datab => \div|q\(14),
	datad => VCC,
	cin => \div|Add26~40\,
	combout => \div|Add26~41_combout\,
	cout => \div|Add26~42\);

-- Location: LCCOMB_X35_Y61_N14
\div|Add26~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add26~46_combout\ = (\div|curr_state.l00p~q\ & (((\div|Add26~41_combout\)))) # (!\div|curr_state.l00p~q\ & (\div|curr_state.b_eq_1~q\ & (\dividend[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|curr_state.l00p~q\,
	datab => \div|curr_state.b_eq_1~q\,
	datac => \dividend[14]~input_o\,
	datad => \div|Add26~41_combout\,
	combout => \div|Add26~46_combout\);

-- Location: LCCOMB_X35_Y61_N16
\div|q_next[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|q_next\(14) = (GLOBAL(\div|curr_state~7clkctrl_outclk\) & (\div|q_next\(14))) # (!GLOBAL(\div|curr_state~7clkctrl_outclk\) & ((\div|Add26~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|q_next\(14),
	datac => \div|Add26~46_combout\,
	datad => \div|curr_state~7clkctrl_outclk\,
	combout => \div|q_next\(14));

-- Location: LCCOMB_X35_Y61_N10
\div|q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|q~14_combout\ = (!\start~input_o\ & \div|q_next\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datad => \div|q_next\(14),
	combout => \div|q~14_combout\);

-- Location: FF_X35_Y61_N11
\div|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|q~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q\(14));

-- Location: LCCOMB_X32_Y59_N28
\div|Add28~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add28~29_combout\ = (\div|Add28~28\ & ((\div|q\(14) $ (\div|internal_sign~0_combout\)))) # (!\div|Add28~28\ & (\div|q\(14) $ (\div|internal_sign~0_combout\ $ (VCC))))
-- \div|Add28~30\ = CARRY((!\div|Add28~28\ & (\div|q\(14) $ (\div|internal_sign~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|q\(14),
	datab => \div|internal_sign~0_combout\,
	datad => VCC,
	cin => \div|Add28~28\,
	combout => \div|Add28~29_combout\,
	cout => \div|Add28~30\);

-- Location: LCCOMB_X31_Y59_N4
\div|quotient[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|quotient\(14) = (GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & ((\div|Add28~29_combout\))) # (!GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & (\div|quotient\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|quotient\(14),
	datac => \div|curr_state.epistemology~clkctrl_outclk\,
	datad => \div|Add28~29_combout\,
	combout => \div|quotient\(14));

-- Location: LCCOMB_X35_Y58_N16
\div|ShiftLeft1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|ShiftLeft1~20_combout\ = (\div|p~1_combout\ & (\div|ShiftLeft2~17_combout\ & \div|p~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|p~1_combout\,
	datab => \div|ShiftLeft2~17_combout\,
	datac => \div|p~0_combout\,
	combout => \div|ShiftLeft1~20_combout\);

-- Location: LCCOMB_X34_Y61_N30
\div|Add26~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add26~43_combout\ = \div|q\(15) $ (\div|Add26~42\ $ (\div|ShiftLeft1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|q\(15),
	datad => \div|ShiftLeft1~20_combout\,
	cin => \div|Add26~42\,
	combout => \div|Add26~43_combout\);

-- Location: LCCOMB_X33_Y59_N8
\div|Add26~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add26~45_combout\ = (\div|curr_state.l00p~q\ & (((\div|Add26~43_combout\)))) # (!\div|curr_state.l00p~q\ & (\div|curr_state.b_eq_1~q\ & ((\dividend[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|curr_state.l00p~q\,
	datab => \div|curr_state.b_eq_1~q\,
	datac => \div|Add26~43_combout\,
	datad => \dividend[15]~input_o\,
	combout => \div|Add26~45_combout\);

-- Location: LCCOMB_X33_Y59_N24
\div|q_next[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|q_next\(15) = (GLOBAL(\div|curr_state~7clkctrl_outclk\) & (\div|q_next\(15))) # (!GLOBAL(\div|curr_state~7clkctrl_outclk\) & ((\div|Add26~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|q_next\(15),
	datac => \div|Add26~45_combout\,
	datad => \div|curr_state~7clkctrl_outclk\,
	combout => \div|q_next\(15));

-- Location: LCCOMB_X33_Y59_N26
\div|q~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|q~13_combout\ = (!\start~input_o\ & \div|q_next\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \start~input_o\,
	datad => \div|q_next\(15),
	combout => \div|q~13_combout\);

-- Location: FF_X33_Y59_N27
\div|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|q~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q\(15));

-- Location: LCCOMB_X32_Y59_N30
\div|Add28~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add28~31_combout\ = \div|internal_sign~0_combout\ $ (\div|Add28~30\ $ (\div|q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|internal_sign~0_combout\,
	datad => \div|q\(15),
	cin => \div|Add28~30\,
	combout => \div|Add28~31_combout\);

-- Location: LCCOMB_X31_Y59_N6
\div|quotient[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|quotient\(15) = (GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & ((\div|Add28~31_combout\))) # (!GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & (\div|quotient\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|quotient\(15),
	datac => \div|Add28~31_combout\,
	datad => \div|curr_state.epistemology~clkctrl_outclk\,
	combout => \div|quotient\(15));

-- Location: LCCOMB_X28_Y59_N14
\quotient_gen:3:quotient_dcd|segments_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient_gen:3:quotient_dcd|segments_out[0]~0_combout\ = (\div|quotient\(14) & (!\div|quotient\(13) & (\div|quotient\(12) $ (!\div|quotient\(15))))) # (!\div|quotient\(14) & (\div|quotient\(12) & (\div|quotient\(13) $ (!\div|quotient\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|quotient\(13),
	datab => \div|quotient\(12),
	datac => \div|quotient\(14),
	datad => \div|quotient\(15),
	combout => \quotient_gen:3:quotient_dcd|segments_out[0]~0_combout\);

-- Location: LCCOMB_X28_Y59_N4
\quotient_gen:3:quotient_dcd|segments_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient_gen:3:quotient_dcd|segments_out[1]~1_combout\ = (\div|quotient\(13) & ((\div|quotient\(12) & ((\div|quotient\(15)))) # (!\div|quotient\(12) & (\div|quotient\(14))))) # (!\div|quotient\(13) & (\div|quotient\(14) & (\div|quotient\(12) $ 
-- (\div|quotient\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|quotient\(13),
	datab => \div|quotient\(12),
	datac => \div|quotient\(14),
	datad => \div|quotient\(15),
	combout => \quotient_gen:3:quotient_dcd|segments_out[1]~1_combout\);

-- Location: LCCOMB_X28_Y59_N18
\quotient_gen:3:quotient_dcd|segments_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient_gen:3:quotient_dcd|segments_out[2]~2_combout\ = (\div|quotient\(14) & (\div|quotient\(15) & ((\div|quotient\(13)) # (!\div|quotient\(12))))) # (!\div|quotient\(14) & (\div|quotient\(13) & (!\div|quotient\(12) & !\div|quotient\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|quotient\(13),
	datab => \div|quotient\(12),
	datac => \div|quotient\(14),
	datad => \div|quotient\(15),
	combout => \quotient_gen:3:quotient_dcd|segments_out[2]~2_combout\);

-- Location: LCCOMB_X28_Y59_N24
\quotient_gen:3:quotient_dcd|segments_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient_gen:3:quotient_dcd|segments_out[3]~3_combout\ = (\div|quotient\(13) & ((\div|quotient\(12) & (\div|quotient\(14))) # (!\div|quotient\(12) & (!\div|quotient\(14) & \div|quotient\(15))))) # (!\div|quotient\(13) & (!\div|quotient\(15) & 
-- (\div|quotient\(12) $ (\div|quotient\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|quotient\(13),
	datab => \div|quotient\(12),
	datac => \div|quotient\(14),
	datad => \div|quotient\(15),
	combout => \quotient_gen:3:quotient_dcd|segments_out[3]~3_combout\);

-- Location: LCCOMB_X31_Y62_N22
\quotient_gen:3:quotient_dcd|segments_out[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient_gen:3:quotient_dcd|segments_out[4]~4_combout\ = (\div|quotient\(13) & (!\div|quotient\(15) & ((\div|quotient\(12))))) # (!\div|quotient\(13) & ((\div|quotient\(14) & (!\div|quotient\(15))) # (!\div|quotient\(14) & ((\div|quotient\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|quotient\(13),
	datab => \div|quotient\(15),
	datac => \div|quotient\(14),
	datad => \div|quotient\(12),
	combout => \quotient_gen:3:quotient_dcd|segments_out[4]~4_combout\);

-- Location: LCCOMB_X31_Y62_N20
\quotient_gen:3:quotient_dcd|segments_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient_gen:3:quotient_dcd|segments_out[5]~5_combout\ = (\div|quotient\(13) & (!\div|quotient\(15) & ((\div|quotient\(12)) # (!\div|quotient\(14))))) # (!\div|quotient\(13) & (\div|quotient\(12) & (\div|quotient\(15) $ (!\div|quotient\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|quotient\(13),
	datab => \div|quotient\(15),
	datac => \div|quotient\(14),
	datad => \div|quotient\(12),
	combout => \quotient_gen:3:quotient_dcd|segments_out[5]~5_combout\);

-- Location: LCCOMB_X28_Y59_N22
\quotient_gen:3:quotient_dcd|segments_out[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \quotient_gen:3:quotient_dcd|segments_out[6]~6_combout\ = (\div|quotient\(12) & ((\div|quotient\(15)) # (\div|quotient\(13) $ (\div|quotient\(14))))) # (!\div|quotient\(12) & ((\div|quotient\(13)) # (\div|quotient\(14) $ (\div|quotient\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|quotient\(13),
	datab => \div|quotient\(12),
	datac => \div|quotient\(14),
	datad => \div|quotient\(15),
	combout => \quotient_gen:3:quotient_dcd|segments_out[6]~6_combout\);

-- Location: LCCOMB_X41_Y59_N6
\div|Add29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add29~0_combout\ = \dividend[15]~input_o\ $ (\div|a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dividend[15]~input_o\,
	datad => \div|a\(0),
	combout => \div|Add29~0_combout\);

-- Location: LCCOMB_X41_Y59_N16
\div|Add29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add29~1_combout\ = (\div|Add29~0_combout\ & (\dividend[15]~input_o\ $ (VCC))) # (!\div|Add29~0_combout\ & (\dividend[15]~input_o\ & VCC))
-- \div|Add29~2\ = CARRY((\div|Add29~0_combout\ & \dividend[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add29~0_combout\,
	datab => \dividend[15]~input_o\,
	datad => VCC,
	combout => \div|Add29~1_combout\,
	cout => \div|Add29~2\);

-- Location: LCCOMB_X41_Y59_N18
\div|Add29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add29~3_combout\ = (\div|Add29~2\ & (\dividend[15]~input_o\ $ ((!\div|a\(1))))) # (!\div|Add29~2\ & ((\dividend[15]~input_o\ $ (\div|a\(1))) # (GND)))
-- \div|Add29~4\ = CARRY((\dividend[15]~input_o\ $ (!\div|a\(1))) # (!\div|Add29~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[15]~input_o\,
	datab => \div|a\(1),
	datad => VCC,
	cin => \div|Add29~2\,
	combout => \div|Add29~3_combout\,
	cout => \div|Add29~4\);

-- Location: LCCOMB_X41_Y59_N20
\div|Add29~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add29~5_combout\ = (\div|Add29~4\ & ((\div|a\(2) $ (\dividend[15]~input_o\)))) # (!\div|Add29~4\ & (\div|a\(2) $ (\dividend[15]~input_o\ $ (VCC))))
-- \div|Add29~6\ = CARRY((!\div|Add29~4\ & (\div|a\(2) $ (\dividend[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(2),
	datab => \dividend[15]~input_o\,
	datad => VCC,
	cin => \div|Add29~4\,
	combout => \div|Add29~5_combout\,
	cout => \div|Add29~6\);

-- Location: LCCOMB_X41_Y59_N22
\div|Add29~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add29~7_combout\ = (\div|Add29~6\ & (\dividend[15]~input_o\ $ ((!\div|a\(3))))) # (!\div|Add29~6\ & ((\dividend[15]~input_o\ $ (\div|a\(3))) # (GND)))
-- \div|Add29~8\ = CARRY((\dividend[15]~input_o\ $ (!\div|a\(3))) # (!\div|Add29~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[15]~input_o\,
	datab => \div|a\(3),
	datad => VCC,
	cin => \div|Add29~6\,
	combout => \div|Add29~7_combout\,
	cout => \div|Add29~8\);

-- Location: LCCOMB_X41_Y59_N12
\div|remainder[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|remainder\(3) = (GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & ((\div|Add29~7_combout\))) # (!GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & (\div|remainder\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|remainder\(3),
	datac => \div|Add29~7_combout\,
	datad => \div|curr_state.epistemology~clkctrl_outclk\,
	combout => \div|remainder\(3));

-- Location: LCCOMB_X42_Y59_N4
\div|remainder[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|remainder\(1) = (GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & (\div|Add29~3_combout\)) # (!GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & ((\div|remainder\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|Add29~3_combout\,
	datac => \div|remainder\(1),
	datad => \div|curr_state.epistemology~clkctrl_outclk\,
	combout => \div|remainder\(1));

-- Location: LCCOMB_X42_Y59_N26
\div|remainder[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|remainder\(0) = (GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & (\div|Add29~1_combout\)) # (!GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & ((\div|remainder\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Add29~1_combout\,
	datac => \div|remainder\(0),
	datad => \div|curr_state.epistemology~clkctrl_outclk\,
	combout => \div|remainder\(0));

-- Location: LCCOMB_X41_Y59_N14
\div|remainder[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|remainder\(2) = (GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & (\div|Add29~5_combout\)) # (!GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & ((\div|remainder\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|Add29~5_combout\,
	datac => \div|remainder\(2),
	datad => \div|curr_state.epistemology~clkctrl_outclk\,
	combout => \div|remainder\(2));

-- Location: LCCOMB_X42_Y59_N12
\rem_gen:0:rem_dcd|segments_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rem_gen:0:rem_dcd|segments_out[0]~0_combout\ = (\div|remainder\(3) & (\div|remainder\(0) & (\div|remainder\(1) $ (\div|remainder\(2))))) # (!\div|remainder\(3) & (!\div|remainder\(1) & (\div|remainder\(0) $ (\div|remainder\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|remainder\(3),
	datab => \div|remainder\(1),
	datac => \div|remainder\(0),
	datad => \div|remainder\(2),
	combout => \rem_gen:0:rem_dcd|segments_out[0]~0_combout\);

-- Location: LCCOMB_X42_Y59_N22
\rem_gen:0:rem_dcd|segments_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rem_gen:0:rem_dcd|segments_out[1]~1_combout\ = (\div|remainder\(3) & ((\div|remainder\(0) & (\div|remainder\(1))) # (!\div|remainder\(0) & ((\div|remainder\(2)))))) # (!\div|remainder\(3) & (\div|remainder\(2) & (\div|remainder\(1) $ 
-- (\div|remainder\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|remainder\(3),
	datab => \div|remainder\(1),
	datac => \div|remainder\(0),
	datad => \div|remainder\(2),
	combout => \rem_gen:0:rem_dcd|segments_out[1]~1_combout\);

-- Location: LCCOMB_X42_Y59_N20
\rem_gen:0:rem_dcd|segments_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rem_gen:0:rem_dcd|segments_out[2]~2_combout\ = (\div|remainder\(3) & (\div|remainder\(2) & ((\div|remainder\(1)) # (!\div|remainder\(0))))) # (!\div|remainder\(3) & (\div|remainder\(1) & (!\div|remainder\(0) & !\div|remainder\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|remainder\(3),
	datab => \div|remainder\(1),
	datac => \div|remainder\(0),
	datad => \div|remainder\(2),
	combout => \rem_gen:0:rem_dcd|segments_out[2]~2_combout\);

-- Location: LCCOMB_X42_Y59_N14
\rem_gen:0:rem_dcd|segments_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rem_gen:0:rem_dcd|segments_out[3]~3_combout\ = (\div|remainder\(1) & ((\div|remainder\(0) & ((\div|remainder\(2)))) # (!\div|remainder\(0) & (\div|remainder\(3) & !\div|remainder\(2))))) # (!\div|remainder\(1) & (!\div|remainder\(3) & (\div|remainder\(0) 
-- $ (\div|remainder\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|remainder\(3),
	datab => \div|remainder\(1),
	datac => \div|remainder\(0),
	datad => \div|remainder\(2),
	combout => \rem_gen:0:rem_dcd|segments_out[3]~3_combout\);

-- Location: LCCOMB_X42_Y59_N28
\rem_gen:0:rem_dcd|segments_out[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rem_gen:0:rem_dcd|segments_out[4]~4_combout\ = (\div|remainder\(1) & (!\div|remainder\(3) & (\div|remainder\(0)))) # (!\div|remainder\(1) & ((\div|remainder\(2) & (!\div|remainder\(3))) # (!\div|remainder\(2) & ((\div|remainder\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|remainder\(3),
	datab => \div|remainder\(1),
	datac => \div|remainder\(0),
	datad => \div|remainder\(2),
	combout => \rem_gen:0:rem_dcd|segments_out[4]~4_combout\);

-- Location: LCCOMB_X42_Y59_N18
\rem_gen:0:rem_dcd|segments_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rem_gen:0:rem_dcd|segments_out[5]~5_combout\ = (\div|remainder\(1) & (!\div|remainder\(3) & ((\div|remainder\(0)) # (!\div|remainder\(2))))) # (!\div|remainder\(1) & (\div|remainder\(0) & (\div|remainder\(3) $ (!\div|remainder\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|remainder\(3),
	datab => \div|remainder\(1),
	datac => \div|remainder\(0),
	datad => \div|remainder\(2),
	combout => \rem_gen:0:rem_dcd|segments_out[5]~5_combout\);

-- Location: LCCOMB_X42_Y59_N24
\rem_gen:0:rem_dcd|segments_out[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rem_gen:0:rem_dcd|segments_out[6]~6_combout\ = (\div|remainder\(0) & ((\div|remainder\(3)) # (\div|remainder\(1) $ (\div|remainder\(2))))) # (!\div|remainder\(0) & ((\div|remainder\(1)) # (\div|remainder\(3) $ (\div|remainder\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|remainder\(3),
	datab => \div|remainder\(1),
	datac => \div|remainder\(0),
	datad => \div|remainder\(2),
	combout => \rem_gen:0:rem_dcd|segments_out[6]~6_combout\);

-- Location: LCCOMB_X41_Y59_N24
\div|Add29~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add29~9_combout\ = (\div|Add29~8\ & ((\dividend[15]~input_o\ $ (\div|a\(4))))) # (!\div|Add29~8\ & (\dividend[15]~input_o\ $ (\div|a\(4) $ (VCC))))
-- \div|Add29~10\ = CARRY((!\div|Add29~8\ & (\dividend[15]~input_o\ $ (\div|a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[15]~input_o\,
	datab => \div|a\(4),
	datad => VCC,
	cin => \div|Add29~8\,
	combout => \div|Add29~9_combout\,
	cout => \div|Add29~10\);

-- Location: LCCOMB_X41_Y59_N26
\div|Add29~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add29~11_combout\ = (\div|Add29~10\ & (\div|a\(5) $ ((!\dividend[15]~input_o\)))) # (!\div|Add29~10\ & ((\div|a\(5) $ (\dividend[15]~input_o\)) # (GND)))
-- \div|Add29~12\ = CARRY((\div|a\(5) $ (!\dividend[15]~input_o\)) # (!\div|Add29~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(5),
	datab => \dividend[15]~input_o\,
	datad => VCC,
	cin => \div|Add29~10\,
	combout => \div|Add29~11_combout\,
	cout => \div|Add29~12\);

-- Location: LCCOMB_X41_Y59_N28
\div|Add29~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add29~13_combout\ = (\div|Add29~12\ & ((\div|a\(6) $ (\dividend[15]~input_o\)))) # (!\div|Add29~12\ & (\div|a\(6) $ (\dividend[15]~input_o\ $ (VCC))))
-- \div|Add29~14\ = CARRY((!\div|Add29~12\ & (\div|a\(6) $ (\dividend[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|a\(6),
	datab => \dividend[15]~input_o\,
	datad => VCC,
	cin => \div|Add29~12\,
	combout => \div|Add29~13_combout\,
	cout => \div|Add29~14\);

-- Location: LCCOMB_X41_Y59_N30
\div|Add29~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Add29~15_combout\ = \dividend[15]~input_o\ $ (\div|Add29~14\ $ (\div|a\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dividend[15]~input_o\,
	datad => \div|a\(7),
	cin => \div|Add29~14\,
	combout => \div|Add29~15_combout\);

-- Location: LCCOMB_X41_Y59_N2
\div|remainder[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|remainder\(7) = (GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & ((\div|Add29~15_combout\))) # (!GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & (\div|remainder\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|remainder\(7),
	datac => \div|Add29~15_combout\,
	datad => \div|curr_state.epistemology~clkctrl_outclk\,
	combout => \div|remainder\(7));

-- Location: LCCOMB_X41_Y59_N8
\div|remainder[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|remainder\(6) = (GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & (\div|Add29~13_combout\)) # (!GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & ((\div|remainder\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|Add29~13_combout\,
	datac => \div|remainder\(6),
	datad => \div|curr_state.epistemology~clkctrl_outclk\,
	combout => \div|remainder\(6));

-- Location: LCCOMB_X41_Y59_N10
\div|remainder[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|remainder\(5) = (GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & ((\div|Add29~11_combout\))) # (!GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & (\div|remainder\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|remainder\(5),
	datac => \div|Add29~11_combout\,
	datad => \div|curr_state.epistemology~clkctrl_outclk\,
	combout => \div|remainder\(5));

-- Location: LCCOMB_X41_Y59_N4
\div|remainder[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|remainder\(4) = (GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & (\div|Add29~9_combout\)) # (!GLOBAL(\div|curr_state.epistemology~clkctrl_outclk\) & ((\div|remainder\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|Add29~9_combout\,
	datac => \div|remainder\(4),
	datad => \div|curr_state.epistemology~clkctrl_outclk\,
	combout => \div|remainder\(4));

-- Location: LCCOMB_X55_Y69_N4
\rem_gen:1:rem_dcd|segments_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rem_gen:1:rem_dcd|segments_out[0]~0_combout\ = (\div|remainder\(7) & (\div|remainder\(4) & (\div|remainder\(6) $ (\div|remainder\(5))))) # (!\div|remainder\(7) & (!\div|remainder\(5) & (\div|remainder\(6) $ (\div|remainder\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|remainder\(7),
	datab => \div|remainder\(6),
	datac => \div|remainder\(5),
	datad => \div|remainder\(4),
	combout => \rem_gen:1:rem_dcd|segments_out[0]~0_combout\);

-- Location: LCCOMB_X55_Y69_N26
\rem_gen:1:rem_dcd|segments_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rem_gen:1:rem_dcd|segments_out[1]~1_combout\ = (\div|remainder\(7) & ((\div|remainder\(4) & ((\div|remainder\(5)))) # (!\div|remainder\(4) & (\div|remainder\(6))))) # (!\div|remainder\(7) & (\div|remainder\(6) & (\div|remainder\(5) $ 
-- (\div|remainder\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|remainder\(7),
	datab => \div|remainder\(6),
	datac => \div|remainder\(5),
	datad => \div|remainder\(4),
	combout => \rem_gen:1:rem_dcd|segments_out[1]~1_combout\);

-- Location: LCCOMB_X55_Y69_N8
\rem_gen:1:rem_dcd|segments_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rem_gen:1:rem_dcd|segments_out[2]~2_combout\ = (\div|remainder\(7) & (\div|remainder\(6) & ((\div|remainder\(5)) # (!\div|remainder\(4))))) # (!\div|remainder\(7) & (!\div|remainder\(6) & (\div|remainder\(5) & !\div|remainder\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|remainder\(7),
	datab => \div|remainder\(6),
	datac => \div|remainder\(5),
	datad => \div|remainder\(4),
	combout => \rem_gen:1:rem_dcd|segments_out[2]~2_combout\);

-- Location: LCCOMB_X55_Y69_N6
\rem_gen:1:rem_dcd|segments_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rem_gen:1:rem_dcd|segments_out[3]~3_combout\ = (\div|remainder\(5) & ((\div|remainder\(6) & ((\div|remainder\(4)))) # (!\div|remainder\(6) & (\div|remainder\(7) & !\div|remainder\(4))))) # (!\div|remainder\(5) & (!\div|remainder\(7) & (\div|remainder\(6) 
-- $ (\div|remainder\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|remainder\(7),
	datab => \div|remainder\(6),
	datac => \div|remainder\(5),
	datad => \div|remainder\(4),
	combout => \rem_gen:1:rem_dcd|segments_out[3]~3_combout\);

-- Location: LCCOMB_X55_Y69_N20
\rem_gen:1:rem_dcd|segments_out[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rem_gen:1:rem_dcd|segments_out[4]~4_combout\ = (\div|remainder\(5) & (!\div|remainder\(7) & ((\div|remainder\(4))))) # (!\div|remainder\(5) & ((\div|remainder\(6) & (!\div|remainder\(7))) # (!\div|remainder\(6) & ((\div|remainder\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|remainder\(7),
	datab => \div|remainder\(6),
	datac => \div|remainder\(5),
	datad => \div|remainder\(4),
	combout => \rem_gen:1:rem_dcd|segments_out[4]~4_combout\);

-- Location: LCCOMB_X55_Y69_N10
\rem_gen:1:rem_dcd|segments_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rem_gen:1:rem_dcd|segments_out[5]~5_combout\ = (\div|remainder\(6) & (\div|remainder\(4) & (\div|remainder\(7) $ (\div|remainder\(5))))) # (!\div|remainder\(6) & (!\div|remainder\(7) & ((\div|remainder\(5)) # (\div|remainder\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|remainder\(7),
	datab => \div|remainder\(6),
	datac => \div|remainder\(5),
	datad => \div|remainder\(4),
	combout => \rem_gen:1:rem_dcd|segments_out[5]~5_combout\);

-- Location: LCCOMB_X55_Y69_N12
\rem_gen:1:rem_dcd|segments_out[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rem_gen:1:rem_dcd|segments_out[6]~6_combout\ = (\div|remainder\(4) & ((\div|remainder\(7)) # (\div|remainder\(6) $ (\div|remainder\(5))))) # (!\div|remainder\(4) & ((\div|remainder\(5)) # (\div|remainder\(7) $ (\div|remainder\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|remainder\(7),
	datab => \div|remainder\(6),
	datac => \div|remainder\(5),
	datad => \div|remainder\(4),
	combout => \rem_gen:1:rem_dcd|segments_out[6]~6_combout\);

-- Location: LCCOMB_X40_Y60_N26
\div|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|Equal1~2_combout\ = (\div|Equal1~1_combout\ & !\divisor[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Equal1~1_combout\,
	datad => \divisor[0]~input_o\,
	combout => \div|Equal1~2_combout\);

-- Location: LCCOMB_X40_Y60_N30
\div|overflow\ : cycloneive_lcell_comb
-- Equation(s):
-- \div|overflow~combout\ = (GLOBAL(\div|curr_state.init~clkctrl_outclk\) & (\div|Equal1~2_combout\)) # (!GLOBAL(\div|curr_state.init~clkctrl_outclk\) & ((\div|overflow~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|Equal1~2_combout\,
	datac => \div|overflow~combout\,
	datad => \div|curr_state.init~clkctrl_outclk\,
	combout => \div|overflow~combout\);

ww_dividend_led(0) <= \dividend_led[0]~output_o\;

ww_dividend_led(1) <= \dividend_led[1]~output_o\;

ww_dividend_led(2) <= \dividend_led[2]~output_o\;

ww_dividend_led(3) <= \dividend_led[3]~output_o\;

ww_dividend_led(4) <= \dividend_led[4]~output_o\;

ww_dividend_led(5) <= \dividend_led[5]~output_o\;

ww_dividend_led(6) <= \dividend_led[6]~output_o\;

ww_dividend_led(7) <= \dividend_led[7]~output_o\;

ww_dividend_led(8) <= \dividend_led[8]~output_o\;

ww_dividend_led(9) <= \dividend_led[9]~output_o\;

ww_dividend_led(10) <= \dividend_led[10]~output_o\;

ww_dividend_led(11) <= \dividend_led[11]~output_o\;

ww_dividend_led(12) <= \dividend_led[12]~output_o\;

ww_dividend_led(13) <= \dividend_led[13]~output_o\;

ww_dividend_led(14) <= \dividend_led[14]~output_o\;

ww_dividend_led(15) <= \dividend_led[15]~output_o\;

ww_dividend_led(16) <= \dividend_led[16]~output_o\;

ww_dividend_led(17) <= \dividend_led[17]~output_o\;

ww_dividend_led(18) <= \dividend_led[18]~output_o\;

ww_dividend_led(19) <= \dividend_led[19]~output_o\;

ww_dividend_led(20) <= \dividend_led[20]~output_o\;

ww_dividend_led(21) <= \dividend_led[21]~output_o\;

ww_dividend_led(22) <= \dividend_led[22]~output_o\;

ww_dividend_led(23) <= \dividend_led[23]~output_o\;

ww_dividend_led(24) <= \dividend_led[24]~output_o\;

ww_dividend_led(25) <= \dividend_led[25]~output_o\;

ww_dividend_led(26) <= \dividend_led[26]~output_o\;

ww_dividend_led(27) <= \dividend_led[27]~output_o\;

ww_divisor_led(0) <= \divisor_led[0]~output_o\;

ww_divisor_led(1) <= \divisor_led[1]~output_o\;

ww_divisor_led(2) <= \divisor_led[2]~output_o\;

ww_divisor_led(3) <= \divisor_led[3]~output_o\;

ww_divisor_led(4) <= \divisor_led[4]~output_o\;

ww_divisor_led(5) <= \divisor_led[5]~output_o\;

ww_divisor_led(6) <= \divisor_led[6]~output_o\;

ww_divisor_led(7) <= \divisor_led[7]~output_o\;

ww_divisor_led(8) <= \divisor_led[8]~output_o\;

ww_divisor_led(9) <= \divisor_led[9]~output_o\;

ww_divisor_led(10) <= \divisor_led[10]~output_o\;

ww_divisor_led(11) <= \divisor_led[11]~output_o\;

ww_divisor_led(12) <= \divisor_led[12]~output_o\;

ww_divisor_led(13) <= \divisor_led[13]~output_o\;

ww_quotient_led(0) <= \quotient_led[0]~output_o\;

ww_quotient_led(1) <= \quotient_led[1]~output_o\;

ww_quotient_led(2) <= \quotient_led[2]~output_o\;

ww_quotient_led(3) <= \quotient_led[3]~output_o\;

ww_quotient_led(4) <= \quotient_led[4]~output_o\;

ww_quotient_led(5) <= \quotient_led[5]~output_o\;

ww_quotient_led(6) <= \quotient_led[6]~output_o\;

ww_quotient_led(7) <= \quotient_led[7]~output_o\;

ww_quotient_led(8) <= \quotient_led[8]~output_o\;

ww_quotient_led(9) <= \quotient_led[9]~output_o\;

ww_quotient_led(10) <= \quotient_led[10]~output_o\;

ww_quotient_led(11) <= \quotient_led[11]~output_o\;

ww_quotient_led(12) <= \quotient_led[12]~output_o\;

ww_quotient_led(13) <= \quotient_led[13]~output_o\;

ww_quotient_led(14) <= \quotient_led[14]~output_o\;

ww_quotient_led(15) <= \quotient_led[15]~output_o\;

ww_quotient_led(16) <= \quotient_led[16]~output_o\;

ww_quotient_led(17) <= \quotient_led[17]~output_o\;

ww_quotient_led(18) <= \quotient_led[18]~output_o\;

ww_quotient_led(19) <= \quotient_led[19]~output_o\;

ww_quotient_led(20) <= \quotient_led[20]~output_o\;

ww_quotient_led(21) <= \quotient_led[21]~output_o\;

ww_quotient_led(22) <= \quotient_led[22]~output_o\;

ww_quotient_led(23) <= \quotient_led[23]~output_o\;

ww_quotient_led(24) <= \quotient_led[24]~output_o\;

ww_quotient_led(25) <= \quotient_led[25]~output_o\;

ww_quotient_led(26) <= \quotient_led[26]~output_o\;

ww_quotient_led(27) <= \quotient_led[27]~output_o\;

ww_rem_led(0) <= \rem_led[0]~output_o\;

ww_rem_led(1) <= \rem_led[1]~output_o\;

ww_rem_led(2) <= \rem_led[2]~output_o\;

ww_rem_led(3) <= \rem_led[3]~output_o\;

ww_rem_led(4) <= \rem_led[4]~output_o\;

ww_rem_led(5) <= \rem_led[5]~output_o\;

ww_rem_led(6) <= \rem_led[6]~output_o\;

ww_rem_led(7) <= \rem_led[7]~output_o\;

ww_rem_led(8) <= \rem_led[8]~output_o\;

ww_rem_led(9) <= \rem_led[9]~output_o\;

ww_rem_led(10) <= \rem_led[10]~output_o\;

ww_rem_led(11) <= \rem_led[11]~output_o\;

ww_rem_led(12) <= \rem_led[12]~output_o\;

ww_rem_led(13) <= \rem_led[13]~output_o\;

ww_overflow <= \overflow~output_o\;
END structure;


