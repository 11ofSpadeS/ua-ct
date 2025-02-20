-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "05/23/2023 14:57:02"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
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

ENTITY 	RAM_2P_Demo IS
    PORT (
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(16 DOWNTO 0)
	);
END RAM_2P_Demo;

-- Design Ports Information
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RAM_2P_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(16 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|s_divCounter[0]~26_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[19]~65\ : std_logic;
SIGNAL \inst2|s_divCounter[20]~66_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[20]~67\ : std_logic;
SIGNAL \inst2|s_divCounter[21]~68_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[21]~69\ : std_logic;
SIGNAL \inst2|s_divCounter[22]~70_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[22]~71\ : std_logic;
SIGNAL \inst2|s_divCounter[23]~72_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[23]~73\ : std_logic;
SIGNAL \inst2|s_divCounter[24]~74_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[24]~75\ : std_logic;
SIGNAL \inst2|s_divCounter[25]~76_combout\ : std_logic;
SIGNAL \inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|LessThan0~1_combout\ : std_logic;
SIGNAL \inst2|clkOut~1_combout\ : std_logic;
SIGNAL \inst2|clkOut~2_combout\ : std_logic;
SIGNAL \inst2|clkOut~3_combout\ : std_logic;
SIGNAL \inst2|LessThan0~2_combout\ : std_logic;
SIGNAL \inst2|LessThan0~3_combout\ : std_logic;
SIGNAL \inst2|LessThan0~4_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[0]~27\ : std_logic;
SIGNAL \inst2|s_divCounter[1]~28_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[1]~29\ : std_logic;
SIGNAL \inst2|s_divCounter[2]~30_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[2]~31\ : std_logic;
SIGNAL \inst2|s_divCounter[3]~32_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[3]~33\ : std_logic;
SIGNAL \inst2|s_divCounter[4]~34_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[4]~35\ : std_logic;
SIGNAL \inst2|s_divCounter[5]~36_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[5]~37\ : std_logic;
SIGNAL \inst2|s_divCounter[6]~38_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[6]~39\ : std_logic;
SIGNAL \inst2|s_divCounter[7]~40_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[7]~41\ : std_logic;
SIGNAL \inst2|s_divCounter[8]~42_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[8]~43\ : std_logic;
SIGNAL \inst2|s_divCounter[9]~44_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[9]~45\ : std_logic;
SIGNAL \inst2|s_divCounter[10]~46_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[10]~47\ : std_logic;
SIGNAL \inst2|s_divCounter[11]~48_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[11]~49\ : std_logic;
SIGNAL \inst2|s_divCounter[12]~50_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[12]~51\ : std_logic;
SIGNAL \inst2|s_divCounter[13]~52_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[13]~53\ : std_logic;
SIGNAL \inst2|s_divCounter[14]~54_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[14]~55\ : std_logic;
SIGNAL \inst2|s_divCounter[15]~56_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[15]~57\ : std_logic;
SIGNAL \inst2|s_divCounter[16]~58_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[16]~59\ : std_logic;
SIGNAL \inst2|s_divCounter[17]~60_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[17]~61\ : std_logic;
SIGNAL \inst2|s_divCounter[18]~62_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[18]~63\ : std_logic;
SIGNAL \inst2|s_divCounter[19]~64_combout\ : std_logic;
SIGNAL \inst2|clkOut~0_combout\ : std_logic;
SIGNAL \inst2|clkOut~4_combout\ : std_logic;
SIGNAL \inst2|clkOut~6_combout\ : std_logic;
SIGNAL \inst2|clkOut~5_combout\ : std_logic;
SIGNAL \inst2|clkOut~7_combout\ : std_logic;
SIGNAL \inst2|clkOut~8_combout\ : std_logic;
SIGNAL \inst2|clkOut~9_combout\ : std_logic;
SIGNAL \inst2|clkOut~feeder_combout\ : std_logic;
SIGNAL \inst2|clkOut~q\ : std_logic;
SIGNAL \inst2|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \inst|s_memory~245_combout\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \inst|s_memory~246_combout\ : std_logic;
SIGNAL \inst|s_memory~124_q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst|s_memory~251_combout\ : std_logic;
SIGNAL \inst|s_memory~252_combout\ : std_logic;
SIGNAL \inst|s_memory~140_q\ : std_logic;
SIGNAL \inst|s_memory~247_combout\ : std_logic;
SIGNAL \inst|s_memory~248_combout\ : std_logic;
SIGNAL \inst|s_memory~132_q\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst|s_memory~249_combout\ : std_logic;
SIGNAL \inst|s_memory~250_combout\ : std_logic;
SIGNAL \inst|s_memory~116_q\ : std_logic;
SIGNAL \inst|s_memory~148_combout\ : std_logic;
SIGNAL \inst|s_memory~149_combout\ : std_logic;
SIGNAL \inst|s_memory~100feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~221_combout\ : std_logic;
SIGNAL \inst|s_memory~222_combout\ : std_logic;
SIGNAL \inst|s_memory~100_q\ : std_logic;
SIGNAL \inst|s_memory~227_combout\ : std_logic;
SIGNAL \inst|s_memory~228_combout\ : std_logic;
SIGNAL \inst|s_memory~108_q\ : std_logic;
SIGNAL \inst|s_memory~223_combout\ : std_logic;
SIGNAL \inst|s_memory~224_combout\ : std_logic;
SIGNAL \inst|s_memory~92_q\ : std_logic;
SIGNAL \inst|s_memory~225_combout\ : std_logic;
SIGNAL \inst|s_memory~226_combout\ : std_logic;
SIGNAL \inst|s_memory~84_q\ : std_logic;
SIGNAL \inst|s_memory~141_combout\ : std_logic;
SIGNAL \inst|s_memory~142_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \inst|s_memory~229_combout\ : std_logic;
SIGNAL \inst|s_memory~230_combout\ : std_logic;
SIGNAL \inst|s_memory~60_q\ : std_logic;
SIGNAL \inst|s_memory~231_combout\ : std_logic;
SIGNAL \inst|s_memory~232_combout\ : std_logic;
SIGNAL \inst|s_memory~68_q\ : std_logic;
SIGNAL \inst|s_memory~233_combout\ : std_logic;
SIGNAL \inst|s_memory~234_combout\ : std_logic;
SIGNAL \inst|s_memory~52_q\ : std_logic;
SIGNAL \inst|s_memory~143_combout\ : std_logic;
SIGNAL \inst|s_memory~235_combout\ : std_logic;
SIGNAL \inst|s_memory~236_combout\ : std_logic;
SIGNAL \inst|s_memory~76_q\ : std_logic;
SIGNAL \inst|s_memory~144_combout\ : std_logic;
SIGNAL \inst|s_memory~241_combout\ : std_logic;
SIGNAL \inst|s_memory~242_combout\ : std_logic;
SIGNAL \inst|s_memory~20_q\ : std_logic;
SIGNAL \inst|s_memory~239_combout\ : std_logic;
SIGNAL \inst|s_memory~240_combout\ : std_logic;
SIGNAL \inst|s_memory~28_q\ : std_logic;
SIGNAL \inst|s_memory~145_combout\ : std_logic;
SIGNAL \inst|s_memory~36feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~237_combout\ : std_logic;
SIGNAL \inst|s_memory~238_combout\ : std_logic;
SIGNAL \inst|s_memory~36_q\ : std_logic;
SIGNAL \inst|s_memory~243_combout\ : std_logic;
SIGNAL \inst|s_memory~244_combout\ : std_logic;
SIGNAL \inst|s_memory~44_q\ : std_logic;
SIGNAL \inst|s_memory~146_combout\ : std_logic;
SIGNAL \inst|s_memory~147_combout\ : std_logic;
SIGNAL \inst|s_memory~150_combout\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \inst|s_memory~75feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~75_q\ : std_logic;
SIGNAL \inst|s_memory~43_q\ : std_logic;
SIGNAL \inst|s_memory~158_combout\ : std_logic;
SIGNAL \inst|s_memory~107_q\ : std_logic;
SIGNAL \inst|s_memory~139_q\ : std_logic;
SIGNAL \inst|s_memory~159_combout\ : std_logic;
SIGNAL \inst|s_memory~83_q\ : std_logic;
SIGNAL \inst|s_memory~19_q\ : std_logic;
SIGNAL \inst|s_memory~155_combout\ : std_logic;
SIGNAL \inst|s_memory~115_q\ : std_logic;
SIGNAL \inst|s_memory~51feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~51_q\ : std_logic;
SIGNAL \inst|s_memory~156_combout\ : std_logic;
SIGNAL \inst|s_memory~59feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~59_q\ : std_logic;
SIGNAL \inst|s_memory~27_q\ : std_logic;
SIGNAL \inst|s_memory~153_combout\ : std_logic;
SIGNAL \inst|s_memory~91feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~91_q\ : std_logic;
SIGNAL \inst|s_memory~123_q\ : std_logic;
SIGNAL \inst|s_memory~154_combout\ : std_logic;
SIGNAL \inst|s_memory~157_combout\ : std_logic;
SIGNAL \inst|s_memory~67feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~67_q\ : std_logic;
SIGNAL \inst|s_memory~131_q\ : std_logic;
SIGNAL \inst|s_memory~99_q\ : std_logic;
SIGNAL \inst|s_memory~35_q\ : std_logic;
SIGNAL \inst|s_memory~151_combout\ : std_logic;
SIGNAL \inst|s_memory~152_combout\ : std_logic;
SIGNAL \inst|s_memory~160_combout\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \inst|s_memory~66_q\ : std_logic;
SIGNAL \inst|s_memory~58_q\ : std_logic;
SIGNAL \inst|s_memory~50_q\ : std_logic;
SIGNAL \inst|s_memory~161_combout\ : std_logic;
SIGNAL \inst|s_memory~74_q\ : std_logic;
SIGNAL \inst|s_memory~162_combout\ : std_logic;
SIGNAL \inst|s_memory~34_q\ : std_logic;
SIGNAL \inst|s_memory~18_q\ : std_logic;
SIGNAL \inst|s_memory~165_combout\ : std_logic;
SIGNAL \inst|s_memory~26_q\ : std_logic;
SIGNAL \inst|s_memory~42_q\ : std_logic;
SIGNAL \inst|s_memory~166_combout\ : std_logic;
SIGNAL \inst|s_memory~90_q\ : std_logic;
SIGNAL \inst|s_memory~98_q\ : std_logic;
SIGNAL \inst|s_memory~82_q\ : std_logic;
SIGNAL \inst|s_memory~163_combout\ : std_logic;
SIGNAL \inst|s_memory~106_q\ : std_logic;
SIGNAL \inst|s_memory~164_combout\ : std_logic;
SIGNAL \inst|s_memory~167_combout\ : std_logic;
SIGNAL \inst|s_memory~122_q\ : std_logic;
SIGNAL \inst|s_memory~114_q\ : std_logic;
SIGNAL \inst|s_memory~168_combout\ : std_logic;
SIGNAL \inst|s_memory~138_q\ : std_logic;
SIGNAL \inst|s_memory~130feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~130_q\ : std_logic;
SIGNAL \inst|s_memory~169_combout\ : std_logic;
SIGNAL \inst|s_memory~170_combout\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \inst|s_memory~89feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~89_q\ : std_logic;
SIGNAL \inst|s_memory~25_q\ : std_logic;
SIGNAL \inst|s_memory~171_combout\ : std_logic;
SIGNAL \inst|s_memory~121_q\ : std_logic;
SIGNAL \inst|s_memory~57_q\ : std_logic;
SIGNAL \inst|s_memory~172_combout\ : std_logic;
SIGNAL \inst|s_memory~97_q\ : std_logic;
SIGNAL \inst|s_memory~65feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~65_q\ : std_logic;
SIGNAL \inst|s_memory~33_q\ : std_logic;
SIGNAL \inst|s_memory~173_combout\ : std_logic;
SIGNAL \inst|s_memory~129_q\ : std_logic;
SIGNAL \inst|s_memory~174_combout\ : std_logic;
SIGNAL \inst|s_memory~17_q\ : std_logic;
SIGNAL \inst|s_memory~49feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~49_q\ : std_logic;
SIGNAL \inst|s_memory~175_combout\ : std_logic;
SIGNAL \inst|s_memory~113_q\ : std_logic;
SIGNAL \inst|s_memory~81_q\ : std_logic;
SIGNAL \inst|s_memory~176_combout\ : std_logic;
SIGNAL \inst|s_memory~177_combout\ : std_logic;
SIGNAL \inst|s_memory~73_q\ : std_logic;
SIGNAL \inst|s_memory~105_q\ : std_logic;
SIGNAL \inst|s_memory~41_q\ : std_logic;
SIGNAL \inst|s_memory~178_combout\ : std_logic;
SIGNAL \inst|s_memory~137_q\ : std_logic;
SIGNAL \inst|s_memory~179_combout\ : std_logic;
SIGNAL \inst|s_memory~180_combout\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \inst|s_memory~96_q\ : std_logic;
SIGNAL \inst|s_memory~80_q\ : std_logic;
SIGNAL \inst|s_memory~88_q\ : std_logic;
SIGNAL \inst|s_memory~181_combout\ : std_logic;
SIGNAL \inst|s_memory~104_q\ : std_logic;
SIGNAL \inst|s_memory~182_combout\ : std_logic;
SIGNAL \inst|s_memory~56_q\ : std_logic;
SIGNAL \inst|s_memory~72_q\ : std_logic;
SIGNAL \inst|s_memory~64_q\ : std_logic;
SIGNAL \inst|s_memory~48_q\ : std_logic;
SIGNAL \inst|s_memory~183_combout\ : std_logic;
SIGNAL \inst|s_memory~184_combout\ : std_logic;
SIGNAL \inst|s_memory~32_q\ : std_logic;
SIGNAL \inst|s_memory~16_q\ : std_logic;
SIGNAL \inst|s_memory~24feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~24_q\ : std_logic;
SIGNAL \inst|s_memory~185_combout\ : std_logic;
SIGNAL \inst|s_memory~40_q\ : std_logic;
SIGNAL \inst|s_memory~186_combout\ : std_logic;
SIGNAL \inst|s_memory~187_combout\ : std_logic;
SIGNAL \inst|s_memory~128_q\ : std_logic;
SIGNAL \inst|s_memory~112_q\ : std_logic;
SIGNAL \inst|s_memory~188_combout\ : std_logic;
SIGNAL \inst|s_memory~120_q\ : std_logic;
SIGNAL \inst|s_memory~136_q\ : std_logic;
SIGNAL \inst|s_memory~189_combout\ : std_logic;
SIGNAL \inst|s_memory~190_combout\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \inst|s_memory~63_q\ : std_logic;
SIGNAL \inst|s_memory~31_q\ : std_logic;
SIGNAL \inst|s_memory~95_q\ : std_logic;
SIGNAL \inst|s_memory~191_combout\ : std_logic;
SIGNAL \inst|s_memory~127_q\ : std_logic;
SIGNAL \inst|s_memory~192_combout\ : std_logic;
SIGNAL \inst|s_memory~71_q\ : std_logic;
SIGNAL \inst|s_memory~39_q\ : std_logic;
SIGNAL \inst|s_memory~198_combout\ : std_logic;
SIGNAL \inst|s_memory~135_q\ : std_logic;
SIGNAL \inst|s_memory~103_q\ : std_logic;
SIGNAL \inst|s_memory~199_combout\ : std_logic;
SIGNAL \inst|s_memory~79_q\ : std_logic;
SIGNAL \inst|s_memory~15_q\ : std_logic;
SIGNAL \inst|s_memory~195_combout\ : std_logic;
SIGNAL \inst|s_memory~111_q\ : std_logic;
SIGNAL \inst|s_memory~47feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~47_q\ : std_logic;
SIGNAL \inst|s_memory~196_combout\ : std_logic;
SIGNAL \inst|s_memory~55feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~55_q\ : std_logic;
SIGNAL \inst|s_memory~23_q\ : std_logic;
SIGNAL \inst|s_memory~193_combout\ : std_logic;
SIGNAL \inst|s_memory~87feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~87_q\ : std_logic;
SIGNAL \inst|s_memory~119_q\ : std_logic;
SIGNAL \inst|s_memory~194_combout\ : std_logic;
SIGNAL \inst|s_memory~197_combout\ : std_logic;
SIGNAL \inst|s_memory~200_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \inst|s_memory~126_q\ : std_logic;
SIGNAL \inst|s_memory~118_q\ : std_logic;
SIGNAL \inst|s_memory~110_q\ : std_logic;
SIGNAL \inst|s_memory~208_combout\ : std_logic;
SIGNAL \inst|s_memory~134_q\ : std_logic;
SIGNAL \inst|s_memory~209_combout\ : std_logic;
SIGNAL \inst|s_memory~54feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~54_q\ : std_logic;
SIGNAL \inst|s_memory~46_q\ : std_logic;
SIGNAL \inst|s_memory~201_combout\ : std_logic;
SIGNAL \inst|s_memory~62_q\ : std_logic;
SIGNAL \inst|s_memory~70_q\ : std_logic;
SIGNAL \inst|s_memory~202_combout\ : std_logic;
SIGNAL \inst|s_memory~86_q\ : std_logic;
SIGNAL \inst|s_memory~102_q\ : std_logic;
SIGNAL \inst|s_memory~94feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~94_q\ : std_logic;
SIGNAL \inst|s_memory~78_q\ : std_logic;
SIGNAL \inst|s_memory~203_combout\ : std_logic;
SIGNAL \inst|s_memory~204_combout\ : std_logic;
SIGNAL \inst|s_memory~22feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~22_q\ : std_logic;
SIGNAL \inst|s_memory~14_q\ : std_logic;
SIGNAL \inst|s_memory~30feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~30_q\ : std_logic;
SIGNAL \inst|s_memory~205_combout\ : std_logic;
SIGNAL \inst|s_memory~38_q\ : std_logic;
SIGNAL \inst|s_memory~206_combout\ : std_logic;
SIGNAL \inst|s_memory~207_combout\ : std_logic;
SIGNAL \inst|s_memory~210_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \inst|s_memory~61feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~61_q\ : std_logic;
SIGNAL \inst|s_memory~29_q\ : std_logic;
SIGNAL \inst|s_memory~213_combout\ : std_logic;
SIGNAL \inst|s_memory~93_q\ : std_logic;
SIGNAL \inst|s_memory~125_q\ : std_logic;
SIGNAL \inst|s_memory~214_combout\ : std_logic;
SIGNAL \inst|s_memory~13_q\ : std_logic;
SIGNAL \inst|s_memory~45_q\ : std_logic;
SIGNAL \inst|s_memory~215_combout\ : std_logic;
SIGNAL \inst|s_memory~77_q\ : std_logic;
SIGNAL \inst|s_memory~109_q\ : std_logic;
SIGNAL \inst|s_memory~216_combout\ : std_logic;
SIGNAL \inst|s_memory~217_combout\ : std_logic;
SIGNAL \inst|s_memory~101feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~101_q\ : std_logic;
SIGNAL \inst|s_memory~37_q\ : std_logic;
SIGNAL \inst|s_memory~218_combout\ : std_logic;
SIGNAL \inst|s_memory~133_q\ : std_logic;
SIGNAL \inst|s_memory~69_q\ : std_logic;
SIGNAL \inst|s_memory~219_combout\ : std_logic;
SIGNAL \inst|s_memory~53_q\ : std_logic;
SIGNAL \inst|s_memory~117_q\ : std_logic;
SIGNAL \inst|s_memory~85_q\ : std_logic;
SIGNAL \inst|s_memory~21_q\ : std_logic;
SIGNAL \inst|s_memory~211_combout\ : std_logic;
SIGNAL \inst|s_memory~212_combout\ : std_logic;
SIGNAL \inst|s_memory~220_combout\ : std_logic;
SIGNAL \inst2|s_divCounter\ : std_logic_vector(25 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDR <= ww_LEDR;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\inst2|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|clkOut~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_memory~150_combout\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_memory~160_combout\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_memory~170_combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_memory~180_combout\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_memory~190_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_memory~200_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_memory~210_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_memory~220_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X113_Y39_N6
\inst2|s_divCounter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[0]~26_combout\ = \inst2|s_divCounter\(0) $ (VCC)
-- \inst2|s_divCounter[0]~27\ = CARRY(\inst2|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(0),
	datad => VCC,
	combout => \inst2|s_divCounter[0]~26_combout\,
	cout => \inst2|s_divCounter[0]~27\);

-- Location: LCCOMB_X113_Y38_N12
\inst2|s_divCounter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[19]~64_combout\ = (\inst2|s_divCounter\(19) & (!\inst2|s_divCounter[18]~63\)) # (!\inst2|s_divCounter\(19) & ((\inst2|s_divCounter[18]~63\) # (GND)))
-- \inst2|s_divCounter[19]~65\ = CARRY((!\inst2|s_divCounter[18]~63\) # (!\inst2|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(19),
	datad => VCC,
	cin => \inst2|s_divCounter[18]~63\,
	combout => \inst2|s_divCounter[19]~64_combout\,
	cout => \inst2|s_divCounter[19]~65\);

-- Location: LCCOMB_X113_Y38_N14
\inst2|s_divCounter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[20]~66_combout\ = (\inst2|s_divCounter\(20) & (\inst2|s_divCounter[19]~65\ $ (GND))) # (!\inst2|s_divCounter\(20) & (!\inst2|s_divCounter[19]~65\ & VCC))
-- \inst2|s_divCounter[20]~67\ = CARRY((\inst2|s_divCounter\(20) & !\inst2|s_divCounter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(20),
	datad => VCC,
	cin => \inst2|s_divCounter[19]~65\,
	combout => \inst2|s_divCounter[20]~66_combout\,
	cout => \inst2|s_divCounter[20]~67\);

-- Location: FF_X113_Y38_N15
\inst2|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[20]~66_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(20));

-- Location: LCCOMB_X113_Y38_N16
\inst2|s_divCounter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[21]~68_combout\ = (\inst2|s_divCounter\(21) & (!\inst2|s_divCounter[20]~67\)) # (!\inst2|s_divCounter\(21) & ((\inst2|s_divCounter[20]~67\) # (GND)))
-- \inst2|s_divCounter[21]~69\ = CARRY((!\inst2|s_divCounter[20]~67\) # (!\inst2|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(21),
	datad => VCC,
	cin => \inst2|s_divCounter[20]~67\,
	combout => \inst2|s_divCounter[21]~68_combout\,
	cout => \inst2|s_divCounter[21]~69\);

-- Location: FF_X113_Y38_N17
\inst2|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[21]~68_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(21));

-- Location: LCCOMB_X113_Y38_N18
\inst2|s_divCounter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[22]~70_combout\ = (\inst2|s_divCounter\(22) & (\inst2|s_divCounter[21]~69\ $ (GND))) # (!\inst2|s_divCounter\(22) & (!\inst2|s_divCounter[21]~69\ & VCC))
-- \inst2|s_divCounter[22]~71\ = CARRY((\inst2|s_divCounter\(22) & !\inst2|s_divCounter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(22),
	datad => VCC,
	cin => \inst2|s_divCounter[21]~69\,
	combout => \inst2|s_divCounter[22]~70_combout\,
	cout => \inst2|s_divCounter[22]~71\);

-- Location: FF_X113_Y38_N19
\inst2|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[22]~70_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(22));

-- Location: LCCOMB_X113_Y38_N20
\inst2|s_divCounter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[23]~72_combout\ = (\inst2|s_divCounter\(23) & (!\inst2|s_divCounter[22]~71\)) # (!\inst2|s_divCounter\(23) & ((\inst2|s_divCounter[22]~71\) # (GND)))
-- \inst2|s_divCounter[23]~73\ = CARRY((!\inst2|s_divCounter[22]~71\) # (!\inst2|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(23),
	datad => VCC,
	cin => \inst2|s_divCounter[22]~71\,
	combout => \inst2|s_divCounter[23]~72_combout\,
	cout => \inst2|s_divCounter[23]~73\);

-- Location: FF_X113_Y38_N21
\inst2|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[23]~72_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(23));

-- Location: LCCOMB_X113_Y38_N22
\inst2|s_divCounter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[24]~74_combout\ = (\inst2|s_divCounter\(24) & (\inst2|s_divCounter[23]~73\ $ (GND))) # (!\inst2|s_divCounter\(24) & (!\inst2|s_divCounter[23]~73\ & VCC))
-- \inst2|s_divCounter[24]~75\ = CARRY((\inst2|s_divCounter\(24) & !\inst2|s_divCounter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(24),
	datad => VCC,
	cin => \inst2|s_divCounter[23]~73\,
	combout => \inst2|s_divCounter[24]~74_combout\,
	cout => \inst2|s_divCounter[24]~75\);

-- Location: FF_X113_Y38_N23
\inst2|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[24]~74_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(24));

-- Location: LCCOMB_X113_Y38_N24
\inst2|s_divCounter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[25]~76_combout\ = \inst2|s_divCounter[24]~75\ $ (\inst2|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|s_divCounter\(25),
	cin => \inst2|s_divCounter[24]~75\,
	combout => \inst2|s_divCounter[25]~76_combout\);

-- Location: FF_X113_Y38_N25
\inst2|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[25]~76_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(25));

-- Location: LCCOMB_X114_Y39_N14
\inst2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~0_combout\ = (((!\inst2|s_divCounter\(17) & !\inst2|s_divCounter\(18))) # (!\inst2|clkOut~0_combout\)) # (!\inst2|s_divCounter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(23),
	datab => \inst2|s_divCounter\(17),
	datac => \inst2|s_divCounter\(18),
	datad => \inst2|clkOut~0_combout\,
	combout => \inst2|LessThan0~0_combout\);

-- Location: LCCOMB_X114_Y39_N18
\inst2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~1_combout\ = (((!\inst2|s_divCounter\(12)) # (!\inst2|s_divCounter\(15))) # (!\inst2|s_divCounter\(13))) # (!\inst2|s_divCounter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(14),
	datab => \inst2|s_divCounter\(13),
	datac => \inst2|s_divCounter\(15),
	datad => \inst2|s_divCounter\(12),
	combout => \inst2|LessThan0~1_combout\);

-- Location: LCCOMB_X113_Y39_N4
\inst2|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clkOut~1_combout\ = (!\inst2|s_divCounter\(10) & (!\inst2|s_divCounter\(9) & (!\inst2|s_divCounter\(8) & !\inst2|s_divCounter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(10),
	datab => \inst2|s_divCounter\(9),
	datac => \inst2|s_divCounter\(8),
	datad => \inst2|s_divCounter\(7),
	combout => \inst2|clkOut~1_combout\);

-- Location: LCCOMB_X113_Y39_N2
\inst2|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clkOut~2_combout\ = (\inst2|s_divCounter\(0) & (\inst2|s_divCounter\(1) & (\inst2|s_divCounter\(2) & \inst2|s_divCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(0),
	datab => \inst2|s_divCounter\(1),
	datac => \inst2|s_divCounter\(2),
	datad => \inst2|s_divCounter\(3),
	combout => \inst2|clkOut~2_combout\);

-- Location: LCCOMB_X113_Y39_N0
\inst2|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clkOut~3_combout\ = (\inst2|s_divCounter\(5) & (\inst2|s_divCounter\(4) & \inst2|clkOut~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(5),
	datac => \inst2|s_divCounter\(4),
	datad => \inst2|clkOut~2_combout\,
	combout => \inst2|clkOut~3_combout\);

-- Location: LCCOMB_X114_Y39_N10
\inst2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~2_combout\ = (!\inst2|s_divCounter\(11) & (\inst2|clkOut~1_combout\ & ((!\inst2|clkOut~3_combout\) # (!\inst2|s_divCounter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(11),
	datab => \inst2|s_divCounter\(6),
	datac => \inst2|clkOut~1_combout\,
	datad => \inst2|clkOut~3_combout\,
	combout => \inst2|LessThan0~2_combout\);

-- Location: LCCOMB_X114_Y39_N24
\inst2|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~3_combout\ = (!\inst2|s_divCounter\(16) & (!\inst2|s_divCounter\(18) & ((\inst2|LessThan0~1_combout\) # (\inst2|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(16),
	datab => \inst2|LessThan0~1_combout\,
	datac => \inst2|s_divCounter\(18),
	datad => \inst2|LessThan0~2_combout\,
	combout => \inst2|LessThan0~3_combout\);

-- Location: LCCOMB_X114_Y39_N16
\inst2|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~4_combout\ = (\inst2|s_divCounter\(25) & ((\inst2|s_divCounter\(24)) # ((!\inst2|LessThan0~0_combout\ & !\inst2|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(24),
	datab => \inst2|s_divCounter\(25),
	datac => \inst2|LessThan0~0_combout\,
	datad => \inst2|LessThan0~3_combout\,
	combout => \inst2|LessThan0~4_combout\);

-- Location: FF_X113_Y39_N7
\inst2|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[0]~26_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(0));

-- Location: LCCOMB_X113_Y39_N8
\inst2|s_divCounter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[1]~28_combout\ = (\inst2|s_divCounter\(1) & (!\inst2|s_divCounter[0]~27\)) # (!\inst2|s_divCounter\(1) & ((\inst2|s_divCounter[0]~27\) # (GND)))
-- \inst2|s_divCounter[1]~29\ = CARRY((!\inst2|s_divCounter[0]~27\) # (!\inst2|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(1),
	datad => VCC,
	cin => \inst2|s_divCounter[0]~27\,
	combout => \inst2|s_divCounter[1]~28_combout\,
	cout => \inst2|s_divCounter[1]~29\);

-- Location: FF_X113_Y39_N9
\inst2|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[1]~28_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(1));

-- Location: LCCOMB_X113_Y39_N10
\inst2|s_divCounter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[2]~30_combout\ = (\inst2|s_divCounter\(2) & (\inst2|s_divCounter[1]~29\ $ (GND))) # (!\inst2|s_divCounter\(2) & (!\inst2|s_divCounter[1]~29\ & VCC))
-- \inst2|s_divCounter[2]~31\ = CARRY((\inst2|s_divCounter\(2) & !\inst2|s_divCounter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(2),
	datad => VCC,
	cin => \inst2|s_divCounter[1]~29\,
	combout => \inst2|s_divCounter[2]~30_combout\,
	cout => \inst2|s_divCounter[2]~31\);

-- Location: FF_X113_Y39_N11
\inst2|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[2]~30_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(2));

-- Location: LCCOMB_X113_Y39_N12
\inst2|s_divCounter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[3]~32_combout\ = (\inst2|s_divCounter\(3) & (!\inst2|s_divCounter[2]~31\)) # (!\inst2|s_divCounter\(3) & ((\inst2|s_divCounter[2]~31\) # (GND)))
-- \inst2|s_divCounter[3]~33\ = CARRY((!\inst2|s_divCounter[2]~31\) # (!\inst2|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(3),
	datad => VCC,
	cin => \inst2|s_divCounter[2]~31\,
	combout => \inst2|s_divCounter[3]~32_combout\,
	cout => \inst2|s_divCounter[3]~33\);

-- Location: FF_X113_Y39_N13
\inst2|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[3]~32_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(3));

-- Location: LCCOMB_X113_Y39_N14
\inst2|s_divCounter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[4]~34_combout\ = (\inst2|s_divCounter\(4) & (\inst2|s_divCounter[3]~33\ $ (GND))) # (!\inst2|s_divCounter\(4) & (!\inst2|s_divCounter[3]~33\ & VCC))
-- \inst2|s_divCounter[4]~35\ = CARRY((\inst2|s_divCounter\(4) & !\inst2|s_divCounter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(4),
	datad => VCC,
	cin => \inst2|s_divCounter[3]~33\,
	combout => \inst2|s_divCounter[4]~34_combout\,
	cout => \inst2|s_divCounter[4]~35\);

-- Location: FF_X113_Y39_N15
\inst2|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[4]~34_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(4));

-- Location: LCCOMB_X113_Y39_N16
\inst2|s_divCounter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[5]~36_combout\ = (\inst2|s_divCounter\(5) & (!\inst2|s_divCounter[4]~35\)) # (!\inst2|s_divCounter\(5) & ((\inst2|s_divCounter[4]~35\) # (GND)))
-- \inst2|s_divCounter[5]~37\ = CARRY((!\inst2|s_divCounter[4]~35\) # (!\inst2|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(5),
	datad => VCC,
	cin => \inst2|s_divCounter[4]~35\,
	combout => \inst2|s_divCounter[5]~36_combout\,
	cout => \inst2|s_divCounter[5]~37\);

-- Location: FF_X113_Y39_N17
\inst2|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[5]~36_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(5));

-- Location: LCCOMB_X113_Y39_N18
\inst2|s_divCounter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[6]~38_combout\ = (\inst2|s_divCounter\(6) & (\inst2|s_divCounter[5]~37\ $ (GND))) # (!\inst2|s_divCounter\(6) & (!\inst2|s_divCounter[5]~37\ & VCC))
-- \inst2|s_divCounter[6]~39\ = CARRY((\inst2|s_divCounter\(6) & !\inst2|s_divCounter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(6),
	datad => VCC,
	cin => \inst2|s_divCounter[5]~37\,
	combout => \inst2|s_divCounter[6]~38_combout\,
	cout => \inst2|s_divCounter[6]~39\);

-- Location: FF_X113_Y39_N19
\inst2|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[6]~38_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(6));

-- Location: LCCOMB_X113_Y39_N20
\inst2|s_divCounter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[7]~40_combout\ = (\inst2|s_divCounter\(7) & (!\inst2|s_divCounter[6]~39\)) # (!\inst2|s_divCounter\(7) & ((\inst2|s_divCounter[6]~39\) # (GND)))
-- \inst2|s_divCounter[7]~41\ = CARRY((!\inst2|s_divCounter[6]~39\) # (!\inst2|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(7),
	datad => VCC,
	cin => \inst2|s_divCounter[6]~39\,
	combout => \inst2|s_divCounter[7]~40_combout\,
	cout => \inst2|s_divCounter[7]~41\);

-- Location: FF_X113_Y39_N21
\inst2|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[7]~40_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(7));

-- Location: LCCOMB_X113_Y39_N22
\inst2|s_divCounter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[8]~42_combout\ = (\inst2|s_divCounter\(8) & (\inst2|s_divCounter[7]~41\ $ (GND))) # (!\inst2|s_divCounter\(8) & (!\inst2|s_divCounter[7]~41\ & VCC))
-- \inst2|s_divCounter[8]~43\ = CARRY((\inst2|s_divCounter\(8) & !\inst2|s_divCounter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(8),
	datad => VCC,
	cin => \inst2|s_divCounter[7]~41\,
	combout => \inst2|s_divCounter[8]~42_combout\,
	cout => \inst2|s_divCounter[8]~43\);

-- Location: FF_X113_Y39_N23
\inst2|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[8]~42_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(8));

-- Location: LCCOMB_X113_Y39_N24
\inst2|s_divCounter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[9]~44_combout\ = (\inst2|s_divCounter\(9) & (!\inst2|s_divCounter[8]~43\)) # (!\inst2|s_divCounter\(9) & ((\inst2|s_divCounter[8]~43\) # (GND)))
-- \inst2|s_divCounter[9]~45\ = CARRY((!\inst2|s_divCounter[8]~43\) # (!\inst2|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(9),
	datad => VCC,
	cin => \inst2|s_divCounter[8]~43\,
	combout => \inst2|s_divCounter[9]~44_combout\,
	cout => \inst2|s_divCounter[9]~45\);

-- Location: FF_X113_Y39_N25
\inst2|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[9]~44_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(9));

-- Location: LCCOMB_X113_Y39_N26
\inst2|s_divCounter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[10]~46_combout\ = (\inst2|s_divCounter\(10) & (\inst2|s_divCounter[9]~45\ $ (GND))) # (!\inst2|s_divCounter\(10) & (!\inst2|s_divCounter[9]~45\ & VCC))
-- \inst2|s_divCounter[10]~47\ = CARRY((\inst2|s_divCounter\(10) & !\inst2|s_divCounter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(10),
	datad => VCC,
	cin => \inst2|s_divCounter[9]~45\,
	combout => \inst2|s_divCounter[10]~46_combout\,
	cout => \inst2|s_divCounter[10]~47\);

-- Location: FF_X113_Y39_N27
\inst2|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[10]~46_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(10));

-- Location: LCCOMB_X113_Y39_N28
\inst2|s_divCounter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[11]~48_combout\ = (\inst2|s_divCounter\(11) & (!\inst2|s_divCounter[10]~47\)) # (!\inst2|s_divCounter\(11) & ((\inst2|s_divCounter[10]~47\) # (GND)))
-- \inst2|s_divCounter[11]~49\ = CARRY((!\inst2|s_divCounter[10]~47\) # (!\inst2|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(11),
	datad => VCC,
	cin => \inst2|s_divCounter[10]~47\,
	combout => \inst2|s_divCounter[11]~48_combout\,
	cout => \inst2|s_divCounter[11]~49\);

-- Location: FF_X113_Y39_N29
\inst2|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[11]~48_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(11));

-- Location: LCCOMB_X113_Y39_N30
\inst2|s_divCounter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[12]~50_combout\ = (\inst2|s_divCounter\(12) & (\inst2|s_divCounter[11]~49\ $ (GND))) # (!\inst2|s_divCounter\(12) & (!\inst2|s_divCounter[11]~49\ & VCC))
-- \inst2|s_divCounter[12]~51\ = CARRY((\inst2|s_divCounter\(12) & !\inst2|s_divCounter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(12),
	datad => VCC,
	cin => \inst2|s_divCounter[11]~49\,
	combout => \inst2|s_divCounter[12]~50_combout\,
	cout => \inst2|s_divCounter[12]~51\);

-- Location: FF_X113_Y39_N31
\inst2|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[12]~50_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(12));

-- Location: LCCOMB_X113_Y38_N0
\inst2|s_divCounter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[13]~52_combout\ = (\inst2|s_divCounter\(13) & (!\inst2|s_divCounter[12]~51\)) # (!\inst2|s_divCounter\(13) & ((\inst2|s_divCounter[12]~51\) # (GND)))
-- \inst2|s_divCounter[13]~53\ = CARRY((!\inst2|s_divCounter[12]~51\) # (!\inst2|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(13),
	datad => VCC,
	cin => \inst2|s_divCounter[12]~51\,
	combout => \inst2|s_divCounter[13]~52_combout\,
	cout => \inst2|s_divCounter[13]~53\);

-- Location: FF_X114_Y39_N29
\inst2|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|s_divCounter[13]~52_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(13));

-- Location: LCCOMB_X113_Y38_N2
\inst2|s_divCounter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[14]~54_combout\ = (\inst2|s_divCounter\(14) & (\inst2|s_divCounter[13]~53\ $ (GND))) # (!\inst2|s_divCounter\(14) & (!\inst2|s_divCounter[13]~53\ & VCC))
-- \inst2|s_divCounter[14]~55\ = CARRY((\inst2|s_divCounter\(14) & !\inst2|s_divCounter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(14),
	datad => VCC,
	cin => \inst2|s_divCounter[13]~53\,
	combout => \inst2|s_divCounter[14]~54_combout\,
	cout => \inst2|s_divCounter[14]~55\);

-- Location: FF_X114_Y39_N31
\inst2|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|s_divCounter[14]~54_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(14));

-- Location: LCCOMB_X113_Y38_N4
\inst2|s_divCounter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[15]~56_combout\ = (\inst2|s_divCounter\(15) & (!\inst2|s_divCounter[14]~55\)) # (!\inst2|s_divCounter\(15) & ((\inst2|s_divCounter[14]~55\) # (GND)))
-- \inst2|s_divCounter[15]~57\ = CARRY((!\inst2|s_divCounter[14]~55\) # (!\inst2|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(15),
	datad => VCC,
	cin => \inst2|s_divCounter[14]~55\,
	combout => \inst2|s_divCounter[15]~56_combout\,
	cout => \inst2|s_divCounter[15]~57\);

-- Location: FF_X114_Y39_N27
\inst2|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|s_divCounter[15]~56_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(15));

-- Location: LCCOMB_X113_Y38_N6
\inst2|s_divCounter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[16]~58_combout\ = (\inst2|s_divCounter\(16) & (\inst2|s_divCounter[15]~57\ $ (GND))) # (!\inst2|s_divCounter\(16) & (!\inst2|s_divCounter[15]~57\ & VCC))
-- \inst2|s_divCounter[16]~59\ = CARRY((\inst2|s_divCounter\(16) & !\inst2|s_divCounter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(16),
	datad => VCC,
	cin => \inst2|s_divCounter[15]~57\,
	combout => \inst2|s_divCounter[16]~58_combout\,
	cout => \inst2|s_divCounter[16]~59\);

-- Location: FF_X114_Y39_N1
\inst2|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|s_divCounter[16]~58_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(16));

-- Location: LCCOMB_X113_Y38_N8
\inst2|s_divCounter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[17]~60_combout\ = (\inst2|s_divCounter\(17) & (!\inst2|s_divCounter[16]~59\)) # (!\inst2|s_divCounter\(17) & ((\inst2|s_divCounter[16]~59\) # (GND)))
-- \inst2|s_divCounter[17]~61\ = CARRY((!\inst2|s_divCounter[16]~59\) # (!\inst2|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(17),
	datad => VCC,
	cin => \inst2|s_divCounter[16]~59\,
	combout => \inst2|s_divCounter[17]~60_combout\,
	cout => \inst2|s_divCounter[17]~61\);

-- Location: FF_X114_Y39_N3
\inst2|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|s_divCounter[17]~60_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(17));

-- Location: LCCOMB_X113_Y38_N10
\inst2|s_divCounter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[18]~62_combout\ = (\inst2|s_divCounter\(18) & (\inst2|s_divCounter[17]~61\ $ (GND))) # (!\inst2|s_divCounter\(18) & (!\inst2|s_divCounter[17]~61\ & VCC))
-- \inst2|s_divCounter[18]~63\ = CARRY((\inst2|s_divCounter\(18) & !\inst2|s_divCounter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(18),
	datad => VCC,
	cin => \inst2|s_divCounter[17]~61\,
	combout => \inst2|s_divCounter[18]~62_combout\,
	cout => \inst2|s_divCounter[18]~63\);

-- Location: FF_X113_Y38_N11
\inst2|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[18]~62_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(18));

-- Location: FF_X113_Y38_N13
\inst2|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[19]~64_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(19));

-- Location: LCCOMB_X113_Y38_N26
\inst2|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clkOut~0_combout\ = (\inst2|s_divCounter\(19) & (\inst2|s_divCounter\(21) & (\inst2|s_divCounter\(20) & \inst2|s_divCounter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(19),
	datab => \inst2|s_divCounter\(21),
	datac => \inst2|s_divCounter\(20),
	datad => \inst2|s_divCounter\(22),
	combout => \inst2|clkOut~0_combout\);

-- Location: LCCOMB_X114_Y39_N8
\inst2|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clkOut~4_combout\ = (\inst2|s_divCounter\(14) & (\inst2|s_divCounter\(13) & (!\inst2|s_divCounter\(6) & \inst2|s_divCounter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(14),
	datab => \inst2|s_divCounter\(13),
	datac => \inst2|s_divCounter\(6),
	datad => \inst2|s_divCounter\(12),
	combout => \inst2|clkOut~4_combout\);

-- Location: LCCOMB_X113_Y38_N28
\inst2|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clkOut~6_combout\ = (\inst2|s_divCounter\(18) & (!\inst2|s_divCounter\(25) & (\inst2|s_divCounter\(24) & !\inst2|s_divCounter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(18),
	datab => \inst2|s_divCounter\(25),
	datac => \inst2|s_divCounter\(24),
	datad => \inst2|s_divCounter\(23),
	combout => \inst2|clkOut~6_combout\);

-- Location: LCCOMB_X114_Y39_N12
\inst2|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clkOut~5_combout\ = (\inst2|s_divCounter\(16) & (!\inst2|s_divCounter\(17) & (\inst2|s_divCounter\(11) & !\inst2|s_divCounter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(16),
	datab => \inst2|s_divCounter\(17),
	datac => \inst2|s_divCounter\(11),
	datad => \inst2|s_divCounter\(15),
	combout => \inst2|clkOut~5_combout\);

-- Location: LCCOMB_X114_Y39_N4
\inst2|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clkOut~7_combout\ = (\inst2|clkOut~4_combout\ & (\inst2|clkOut~6_combout\ & \inst2|clkOut~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clkOut~4_combout\,
	datac => \inst2|clkOut~6_combout\,
	datad => \inst2|clkOut~5_combout\,
	combout => \inst2|clkOut~7_combout\);

-- Location: LCCOMB_X114_Y39_N22
\inst2|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clkOut~8_combout\ = (\inst2|clkOut~0_combout\ & (\inst2|clkOut~1_combout\ & (\inst2|clkOut~7_combout\ & \inst2|clkOut~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clkOut~0_combout\,
	datab => \inst2|clkOut~1_combout\,
	datac => \inst2|clkOut~7_combout\,
	datad => \inst2|clkOut~3_combout\,
	combout => \inst2|clkOut~8_combout\);

-- Location: LCCOMB_X114_Y39_N6
\inst2|clkOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clkOut~9_combout\ = (!\inst2|LessThan0~4_combout\ & ((\inst2|clkOut~8_combout\) # (\inst2|clkOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clkOut~8_combout\,
	datac => \inst2|clkOut~q\,
	datad => \inst2|LessThan0~4_combout\,
	combout => \inst2|clkOut~9_combout\);

-- Location: LCCOMB_X114_Y39_N20
\inst2|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clkOut~feeder_combout\ = \inst2|clkOut~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clkOut~9_combout\,
	combout => \inst2|clkOut~feeder_combout\);

-- Location: FF_X114_Y39_N21
\inst2|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clkOut~q\);

-- Location: CLKCTRL_G5
\inst2|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|clkOut~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X111_Y14_N30
\inst|s_memory~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~245_combout\ = (!\SW[5]~input_o\ & (\SW[7]~input_o\ & (\SW[4]~input_o\ & \SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \inst|s_memory~245_combout\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: LCCOMB_X111_Y14_N4
\inst|s_memory~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~246_combout\ = (\inst|s_memory~245_combout\ & \SW[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|s_memory~245_combout\,
	datad => \SW[16]~input_o\,
	combout => \inst|s_memory~246_combout\);

-- Location: FF_X112_Y10_N9
\inst|s_memory~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[15]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~124_q\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X111_Y14_N28
\inst|s_memory~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~251_combout\ = (\SW[5]~input_o\ & (\SW[7]~input_o\ & (\SW[4]~input_o\ & \SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \inst|s_memory~251_combout\);

-- Location: LCCOMB_X111_Y14_N14
\inst|s_memory~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~252_combout\ = (\inst|s_memory~251_combout\ & \SW[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_memory~251_combout\,
	datad => \SW[16]~input_o\,
	combout => \inst|s_memory~252_combout\);

-- Location: FF_X113_Y10_N27
\inst|s_memory~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[15]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~140_q\);

-- Location: LCCOMB_X110_Y14_N22
\inst|s_memory~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~247_combout\ = (\SW[7]~input_o\ & (\SW[5]~input_o\ & (\SW[6]~input_o\ & !\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|s_memory~247_combout\);

-- Location: LCCOMB_X113_Y11_N30
\inst|s_memory~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~248_combout\ = (\SW[16]~input_o\ & \inst|s_memory~247_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[16]~input_o\,
	datad => \inst|s_memory~247_combout\,
	combout => \inst|s_memory~248_combout\);

-- Location: FF_X113_Y10_N5
\inst|s_memory~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[15]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~132_q\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X110_Y14_N16
\inst|s_memory~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~249_combout\ = (\SW[7]~input_o\ & (!\SW[5]~input_o\ & (\SW[6]~input_o\ & !\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|s_memory~249_combout\);

-- Location: LCCOMB_X111_Y14_N26
\inst|s_memory~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~250_combout\ = (\inst|s_memory~249_combout\ & \SW[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|s_memory~249_combout\,
	datad => \SW[16]~input_o\,
	combout => \inst|s_memory~250_combout\);

-- Location: FF_X112_Y10_N31
\inst|s_memory~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[15]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~116_q\);

-- Location: LCCOMB_X112_Y10_N30
\inst|s_memory~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~148_combout\ = (\SW[1]~input_o\ & ((\inst|s_memory~132_q\) # ((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (((\inst|s_memory~116_q\ & !\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~132_q\,
	datab => \SW[1]~input_o\,
	datac => \inst|s_memory~116_q\,
	datad => \SW[0]~input_o\,
	combout => \inst|s_memory~148_combout\);

-- Location: LCCOMB_X113_Y10_N26
\inst|s_memory~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~149_combout\ = (\SW[0]~input_o\ & ((\inst|s_memory~148_combout\ & ((\inst|s_memory~140_q\))) # (!\inst|s_memory~148_combout\ & (\inst|s_memory~124_q\)))) # (!\SW[0]~input_o\ & (((\inst|s_memory~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~124_q\,
	datab => \SW[0]~input_o\,
	datac => \inst|s_memory~140_q\,
	datad => \inst|s_memory~148_combout\,
	combout => \inst|s_memory~149_combout\);

-- Location: LCCOMB_X112_Y11_N4
\inst|s_memory~100feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~100feeder_combout\ = \SW[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[15]~input_o\,
	combout => \inst|s_memory~100feeder_combout\);

-- Location: LCCOMB_X111_Y14_N24
\inst|s_memory~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~221_combout\ = (\SW[5]~input_o\ & (\SW[7]~input_o\ & (!\SW[4]~input_o\ & !\SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \inst|s_memory~221_combout\);

-- Location: LCCOMB_X111_Y14_N10
\inst|s_memory~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~222_combout\ = (\inst|s_memory~221_combout\ & \SW[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_memory~221_combout\,
	datad => \SW[16]~input_o\,
	combout => \inst|s_memory~222_combout\);

-- Location: FF_X112_Y11_N5
\inst|s_memory~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~100feeder_combout\,
	ena => \inst|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~100_q\);

-- Location: LCCOMB_X110_Y14_N0
\inst|s_memory~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~227_combout\ = (\SW[7]~input_o\ & (\SW[5]~input_o\ & (!\SW[6]~input_o\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|s_memory~227_combout\);

-- Location: LCCOMB_X110_Y11_N16
\inst|s_memory~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~228_combout\ = (\SW[16]~input_o\ & \inst|s_memory~227_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[16]~input_o\,
	datad => \inst|s_memory~227_combout\,
	combout => \inst|s_memory~228_combout\);

-- Location: FF_X111_Y11_N29
\inst|s_memory~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[15]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~108_q\);

-- Location: LCCOMB_X110_Y14_N20
\inst|s_memory~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~223_combout\ = (\SW[7]~input_o\ & (!\SW[5]~input_o\ & (!\SW[6]~input_o\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|s_memory~223_combout\);

-- Location: LCCOMB_X110_Y14_N10
\inst|s_memory~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~224_combout\ = (\inst|s_memory~223_combout\ & \SW[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_memory~223_combout\,
	datad => \SW[16]~input_o\,
	combout => \inst|s_memory~224_combout\);

-- Location: FF_X110_Y10_N21
\inst|s_memory~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[15]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~92_q\);

-- Location: LCCOMB_X111_Y14_N0
\inst|s_memory~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~225_combout\ = (!\SW[5]~input_o\ & (\SW[7]~input_o\ & (!\SW[4]~input_o\ & !\SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \inst|s_memory~225_combout\);

-- Location: LCCOMB_X111_Y14_N6
\inst|s_memory~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~226_combout\ = (\inst|s_memory~225_combout\ & \SW[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_memory~225_combout\,
	datad => \SW[16]~input_o\,
	combout => \inst|s_memory~226_combout\);

-- Location: FF_X111_Y10_N13
\inst|s_memory~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[15]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~84_q\);

-- Location: LCCOMB_X111_Y10_N12
\inst|s_memory~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~141_combout\ = (\SW[0]~input_o\ & ((\inst|s_memory~92_q\) # ((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (((\inst|s_memory~84_q\ & !\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst|s_memory~92_q\,
	datac => \inst|s_memory~84_q\,
	datad => \SW[1]~input_o\,
	combout => \inst|s_memory~141_combout\);

-- Location: LCCOMB_X111_Y11_N28
\inst|s_memory~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~142_combout\ = (\SW[1]~input_o\ & ((\inst|s_memory~141_combout\ & ((\inst|s_memory~108_q\))) # (!\inst|s_memory~141_combout\ & (\inst|s_memory~100_q\)))) # (!\SW[1]~input_o\ & (((\inst|s_memory~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~100_q\,
	datab => \SW[1]~input_o\,
	datac => \inst|s_memory~108_q\,
	datad => \inst|s_memory~141_combout\,
	combout => \inst|s_memory~142_combout\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X110_Y14_N30
\inst|s_memory~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~229_combout\ = (!\SW[7]~input_o\ & (!\SW[5]~input_o\ & (\SW[6]~input_o\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|s_memory~229_combout\);

-- Location: LCCOMB_X110_Y14_N28
\inst|s_memory~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~230_combout\ = (\inst|s_memory~229_combout\ & \SW[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|s_memory~229_combout\,
	datad => \SW[16]~input_o\,
	combout => \inst|s_memory~230_combout\);

-- Location: FF_X110_Y11_N9
\inst|s_memory~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[15]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~60_q\);

-- Location: LCCOMB_X110_Y14_N18
\inst|s_memory~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~231_combout\ = (!\SW[7]~input_o\ & (\SW[5]~input_o\ & (\SW[6]~input_o\ & !\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|s_memory~231_combout\);

-- Location: LCCOMB_X110_Y11_N20
\inst|s_memory~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~232_combout\ = (\SW[16]~input_o\ & \inst|s_memory~231_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[16]~input_o\,
	datad => \inst|s_memory~231_combout\,
	combout => \inst|s_memory~232_combout\);

-- Location: FF_X109_Y11_N29
\inst|s_memory~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[15]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~68_q\);

-- Location: LCCOMB_X110_Y14_N24
\inst|s_memory~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~233_combout\ = (!\SW[7]~input_o\ & (!\SW[5]~input_o\ & (\SW[6]~input_o\ & !\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|s_memory~233_combout\);

-- Location: LCCOMB_X110_Y14_N14
\inst|s_memory~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~234_combout\ = (\inst|s_memory~233_combout\ & \SW[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_memory~233_combout\,
	datad => \SW[16]~input_o\,
	combout => \inst|s_memory~234_combout\);

-- Location: FF_X110_Y10_N11
\inst|s_memory~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[15]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~52_q\);

-- Location: LCCOMB_X110_Y10_N10
\inst|s_memory~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~143_combout\ = (\SW[1]~input_o\ & ((\inst|s_memory~68_q\) # ((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (((\inst|s_memory~52_q\ & !\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~68_q\,
	datab => \SW[1]~input_o\,
	datac => \inst|s_memory~52_q\,
	datad => \SW[0]~input_o\,
	combout => \inst|s_memory~143_combout\);

-- Location: LCCOMB_X110_Y14_N12
\inst|s_memory~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~235_combout\ = (!\SW[7]~input_o\ & (\SW[5]~input_o\ & (\SW[6]~input_o\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|s_memory~235_combout\);

-- Location: LCCOMB_X111_Y14_N18
\inst|s_memory~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~236_combout\ = (\inst|s_memory~235_combout\ & \SW[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~235_combout\,
	datad => \SW[16]~input_o\,
	combout => \inst|s_memory~236_combout\);

-- Location: FF_X110_Y11_N31
\inst|s_memory~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[15]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~76_q\);

-- Location: LCCOMB_X110_Y11_N30
\inst|s_memory~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~144_combout\ = (\inst|s_memory~143_combout\ & (((\inst|s_memory~76_q\) # (!\SW[0]~input_o\)))) # (!\inst|s_memory~143_combout\ & (\inst|s_memory~60_q\ & ((\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~60_q\,
	datab => \inst|s_memory~143_combout\,
	datac => \inst|s_memory~76_q\,
	datad => \SW[0]~input_o\,
	combout => \inst|s_memory~144_combout\);

-- Location: LCCOMB_X110_Y14_N26
\inst|s_memory~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~241_combout\ = (!\SW[7]~input_o\ & (!\SW[5]~input_o\ & (!\SW[6]~input_o\ & !\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|s_memory~241_combout\);

-- Location: LCCOMB_X110_Y10_N28
\inst|s_memory~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~242_combout\ = (\SW[16]~input_o\ & \inst|s_memory~241_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[16]~input_o\,
	datad => \inst|s_memory~241_combout\,
	combout => \inst|s_memory~242_combout\);

-- Location: FF_X111_Y10_N7
\inst|s_memory~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[15]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~20_q\);

-- Location: LCCOMB_X110_Y14_N8
\inst|s_memory~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~239_combout\ = (!\SW[7]~input_o\ & (!\SW[5]~input_o\ & (!\SW[6]~input_o\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|s_memory~239_combout\);

-- Location: LCCOMB_X110_Y10_N18
\inst|s_memory~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~240_combout\ = (\SW[16]~input_o\ & \inst|s_memory~239_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[16]~input_o\,
	datad => \inst|s_memory~239_combout\,
	combout => \inst|s_memory~240_combout\);

-- Location: FF_X109_Y10_N21
\inst|s_memory~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[15]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~28_q\);

-- Location: LCCOMB_X111_Y10_N6
\inst|s_memory~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~145_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((\inst|s_memory~28_q\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & (\inst|s_memory~20_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \inst|s_memory~20_q\,
	datad => \inst|s_memory~28_q\,
	combout => \inst|s_memory~145_combout\);

-- Location: LCCOMB_X112_Y11_N10
\inst|s_memory~36feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~36feeder_combout\ = \SW[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[15]~input_o\,
	combout => \inst|s_memory~36feeder_combout\);

-- Location: LCCOMB_X110_Y14_N6
\inst|s_memory~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~237_combout\ = (!\SW[7]~input_o\ & (\SW[5]~input_o\ & (!\SW[6]~input_o\ & !\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|s_memory~237_combout\);

-- Location: LCCOMB_X111_Y14_N20
\inst|s_memory~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~238_combout\ = (\inst|s_memory~237_combout\ & \SW[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|s_memory~237_combout\,
	datad => \SW[16]~input_o\,
	combout => \inst|s_memory~238_combout\);

-- Location: FF_X112_Y11_N11
\inst|s_memory~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~36feeder_combout\,
	ena => \inst|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~36_q\);

-- Location: LCCOMB_X110_Y14_N4
\inst|s_memory~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~243_combout\ = (!\SW[7]~input_o\ & (\SW[5]~input_o\ & (!\SW[6]~input_o\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|s_memory~243_combout\);

-- Location: LCCOMB_X110_Y11_N22
\inst|s_memory~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~244_combout\ = (\inst|s_memory~243_combout\ & \SW[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_memory~243_combout\,
	datac => \SW[16]~input_o\,
	combout => \inst|s_memory~244_combout\);

-- Location: FF_X111_Y11_N23
\inst|s_memory~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[15]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~44_q\);

-- Location: LCCOMB_X111_Y11_N22
\inst|s_memory~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~146_combout\ = (\inst|s_memory~145_combout\ & (((\inst|s_memory~44_q\) # (!\SW[1]~input_o\)))) # (!\inst|s_memory~145_combout\ & (\inst|s_memory~36_q\ & ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~145_combout\,
	datab => \inst|s_memory~36_q\,
	datac => \inst|s_memory~44_q\,
	datad => \SW[1]~input_o\,
	combout => \inst|s_memory~146_combout\);

-- Location: LCCOMB_X110_Y11_N4
\inst|s_memory~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~147_combout\ = (\SW[3]~input_o\ & (\SW[2]~input_o\)) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & (\inst|s_memory~144_combout\)) # (!\SW[2]~input_o\ & ((\inst|s_memory~146_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \inst|s_memory~144_combout\,
	datad => \inst|s_memory~146_combout\,
	combout => \inst|s_memory~147_combout\);

-- Location: LCCOMB_X110_Y11_N26
\inst|s_memory~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~150_combout\ = (\inst|s_memory~147_combout\ & ((\inst|s_memory~149_combout\) # ((!\SW[3]~input_o\)))) # (!\inst|s_memory~147_combout\ & (((\inst|s_memory~142_combout\ & \SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~149_combout\,
	datab => \inst|s_memory~142_combout\,
	datac => \inst|s_memory~147_combout\,
	datad => \SW[3]~input_o\,
	combout => \inst|s_memory~150_combout\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: LCCOMB_X110_Y11_N0
\inst|s_memory~75feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~75feeder_combout\ = \SW[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[14]~input_o\,
	combout => \inst|s_memory~75feeder_combout\);

-- Location: FF_X110_Y11_N1
\inst|s_memory~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~75feeder_combout\,
	ena => \inst|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~75_q\);

-- Location: FF_X111_Y11_N7
\inst|s_memory~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[14]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~43_q\);

-- Location: LCCOMB_X111_Y11_N6
\inst|s_memory~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~158_combout\ = (\SW[3]~input_o\ & (((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & (\inst|s_memory~75_q\)) # (!\SW[2]~input_o\ & ((\inst|s_memory~43_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~75_q\,
	datab => \SW[3]~input_o\,
	datac => \inst|s_memory~43_q\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~158_combout\);

-- Location: FF_X111_Y11_N25
\inst|s_memory~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[14]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~107_q\);

-- Location: FF_X113_Y11_N15
\inst|s_memory~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[14]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~139_q\);

-- Location: LCCOMB_X113_Y11_N14
\inst|s_memory~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~159_combout\ = (\inst|s_memory~158_combout\ & (((\inst|s_memory~139_q\) # (!\SW[3]~input_o\)))) # (!\inst|s_memory~158_combout\ & (\inst|s_memory~107_q\ & ((\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~158_combout\,
	datab => \inst|s_memory~107_q\,
	datac => \inst|s_memory~139_q\,
	datad => \SW[3]~input_o\,
	combout => \inst|s_memory~159_combout\);

-- Location: FF_X111_Y10_N21
\inst|s_memory~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[14]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~83_q\);

-- Location: FF_X111_Y10_N23
\inst|s_memory~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[14]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~19_q\);

-- Location: LCCOMB_X111_Y10_N22
\inst|s_memory~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~155_combout\ = (\SW[3]~input_o\ & ((\inst|s_memory~83_q\) # ((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & (((\inst|s_memory~19_q\ & !\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst|s_memory~83_q\,
	datac => \inst|s_memory~19_q\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~155_combout\);

-- Location: FF_X112_Y10_N15
\inst|s_memory~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[14]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~115_q\);

-- Location: LCCOMB_X110_Y10_N22
\inst|s_memory~51feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~51feeder_combout\ = \SW[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[14]~input_o\,
	combout => \inst|s_memory~51feeder_combout\);

-- Location: FF_X110_Y10_N23
\inst|s_memory~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~51feeder_combout\,
	ena => \inst|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~51_q\);

-- Location: LCCOMB_X112_Y10_N14
\inst|s_memory~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~156_combout\ = (\SW[2]~input_o\ & ((\inst|s_memory~155_combout\ & (\inst|s_memory~115_q\)) # (!\inst|s_memory~155_combout\ & ((\inst|s_memory~51_q\))))) # (!\SW[2]~input_o\ & (\inst|s_memory~155_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst|s_memory~155_combout\,
	datac => \inst|s_memory~115_q\,
	datad => \inst|s_memory~51_q\,
	combout => \inst|s_memory~156_combout\);

-- Location: LCCOMB_X109_Y10_N26
\inst|s_memory~59feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~59feeder_combout\ = \SW[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[14]~input_o\,
	combout => \inst|s_memory~59feeder_combout\);

-- Location: FF_X109_Y10_N27
\inst|s_memory~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~59feeder_combout\,
	ena => \inst|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~59_q\);

-- Location: FF_X109_Y10_N9
\inst|s_memory~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[14]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~27_q\);

-- Location: LCCOMB_X109_Y10_N8
\inst|s_memory~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~153_combout\ = (\SW[3]~input_o\ & (((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & (\inst|s_memory~59_q\)) # (!\SW[2]~input_o\ & ((\inst|s_memory~27_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~59_q\,
	datab => \SW[3]~input_o\,
	datac => \inst|s_memory~27_q\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~153_combout\);

-- Location: LCCOMB_X110_Y10_N12
\inst|s_memory~91feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~91feeder_combout\ = \SW[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[14]~input_o\,
	combout => \inst|s_memory~91feeder_combout\);

-- Location: FF_X110_Y10_N13
\inst|s_memory~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~91feeder_combout\,
	ena => \inst|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~91_q\);

-- Location: FF_X112_Y10_N17
\inst|s_memory~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[14]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~123_q\);

-- Location: LCCOMB_X112_Y10_N16
\inst|s_memory~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~154_combout\ = (\inst|s_memory~153_combout\ & (((\inst|s_memory~123_q\) # (!\SW[3]~input_o\)))) # (!\inst|s_memory~153_combout\ & (\inst|s_memory~91_q\ & ((\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~153_combout\,
	datab => \inst|s_memory~91_q\,
	datac => \inst|s_memory~123_q\,
	datad => \SW[3]~input_o\,
	combout => \inst|s_memory~154_combout\);

-- Location: LCCOMB_X113_Y10_N24
\inst|s_memory~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~157_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\inst|s_memory~154_combout\))) # (!\SW[0]~input_o\ & (\inst|s_memory~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~156_combout\,
	datab => \SW[1]~input_o\,
	datac => \inst|s_memory~154_combout\,
	datad => \SW[0]~input_o\,
	combout => \inst|s_memory~157_combout\);

-- Location: LCCOMB_X109_Y11_N10
\inst|s_memory~67feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~67feeder_combout\ = \SW[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[14]~input_o\,
	combout => \inst|s_memory~67feeder_combout\);

-- Location: FF_X109_Y11_N11
\inst|s_memory~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~67feeder_combout\,
	ena => \inst|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~67_q\);

-- Location: FF_X113_Y11_N29
\inst|s_memory~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[14]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~131_q\);

-- Location: FF_X112_Y11_N13
\inst|s_memory~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[14]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~99_q\);

-- Location: FF_X112_Y11_N15
\inst|s_memory~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[14]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~35_q\);

-- Location: LCCOMB_X112_Y11_N14
\inst|s_memory~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~151_combout\ = (\SW[3]~input_o\ & ((\inst|s_memory~99_q\) # ((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & (((\inst|s_memory~35_q\ & !\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~99_q\,
	datab => \SW[3]~input_o\,
	datac => \inst|s_memory~35_q\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~151_combout\);

-- Location: LCCOMB_X113_Y11_N28
\inst|s_memory~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~152_combout\ = (\SW[2]~input_o\ & ((\inst|s_memory~151_combout\ & ((\inst|s_memory~131_q\))) # (!\inst|s_memory~151_combout\ & (\inst|s_memory~67_q\)))) # (!\SW[2]~input_o\ & (((\inst|s_memory~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~67_q\,
	datab => \SW[2]~input_o\,
	datac => \inst|s_memory~131_q\,
	datad => \inst|s_memory~151_combout\,
	combout => \inst|s_memory~152_combout\);

-- Location: LCCOMB_X113_Y11_N16
\inst|s_memory~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~160_combout\ = (\SW[1]~input_o\ & ((\inst|s_memory~157_combout\ & (\inst|s_memory~159_combout\)) # (!\inst|s_memory~157_combout\ & ((\inst|s_memory~152_combout\))))) # (!\SW[1]~input_o\ & (((\inst|s_memory~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst|s_memory~159_combout\,
	datac => \inst|s_memory~157_combout\,
	datad => \inst|s_memory~152_combout\,
	combout => \inst|s_memory~160_combout\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: FF_X109_Y11_N17
\inst|s_memory~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[13]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~66_q\);

-- Location: FF_X109_Y10_N15
\inst|s_memory~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[13]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~58_q\);

-- Location: FF_X110_Y10_N1
\inst|s_memory~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[13]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~50_q\);

-- Location: LCCOMB_X110_Y10_N0
\inst|s_memory~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~161_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\inst|s_memory~58_q\)) # (!\SW[0]~input_o\ & ((\inst|s_memory~50_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~58_q\,
	datab => \SW[1]~input_o\,
	datac => \inst|s_memory~50_q\,
	datad => \SW[0]~input_o\,
	combout => \inst|s_memory~161_combout\);

-- Location: FF_X110_Y11_N7
\inst|s_memory~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[13]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~74_q\);

-- Location: LCCOMB_X110_Y11_N6
\inst|s_memory~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~162_combout\ = (\inst|s_memory~161_combout\ & (((\inst|s_memory~74_q\) # (!\SW[1]~input_o\)))) # (!\inst|s_memory~161_combout\ & (\inst|s_memory~66_q\ & ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~66_q\,
	datab => \inst|s_memory~161_combout\,
	datac => \inst|s_memory~74_q\,
	datad => \SW[1]~input_o\,
	combout => \inst|s_memory~162_combout\);

-- Location: FF_X112_Y11_N23
\inst|s_memory~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[13]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~34_q\);

-- Location: FF_X111_Y10_N27
\inst|s_memory~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[13]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~18_q\);

-- Location: LCCOMB_X111_Y10_N26
\inst|s_memory~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~165_combout\ = (\SW[0]~input_o\ & (((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\inst|s_memory~34_q\)) # (!\SW[1]~input_o\ & ((\inst|s_memory~18_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst|s_memory~34_q\,
	datac => \inst|s_memory~18_q\,
	datad => \SW[1]~input_o\,
	combout => \inst|s_memory~165_combout\);

-- Location: FF_X109_Y10_N1
\inst|s_memory~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[13]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~26_q\);

-- Location: FF_X111_Y11_N3
\inst|s_memory~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[13]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~42_q\);

-- Location: LCCOMB_X111_Y11_N2
\inst|s_memory~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~166_combout\ = (\inst|s_memory~165_combout\ & (((\inst|s_memory~42_q\) # (!\SW[0]~input_o\)))) # (!\inst|s_memory~165_combout\ & (\inst|s_memory~26_q\ & ((\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~165_combout\,
	datab => \inst|s_memory~26_q\,
	datac => \inst|s_memory~42_q\,
	datad => \SW[0]~input_o\,
	combout => \inst|s_memory~166_combout\);

-- Location: FF_X110_Y10_N27
\inst|s_memory~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[13]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~90_q\);

-- Location: FF_X112_Y11_N9
\inst|s_memory~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[13]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~98_q\);

-- Location: FF_X111_Y10_N9
\inst|s_memory~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[13]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~82_q\);

-- Location: LCCOMB_X111_Y10_N8
\inst|s_memory~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~163_combout\ = (\SW[0]~input_o\ & (((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\inst|s_memory~98_q\)) # (!\SW[1]~input_o\ & ((\inst|s_memory~82_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst|s_memory~98_q\,
	datac => \inst|s_memory~82_q\,
	datad => \SW[1]~input_o\,
	combout => \inst|s_memory~163_combout\);

-- Location: FF_X111_Y11_N1
\inst|s_memory~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[13]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~106_q\);

-- Location: LCCOMB_X111_Y11_N0
\inst|s_memory~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~164_combout\ = (\inst|s_memory~163_combout\ & (((\inst|s_memory~106_q\) # (!\SW[0]~input_o\)))) # (!\inst|s_memory~163_combout\ & (\inst|s_memory~90_q\ & ((\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~90_q\,
	datab => \inst|s_memory~163_combout\,
	datac => \inst|s_memory~106_q\,
	datad => \SW[0]~input_o\,
	combout => \inst|s_memory~164_combout\);

-- Location: LCCOMB_X110_Y11_N24
\inst|s_memory~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~167_combout\ = (\SW[2]~input_o\ & (((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & ((\inst|s_memory~164_combout\))) # (!\SW[3]~input_o\ & (\inst|s_memory~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~166_combout\,
	datab => \SW[2]~input_o\,
	datac => \inst|s_memory~164_combout\,
	datad => \SW[3]~input_o\,
	combout => \inst|s_memory~167_combout\);

-- Location: FF_X112_Y10_N25
\inst|s_memory~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[13]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~122_q\);

-- Location: FF_X112_Y10_N3
\inst|s_memory~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[13]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~114_q\);

-- Location: LCCOMB_X112_Y10_N2
\inst|s_memory~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~168_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\inst|s_memory~122_q\)) # (!\SW[0]~input_o\ & ((\inst|s_memory~114_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~122_q\,
	datab => \SW[1]~input_o\,
	datac => \inst|s_memory~114_q\,
	datad => \SW[0]~input_o\,
	combout => \inst|s_memory~168_combout\);

-- Location: FF_X113_Y11_N25
\inst|s_memory~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[13]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~138_q\);

-- Location: LCCOMB_X113_Y11_N10
\inst|s_memory~130feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~130feeder_combout\ = \SW[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[13]~input_o\,
	combout => \inst|s_memory~130feeder_combout\);

-- Location: FF_X113_Y11_N11
\inst|s_memory~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~130feeder_combout\,
	ena => \inst|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~130_q\);

-- Location: LCCOMB_X113_Y11_N24
\inst|s_memory~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~169_combout\ = (\SW[1]~input_o\ & ((\inst|s_memory~168_combout\ & (\inst|s_memory~138_q\)) # (!\inst|s_memory~168_combout\ & ((\inst|s_memory~130_q\))))) # (!\SW[1]~input_o\ & (\inst|s_memory~168_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst|s_memory~168_combout\,
	datac => \inst|s_memory~138_q\,
	datad => \inst|s_memory~130_q\,
	combout => \inst|s_memory~169_combout\);

-- Location: LCCOMB_X110_Y11_N2
\inst|s_memory~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~170_combout\ = (\inst|s_memory~167_combout\ & (((\inst|s_memory~169_combout\) # (!\SW[2]~input_o\)))) # (!\inst|s_memory~167_combout\ & (\inst|s_memory~162_combout\ & ((\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~162_combout\,
	datab => \inst|s_memory~167_combout\,
	datac => \inst|s_memory~169_combout\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~170_combout\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: LCCOMB_X110_Y10_N8
\inst|s_memory~89feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~89feeder_combout\ = \SW[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[12]~input_o\,
	combout => \inst|s_memory~89feeder_combout\);

-- Location: FF_X110_Y10_N9
\inst|s_memory~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~89feeder_combout\,
	ena => \inst|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~89_q\);

-- Location: FF_X109_Y10_N5
\inst|s_memory~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~25_q\);

-- Location: LCCOMB_X109_Y10_N4
\inst|s_memory~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~171_combout\ = (\SW[3]~input_o\ & ((\inst|s_memory~89_q\) # ((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & (((\inst|s_memory~25_q\ & !\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~89_q\,
	datab => \SW[3]~input_o\,
	datac => \inst|s_memory~25_q\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~171_combout\);

-- Location: FF_X112_Y10_N21
\inst|s_memory~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~121_q\);

-- Location: FF_X109_Y10_N11
\inst|s_memory~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~57_q\);

-- Location: LCCOMB_X112_Y10_N20
\inst|s_memory~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~172_combout\ = (\SW[2]~input_o\ & ((\inst|s_memory~171_combout\ & (\inst|s_memory~121_q\)) # (!\inst|s_memory~171_combout\ & ((\inst|s_memory~57_q\))))) # (!\SW[2]~input_o\ & (\inst|s_memory~171_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst|s_memory~171_combout\,
	datac => \inst|s_memory~121_q\,
	datad => \inst|s_memory~57_q\,
	combout => \inst|s_memory~172_combout\);

-- Location: FF_X112_Y11_N1
\inst|s_memory~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~97_q\);

-- Location: LCCOMB_X109_Y11_N6
\inst|s_memory~65feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~65feeder_combout\ = \SW[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[12]~input_o\,
	combout => \inst|s_memory~65feeder_combout\);

-- Location: FF_X109_Y11_N7
\inst|s_memory~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~65feeder_combout\,
	ena => \inst|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~65_q\);

-- Location: FF_X112_Y11_N19
\inst|s_memory~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~33_q\);

-- Location: LCCOMB_X112_Y11_N18
\inst|s_memory~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~173_combout\ = (\SW[3]~input_o\ & (((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & (\inst|s_memory~65_q\)) # (!\SW[2]~input_o\ & ((\inst|s_memory~33_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~65_q\,
	datab => \SW[3]~input_o\,
	datac => \inst|s_memory~33_q\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~173_combout\);

-- Location: FF_X113_Y11_N19
\inst|s_memory~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~129_q\);

-- Location: LCCOMB_X113_Y11_N18
\inst|s_memory~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~174_combout\ = (\inst|s_memory~173_combout\ & (((\inst|s_memory~129_q\) # (!\SW[3]~input_o\)))) # (!\inst|s_memory~173_combout\ & (\inst|s_memory~97_q\ & ((\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~97_q\,
	datab => \inst|s_memory~173_combout\,
	datac => \inst|s_memory~129_q\,
	datad => \SW[3]~input_o\,
	combout => \inst|s_memory~174_combout\);

-- Location: FF_X111_Y10_N19
\inst|s_memory~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~17_q\);

-- Location: LCCOMB_X110_Y10_N2
\inst|s_memory~49feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~49feeder_combout\ = \SW[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[12]~input_o\,
	combout => \inst|s_memory~49feeder_combout\);

-- Location: FF_X110_Y10_N3
\inst|s_memory~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~49feeder_combout\,
	ena => \inst|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~49_q\);

-- Location: LCCOMB_X111_Y10_N18
\inst|s_memory~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~175_combout\ = (\SW[3]~input_o\ & (\SW[2]~input_o\)) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & ((\inst|s_memory~49_q\))) # (!\SW[2]~input_o\ & (\inst|s_memory~17_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \inst|s_memory~17_q\,
	datad => \inst|s_memory~49_q\,
	combout => \inst|s_memory~175_combout\);

-- Location: FF_X112_Y10_N23
\inst|s_memory~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~113_q\);

-- Location: FF_X111_Y10_N25
\inst|s_memory~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~81_q\);

-- Location: LCCOMB_X112_Y10_N22
\inst|s_memory~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~176_combout\ = (\SW[3]~input_o\ & ((\inst|s_memory~175_combout\ & (\inst|s_memory~113_q\)) # (!\inst|s_memory~175_combout\ & ((\inst|s_memory~81_q\))))) # (!\SW[3]~input_o\ & (\inst|s_memory~175_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst|s_memory~175_combout\,
	datac => \inst|s_memory~113_q\,
	datad => \inst|s_memory~81_q\,
	combout => \inst|s_memory~176_combout\);

-- Location: LCCOMB_X113_Y11_N4
\inst|s_memory~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~177_combout\ = (\SW[1]~input_o\ & ((\inst|s_memory~174_combout\) # ((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (((!\SW[0]~input_o\ & \inst|s_memory~176_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst|s_memory~174_combout\,
	datac => \SW[0]~input_o\,
	datad => \inst|s_memory~176_combout\,
	combout => \inst|s_memory~177_combout\);

-- Location: FF_X110_Y11_N21
\inst|s_memory~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~73_q\);

-- Location: FF_X111_Y11_N13
\inst|s_memory~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~105_q\);

-- Location: FF_X111_Y11_N15
\inst|s_memory~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~41_q\);

-- Location: LCCOMB_X111_Y11_N14
\inst|s_memory~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~178_combout\ = (\SW[3]~input_o\ & ((\inst|s_memory~105_q\) # ((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & (((\inst|s_memory~41_q\ & !\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~105_q\,
	datab => \SW[3]~input_o\,
	datac => \inst|s_memory~41_q\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~178_combout\);

-- Location: FF_X113_Y11_N3
\inst|s_memory~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~137_q\);

-- Location: LCCOMB_X113_Y11_N2
\inst|s_memory~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~179_combout\ = (\inst|s_memory~178_combout\ & (((\inst|s_memory~137_q\) # (!\SW[2]~input_o\)))) # (!\inst|s_memory~178_combout\ & (\inst|s_memory~73_q\ & ((\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~73_q\,
	datab => \inst|s_memory~178_combout\,
	datac => \inst|s_memory~137_q\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~179_combout\);

-- Location: LCCOMB_X113_Y11_N12
\inst|s_memory~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~180_combout\ = (\inst|s_memory~177_combout\ & (((\inst|s_memory~179_combout\) # (!\SW[0]~input_o\)))) # (!\inst|s_memory~177_combout\ & (\inst|s_memory~172_combout\ & (\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~172_combout\,
	datab => \inst|s_memory~177_combout\,
	datac => \SW[0]~input_o\,
	datad => \inst|s_memory~179_combout\,
	combout => \inst|s_memory~180_combout\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: FF_X112_Y11_N21
\inst|s_memory~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~96_q\);

-- Location: FF_X111_Y10_N1
\inst|s_memory~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~80_q\);

-- Location: FF_X110_Y10_N29
\inst|s_memory~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~88_q\);

-- Location: LCCOMB_X111_Y10_N0
\inst|s_memory~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~181_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((\inst|s_memory~88_q\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & (\inst|s_memory~80_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \inst|s_memory~80_q\,
	datad => \inst|s_memory~88_q\,
	combout => \inst|s_memory~181_combout\);

-- Location: FF_X111_Y11_N5
\inst|s_memory~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~104_q\);

-- Location: LCCOMB_X111_Y11_N4
\inst|s_memory~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~182_combout\ = (\inst|s_memory~181_combout\ & (((\inst|s_memory~104_q\) # (!\SW[1]~input_o\)))) # (!\inst|s_memory~181_combout\ & (\inst|s_memory~96_q\ & ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~96_q\,
	datab => \inst|s_memory~181_combout\,
	datac => \inst|s_memory~104_q\,
	datad => \SW[1]~input_o\,
	combout => \inst|s_memory~182_combout\);

-- Location: FF_X110_Y11_N11
\inst|s_memory~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~56_q\);

-- Location: FF_X110_Y11_N13
\inst|s_memory~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~72_q\);

-- Location: FF_X109_Y11_N13
\inst|s_memory~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~64_q\);

-- Location: FF_X110_Y10_N31
\inst|s_memory~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~48_q\);

-- Location: LCCOMB_X110_Y10_N30
\inst|s_memory~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~183_combout\ = (\SW[1]~input_o\ & ((\inst|s_memory~64_q\) # ((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (((\inst|s_memory~48_q\ & !\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~64_q\,
	datab => \SW[1]~input_o\,
	datac => \inst|s_memory~48_q\,
	datad => \SW[0]~input_o\,
	combout => \inst|s_memory~183_combout\);

-- Location: LCCOMB_X110_Y11_N12
\inst|s_memory~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~184_combout\ = (\SW[0]~input_o\ & ((\inst|s_memory~183_combout\ & ((\inst|s_memory~72_q\))) # (!\inst|s_memory~183_combout\ & (\inst|s_memory~56_q\)))) # (!\SW[0]~input_o\ & (((\inst|s_memory~183_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~56_q\,
	datab => \SW[0]~input_o\,
	datac => \inst|s_memory~72_q\,
	datad => \inst|s_memory~183_combout\,
	combout => \inst|s_memory~184_combout\);

-- Location: FF_X112_Y11_N31
\inst|s_memory~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~32_q\);

-- Location: FF_X111_Y10_N3
\inst|s_memory~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~16_q\);

-- Location: LCCOMB_X109_Y10_N22
\inst|s_memory~24feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~24feeder_combout\ = \SW[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[11]~input_o\,
	combout => \inst|s_memory~24feeder_combout\);

-- Location: FF_X109_Y10_N23
\inst|s_memory~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~24feeder_combout\,
	ena => \inst|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~24_q\);

-- Location: LCCOMB_X111_Y10_N2
\inst|s_memory~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~185_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((\inst|s_memory~24_q\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & (\inst|s_memory~16_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \inst|s_memory~16_q\,
	datad => \inst|s_memory~24_q\,
	combout => \inst|s_memory~185_combout\);

-- Location: FF_X111_Y11_N31
\inst|s_memory~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~40_q\);

-- Location: LCCOMB_X111_Y11_N30
\inst|s_memory~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~186_combout\ = (\inst|s_memory~185_combout\ & (((\inst|s_memory~40_q\) # (!\SW[1]~input_o\)))) # (!\inst|s_memory~185_combout\ & (\inst|s_memory~32_q\ & ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~32_q\,
	datab => \inst|s_memory~185_combout\,
	datac => \inst|s_memory~40_q\,
	datad => \SW[1]~input_o\,
	combout => \inst|s_memory~186_combout\);

-- Location: LCCOMB_X110_Y11_N18
\inst|s_memory~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~187_combout\ = (\SW[2]~input_o\ & ((\inst|s_memory~184_combout\) # ((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & (((\inst|s_memory~186_combout\ & !\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~184_combout\,
	datab => \SW[2]~input_o\,
	datac => \inst|s_memory~186_combout\,
	datad => \SW[3]~input_o\,
	combout => \inst|s_memory~187_combout\);

-- Location: FF_X113_Y10_N11
\inst|s_memory~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~128_q\);

-- Location: FF_X112_Y10_N11
\inst|s_memory~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~112_q\);

-- Location: LCCOMB_X112_Y10_N10
\inst|s_memory~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~188_combout\ = (\SW[1]~input_o\ & ((\inst|s_memory~128_q\) # ((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (((\inst|s_memory~112_q\ & !\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~128_q\,
	datab => \SW[1]~input_o\,
	datac => \inst|s_memory~112_q\,
	datad => \SW[0]~input_o\,
	combout => \inst|s_memory~188_combout\);

-- Location: FF_X112_Y10_N29
\inst|s_memory~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~120_q\);

-- Location: FF_X113_Y10_N1
\inst|s_memory~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~136_q\);

-- Location: LCCOMB_X113_Y10_N0
\inst|s_memory~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~189_combout\ = (\inst|s_memory~188_combout\ & (((\inst|s_memory~136_q\) # (!\SW[0]~input_o\)))) # (!\inst|s_memory~188_combout\ & (\inst|s_memory~120_q\ & ((\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~188_combout\,
	datab => \inst|s_memory~120_q\,
	datac => \inst|s_memory~136_q\,
	datad => \SW[0]~input_o\,
	combout => \inst|s_memory~189_combout\);

-- Location: LCCOMB_X110_Y11_N28
\inst|s_memory~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~190_combout\ = (\inst|s_memory~187_combout\ & (((\inst|s_memory~189_combout\) # (!\SW[3]~input_o\)))) # (!\inst|s_memory~187_combout\ & (\inst|s_memory~182_combout\ & ((\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~182_combout\,
	datab => \inst|s_memory~187_combout\,
	datac => \inst|s_memory~189_combout\,
	datad => \SW[3]~input_o\,
	combout => \inst|s_memory~190_combout\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: FF_X109_Y11_N19
\inst|s_memory~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~63_q\);

-- Location: FF_X112_Y11_N7
\inst|s_memory~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~31_q\);

-- Location: FF_X112_Y11_N17
\inst|s_memory~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~95_q\);

-- Location: LCCOMB_X112_Y11_N6
\inst|s_memory~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~191_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & ((\inst|s_memory~95_q\))) # (!\SW[3]~input_o\ & (\inst|s_memory~31_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \inst|s_memory~31_q\,
	datad => \inst|s_memory~95_q\,
	combout => \inst|s_memory~191_combout\);

-- Location: FF_X113_Y11_N7
\inst|s_memory~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~127_q\);

-- Location: LCCOMB_X113_Y11_N6
\inst|s_memory~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~192_combout\ = (\inst|s_memory~191_combout\ & (((\inst|s_memory~127_q\) # (!\SW[2]~input_o\)))) # (!\inst|s_memory~191_combout\ & (\inst|s_memory~63_q\ & ((\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~63_q\,
	datab => \inst|s_memory~191_combout\,
	datac => \inst|s_memory~127_q\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~192_combout\);

-- Location: FF_X110_Y11_N15
\inst|s_memory~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~71_q\);

-- Location: FF_X111_Y11_N17
\inst|s_memory~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~39_q\);

-- Location: LCCOMB_X111_Y11_N16
\inst|s_memory~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~198_combout\ = (\SW[3]~input_o\ & (((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & (\inst|s_memory~71_q\)) # (!\SW[2]~input_o\ & ((\inst|s_memory~39_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~71_q\,
	datab => \SW[3]~input_o\,
	datac => \inst|s_memory~39_q\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~198_combout\);

-- Location: FF_X113_Y11_N21
\inst|s_memory~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~135_q\);

-- Location: FF_X109_Y11_N1
\inst|s_memory~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~103_q\);

-- Location: LCCOMB_X113_Y11_N20
\inst|s_memory~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~199_combout\ = (\SW[3]~input_o\ & ((\inst|s_memory~198_combout\ & (\inst|s_memory~135_q\)) # (!\inst|s_memory~198_combout\ & ((\inst|s_memory~103_q\))))) # (!\SW[3]~input_o\ & (\inst|s_memory~198_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst|s_memory~198_combout\,
	datac => \inst|s_memory~135_q\,
	datad => \inst|s_memory~103_q\,
	combout => \inst|s_memory~199_combout\);

-- Location: FF_X111_Y10_N29
\inst|s_memory~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~79_q\);

-- Location: FF_X111_Y10_N31
\inst|s_memory~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~15_q\);

-- Location: LCCOMB_X111_Y10_N30
\inst|s_memory~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~195_combout\ = (\SW[3]~input_o\ & ((\inst|s_memory~79_q\) # ((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & (((\inst|s_memory~15_q\ & !\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst|s_memory~79_q\,
	datac => \inst|s_memory~15_q\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~195_combout\);

-- Location: FF_X112_Y10_N27
\inst|s_memory~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~111_q\);

-- Location: LCCOMB_X110_Y10_N6
\inst|s_memory~47feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~47feeder_combout\ = \SW[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[10]~input_o\,
	combout => \inst|s_memory~47feeder_combout\);

-- Location: FF_X110_Y10_N7
\inst|s_memory~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~47feeder_combout\,
	ena => \inst|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~47_q\);

-- Location: LCCOMB_X112_Y10_N26
\inst|s_memory~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~196_combout\ = (\SW[2]~input_o\ & ((\inst|s_memory~195_combout\ & (\inst|s_memory~111_q\)) # (!\inst|s_memory~195_combout\ & ((\inst|s_memory~47_q\))))) # (!\SW[2]~input_o\ & (\inst|s_memory~195_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst|s_memory~195_combout\,
	datac => \inst|s_memory~111_q\,
	datad => \inst|s_memory~47_q\,
	combout => \inst|s_memory~196_combout\);

-- Location: LCCOMB_X109_Y10_N24
\inst|s_memory~55feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~55feeder_combout\ = \SW[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[10]~input_o\,
	combout => \inst|s_memory~55feeder_combout\);

-- Location: FF_X109_Y10_N25
\inst|s_memory~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~55feeder_combout\,
	ena => \inst|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~55_q\);

-- Location: FF_X109_Y10_N31
\inst|s_memory~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~23_q\);

-- Location: LCCOMB_X109_Y10_N30
\inst|s_memory~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~193_combout\ = (\SW[3]~input_o\ & (((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & (\inst|s_memory~55_q\)) # (!\SW[2]~input_o\ & ((\inst|s_memory~23_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~55_q\,
	datab => \SW[3]~input_o\,
	datac => \inst|s_memory~23_q\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~193_combout\);

-- Location: LCCOMB_X110_Y10_N24
\inst|s_memory~87feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~87feeder_combout\ = \SW[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[10]~input_o\,
	combout => \inst|s_memory~87feeder_combout\);

-- Location: FF_X110_Y10_N25
\inst|s_memory~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~87feeder_combout\,
	ena => \inst|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~87_q\);

-- Location: FF_X112_Y10_N5
\inst|s_memory~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~119_q\);

-- Location: LCCOMB_X112_Y10_N4
\inst|s_memory~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~194_combout\ = (\inst|s_memory~193_combout\ & (((\inst|s_memory~119_q\) # (!\SW[3]~input_o\)))) # (!\inst|s_memory~193_combout\ & (\inst|s_memory~87_q\ & ((\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~193_combout\,
	datab => \inst|s_memory~87_q\,
	datac => \inst|s_memory~119_q\,
	datad => \SW[3]~input_o\,
	combout => \inst|s_memory~194_combout\);

-- Location: LCCOMB_X113_Y10_N2
\inst|s_memory~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~197_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\inst|s_memory~194_combout\))) # (!\SW[0]~input_o\ & (\inst|s_memory~196_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~196_combout\,
	datab => \SW[1]~input_o\,
	datac => \inst|s_memory~194_combout\,
	datad => \SW[0]~input_o\,
	combout => \inst|s_memory~197_combout\);

-- Location: LCCOMB_X113_Y11_N26
\inst|s_memory~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~200_combout\ = (\SW[1]~input_o\ & ((\inst|s_memory~197_combout\ & ((\inst|s_memory~199_combout\))) # (!\inst|s_memory~197_combout\ & (\inst|s_memory~192_combout\)))) # (!\SW[1]~input_o\ & (((\inst|s_memory~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~192_combout\,
	datab => \inst|s_memory~199_combout\,
	datac => \SW[1]~input_o\,
	datad => \inst|s_memory~197_combout\,
	combout => \inst|s_memory~200_combout\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: FF_X113_Y10_N13
\inst|s_memory~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~126_q\);

-- Location: FF_X112_Y10_N13
\inst|s_memory~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~118_q\);

-- Location: FF_X112_Y10_N7
\inst|s_memory~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~110_q\);

-- Location: LCCOMB_X112_Y10_N6
\inst|s_memory~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~208_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\inst|s_memory~118_q\)) # (!\SW[0]~input_o\ & ((\inst|s_memory~110_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~118_q\,
	datab => \SW[1]~input_o\,
	datac => \inst|s_memory~110_q\,
	datad => \SW[0]~input_o\,
	combout => \inst|s_memory~208_combout\);

-- Location: FF_X113_Y10_N23
\inst|s_memory~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~134_q\);

-- Location: LCCOMB_X113_Y10_N22
\inst|s_memory~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~209_combout\ = (\inst|s_memory~208_combout\ & (((\inst|s_memory~134_q\) # (!\SW[1]~input_o\)))) # (!\inst|s_memory~208_combout\ & (\inst|s_memory~126_q\ & ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~126_q\,
	datab => \inst|s_memory~208_combout\,
	datac => \inst|s_memory~134_q\,
	datad => \SW[1]~input_o\,
	combout => \inst|s_memory~209_combout\);

-- Location: LCCOMB_X109_Y10_N16
\inst|s_memory~54feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~54feeder_combout\ = \SW[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[9]~input_o\,
	combout => \inst|s_memory~54feeder_combout\);

-- Location: FF_X109_Y10_N17
\inst|s_memory~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~54feeder_combout\,
	ena => \inst|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~54_q\);

-- Location: FF_X110_Y10_N5
\inst|s_memory~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~46_q\);

-- Location: LCCOMB_X110_Y10_N4
\inst|s_memory~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~201_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\inst|s_memory~54_q\)) # (!\SW[0]~input_o\ & ((\inst|s_memory~46_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~54_q\,
	datab => \SW[1]~input_o\,
	datac => \inst|s_memory~46_q\,
	datad => \SW[0]~input_o\,
	combout => \inst|s_memory~201_combout\);

-- Location: FF_X109_Y11_N23
\inst|s_memory~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~62_q\);

-- Location: FF_X111_Y14_N17
\inst|s_memory~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~70_q\);

-- Location: LCCOMB_X111_Y14_N16
\inst|s_memory~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~202_combout\ = (\inst|s_memory~201_combout\ & (((\inst|s_memory~70_q\) # (!\SW[1]~input_o\)))) # (!\inst|s_memory~201_combout\ & (\inst|s_memory~62_q\ & ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~201_combout\,
	datab => \inst|s_memory~62_q\,
	datac => \inst|s_memory~70_q\,
	datad => \SW[1]~input_o\,
	combout => \inst|s_memory~202_combout\);

-- Location: FF_X110_Y10_N19
\inst|s_memory~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~86_q\);

-- Location: FF_X111_Y11_N27
\inst|s_memory~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~102_q\);

-- Location: LCCOMB_X112_Y11_N28
\inst|s_memory~94feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~94feeder_combout\ = \SW[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[9]~input_o\,
	combout => \inst|s_memory~94feeder_combout\);

-- Location: FF_X112_Y11_N29
\inst|s_memory~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~94feeder_combout\,
	ena => \inst|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~94_q\);

-- Location: FF_X111_Y10_N17
\inst|s_memory~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~78_q\);

-- Location: LCCOMB_X111_Y10_N16
\inst|s_memory~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~203_combout\ = (\SW[0]~input_o\ & (((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\inst|s_memory~94_q\)) # (!\SW[1]~input_o\ & ((\inst|s_memory~78_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst|s_memory~94_q\,
	datac => \inst|s_memory~78_q\,
	datad => \SW[1]~input_o\,
	combout => \inst|s_memory~203_combout\);

-- Location: LCCOMB_X111_Y11_N26
\inst|s_memory~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~204_combout\ = (\SW[0]~input_o\ & ((\inst|s_memory~203_combout\ & ((\inst|s_memory~102_q\))) # (!\inst|s_memory~203_combout\ & (\inst|s_memory~86_q\)))) # (!\SW[0]~input_o\ & (((\inst|s_memory~203_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~86_q\,
	datab => \SW[0]~input_o\,
	datac => \inst|s_memory~102_q\,
	datad => \inst|s_memory~203_combout\,
	combout => \inst|s_memory~204_combout\);

-- Location: LCCOMB_X109_Y10_N6
\inst|s_memory~22feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~22feeder_combout\ = \SW[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[9]~input_o\,
	combout => \inst|s_memory~22feeder_combout\);

-- Location: FF_X109_Y10_N7
\inst|s_memory~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~22feeder_combout\,
	ena => \inst|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~22_q\);

-- Location: FF_X111_Y10_N11
\inst|s_memory~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~14_q\);

-- Location: LCCOMB_X112_Y11_N26
\inst|s_memory~30feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~30feeder_combout\ = \SW[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[9]~input_o\,
	combout => \inst|s_memory~30feeder_combout\);

-- Location: FF_X112_Y11_N27
\inst|s_memory~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~30feeder_combout\,
	ena => \inst|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~30_q\);

-- Location: LCCOMB_X111_Y10_N10
\inst|s_memory~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~205_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((\inst|s_memory~30_q\))) # (!\SW[1]~input_o\ & (\inst|s_memory~14_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \inst|s_memory~14_q\,
	datad => \inst|s_memory~30_q\,
	combout => \inst|s_memory~205_combout\);

-- Location: FF_X111_Y11_N21
\inst|s_memory~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~38_q\);

-- Location: LCCOMB_X111_Y11_N20
\inst|s_memory~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~206_combout\ = (\inst|s_memory~205_combout\ & (((\inst|s_memory~38_q\) # (!\SW[0]~input_o\)))) # (!\inst|s_memory~205_combout\ & (\inst|s_memory~22_q\ & ((\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~22_q\,
	datab => \inst|s_memory~205_combout\,
	datac => \inst|s_memory~38_q\,
	datad => \SW[0]~input_o\,
	combout => \inst|s_memory~206_combout\);

-- Location: LCCOMB_X111_Y11_N10
\inst|s_memory~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~207_combout\ = (\SW[3]~input_o\ & ((\inst|s_memory~204_combout\) # ((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & (((\inst|s_memory~206_combout\ & !\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~204_combout\,
	datab => \inst|s_memory~206_combout\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~207_combout\);

-- Location: LCCOMB_X111_Y14_N22
\inst|s_memory~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~210_combout\ = (\inst|s_memory~207_combout\ & ((\inst|s_memory~209_combout\) # ((!\SW[2]~input_o\)))) # (!\inst|s_memory~207_combout\ & (((\inst|s_memory~202_combout\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~209_combout\,
	datab => \inst|s_memory~202_combout\,
	datac => \inst|s_memory~207_combout\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~210_combout\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X109_Y11_N4
\inst|s_memory~61feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~61feeder_combout\ = \SW[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[8]~input_o\,
	combout => \inst|s_memory~61feeder_combout\);

-- Location: FF_X109_Y11_N5
\inst|s_memory~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~61feeder_combout\,
	ena => \inst|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~61_q\);

-- Location: FF_X112_Y11_N3
\inst|s_memory~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~29_q\);

-- Location: LCCOMB_X112_Y11_N2
\inst|s_memory~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~213_combout\ = (\SW[3]~input_o\ & (((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & (\inst|s_memory~61_q\)) # (!\SW[2]~input_o\ & ((\inst|s_memory~29_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~61_q\,
	datab => \SW[3]~input_o\,
	datac => \inst|s_memory~29_q\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~213_combout\);

-- Location: FF_X112_Y11_N25
\inst|s_memory~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~93_q\);

-- Location: FF_X113_Y11_N9
\inst|s_memory~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~125_q\);

-- Location: LCCOMB_X113_Y11_N8
\inst|s_memory~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~214_combout\ = (\inst|s_memory~213_combout\ & (((\inst|s_memory~125_q\) # (!\SW[3]~input_o\)))) # (!\inst|s_memory~213_combout\ & (\inst|s_memory~93_q\ & ((\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~213_combout\,
	datab => \inst|s_memory~93_q\,
	datac => \inst|s_memory~125_q\,
	datad => \SW[3]~input_o\,
	combout => \inst|s_memory~214_combout\);

-- Location: FF_X111_Y10_N15
\inst|s_memory~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~13_q\);

-- Location: FF_X110_Y10_N15
\inst|s_memory~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~45_q\);

-- Location: LCCOMB_X111_Y10_N14
\inst|s_memory~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~215_combout\ = (\SW[3]~input_o\ & (\SW[2]~input_o\)) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & ((\inst|s_memory~45_q\))) # (!\SW[2]~input_o\ & (\inst|s_memory~13_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \inst|s_memory~13_q\,
	datad => \inst|s_memory~45_q\,
	combout => \inst|s_memory~215_combout\);

-- Location: FF_X111_Y10_N5
\inst|s_memory~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~77_q\);

-- Location: FF_X112_Y10_N19
\inst|s_memory~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~109_q\);

-- Location: LCCOMB_X112_Y10_N18
\inst|s_memory~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~216_combout\ = (\inst|s_memory~215_combout\ & (((\inst|s_memory~109_q\) # (!\SW[3]~input_o\)))) # (!\inst|s_memory~215_combout\ & (\inst|s_memory~77_q\ & ((\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~215_combout\,
	datab => \inst|s_memory~77_q\,
	datac => \inst|s_memory~109_q\,
	datad => \SW[3]~input_o\,
	combout => \inst|s_memory~216_combout\);

-- Location: LCCOMB_X111_Y14_N12
\inst|s_memory~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~217_combout\ = (\SW[1]~input_o\ & ((\inst|s_memory~214_combout\) # ((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (((\inst|s_memory~216_combout\ & !\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~214_combout\,
	datab => \SW[1]~input_o\,
	datac => \inst|s_memory~216_combout\,
	datad => \SW[0]~input_o\,
	combout => \inst|s_memory~217_combout\);

-- Location: LCCOMB_X111_Y11_N8
\inst|s_memory~101feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~101feeder_combout\ = \SW[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[8]~input_o\,
	combout => \inst|s_memory~101feeder_combout\);

-- Location: FF_X111_Y11_N9
\inst|s_memory~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~101feeder_combout\,
	ena => \inst|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~101_q\);

-- Location: FF_X111_Y11_N19
\inst|s_memory~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~37_q\);

-- Location: LCCOMB_X111_Y11_N18
\inst|s_memory~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~218_combout\ = (\SW[3]~input_o\ & ((\inst|s_memory~101_q\) # ((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & (((\inst|s_memory~37_q\ & !\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~101_q\,
	datab => \SW[3]~input_o\,
	datac => \inst|s_memory~37_q\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~218_combout\);

-- Location: FF_X111_Y14_N9
\inst|s_memory~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~133_q\);

-- Location: FF_X111_Y14_N7
\inst|s_memory~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~69_q\);

-- Location: LCCOMB_X111_Y14_N8
\inst|s_memory~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~219_combout\ = (\inst|s_memory~218_combout\ & (((\inst|s_memory~133_q\)) # (!\SW[2]~input_o\))) # (!\inst|s_memory~218_combout\ & (\SW[2]~input_o\ & ((\inst|s_memory~69_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~218_combout\,
	datab => \SW[2]~input_o\,
	datac => \inst|s_memory~133_q\,
	datad => \inst|s_memory~69_q\,
	combout => \inst|s_memory~219_combout\);

-- Location: FF_X109_Y10_N13
\inst|s_memory~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~53_q\);

-- Location: FF_X112_Y10_N1
\inst|s_memory~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~117_q\);

-- Location: FF_X110_Y10_N17
\inst|s_memory~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~85_q\);

-- Location: FF_X109_Y10_N19
\inst|s_memory~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~21_q\);

-- Location: LCCOMB_X109_Y10_N18
\inst|s_memory~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~211_combout\ = (\SW[3]~input_o\ & ((\inst|s_memory~85_q\) # ((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & (((\inst|s_memory~21_q\ & !\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~85_q\,
	datab => \SW[3]~input_o\,
	datac => \inst|s_memory~21_q\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~211_combout\);

-- Location: LCCOMB_X112_Y10_N0
\inst|s_memory~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~212_combout\ = (\SW[2]~input_o\ & ((\inst|s_memory~211_combout\ & ((\inst|s_memory~117_q\))) # (!\inst|s_memory~211_combout\ & (\inst|s_memory~53_q\)))) # (!\SW[2]~input_o\ & (((\inst|s_memory~211_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst|s_memory~53_q\,
	datac => \inst|s_memory~117_q\,
	datad => \inst|s_memory~211_combout\,
	combout => \inst|s_memory~212_combout\);

-- Location: LCCOMB_X111_Y14_N2
\inst|s_memory~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~220_combout\ = (\inst|s_memory~217_combout\ & (((\inst|s_memory~219_combout\)) # (!\SW[0]~input_o\))) # (!\inst|s_memory~217_combout\ & (\SW[0]~input_o\ & ((\inst|s_memory~212_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~217_combout\,
	datab => \SW[0]~input_o\,
	datac => \inst|s_memory~219_combout\,
	datad => \inst|s_memory~212_combout\,
	combout => \inst|s_memory~220_combout\);

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


