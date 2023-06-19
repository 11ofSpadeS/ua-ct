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

-- DATE "04/18/2023 15:42:07"

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

ENTITY 	mini_projeto IS
    PORT (
	CLOCK_50 : IN std_logic;
	LEDR : BUFFER std_logic_vector(1 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END mini_projeto;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mini_projeto IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LEDR : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pulsegen|pulse~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \pulsegen|Add0~0_combout\ : std_logic;
SIGNAL \pulsegen|Add0~1\ : std_logic;
SIGNAL \pulsegen|Add0~2_combout\ : std_logic;
SIGNAL \pulsegen|Add0~3\ : std_logic;
SIGNAL \pulsegen|Add0~4_combout\ : std_logic;
SIGNAL \pulsegen|Add0~5\ : std_logic;
SIGNAL \pulsegen|Add0~6_combout\ : std_logic;
SIGNAL \pulsegen|Add0~7\ : std_logic;
SIGNAL \pulsegen|Add0~8_combout\ : std_logic;
SIGNAL \pulsegen|Add0~9\ : std_logic;
SIGNAL \pulsegen|Add0~10_combout\ : std_logic;
SIGNAL \pulsegen|Add0~11\ : std_logic;
SIGNAL \pulsegen|Add0~12_combout\ : std_logic;
SIGNAL \pulsegen|Add0~13\ : std_logic;
SIGNAL \pulsegen|Add0~14_combout\ : std_logic;
SIGNAL \pulsegen|s_cnt~5_combout\ : std_logic;
SIGNAL \pulsegen|Add0~15\ : std_logic;
SIGNAL \pulsegen|Add0~16_combout\ : std_logic;
SIGNAL \pulsegen|Add0~17\ : std_logic;
SIGNAL \pulsegen|Add0~18_combout\ : std_logic;
SIGNAL \pulsegen|Add0~19\ : std_logic;
SIGNAL \pulsegen|Add0~20_combout\ : std_logic;
SIGNAL \pulsegen|Add0~21\ : std_logic;
SIGNAL \pulsegen|Add0~22_combout\ : std_logic;
SIGNAL \pulsegen|Add0~23\ : std_logic;
SIGNAL \pulsegen|Add0~24_combout\ : std_logic;
SIGNAL \pulsegen|s_cnt~4_combout\ : std_logic;
SIGNAL \pulsegen|Add0~25\ : std_logic;
SIGNAL \pulsegen|Add0~26_combout\ : std_logic;
SIGNAL \pulsegen|s_cnt~3_combout\ : std_logic;
SIGNAL \pulsegen|Add0~27\ : std_logic;
SIGNAL \pulsegen|Add0~28_combout\ : std_logic;
SIGNAL \pulsegen|s_cnt~2_combout\ : std_logic;
SIGNAL \pulsegen|Add0~29\ : std_logic;
SIGNAL \pulsegen|Add0~30_combout\ : std_logic;
SIGNAL \pulsegen|s_cnt~1_combout\ : std_logic;
SIGNAL \pulsegen|Add0~31\ : std_logic;
SIGNAL \pulsegen|Add0~32_combout\ : std_logic;
SIGNAL \pulsegen|Add0~33\ : std_logic;
SIGNAL \pulsegen|Add0~34_combout\ : std_logic;
SIGNAL \pulsegen|s_cnt~0_combout\ : std_logic;
SIGNAL \pulsegen|Add0~35\ : std_logic;
SIGNAL \pulsegen|Add0~36_combout\ : std_logic;
SIGNAL \pulsegen|Add0~37\ : std_logic;
SIGNAL \pulsegen|Add0~38_combout\ : std_logic;
SIGNAL \pulsegen|s_cnt~6_combout\ : std_logic;
SIGNAL \pulsegen|Add0~39\ : std_logic;
SIGNAL \pulsegen|Add0~40_combout\ : std_logic;
SIGNAL \pulsegen|s_cnt~7_combout\ : std_logic;
SIGNAL \pulsegen|Add0~41\ : std_logic;
SIGNAL \pulsegen|Add0~42_combout\ : std_logic;
SIGNAL \pulsegen|s_cnt~8_combout\ : std_logic;
SIGNAL \pulsegen|Add0~43\ : std_logic;
SIGNAL \pulsegen|Add0~44_combout\ : std_logic;
SIGNAL \pulsegen|s_cnt~9_combout\ : std_logic;
SIGNAL \pulsegen|Add0~45\ : std_logic;
SIGNAL \pulsegen|Add0~46_combout\ : std_logic;
SIGNAL \pulsegen|s_cnt~10_combout\ : std_logic;
SIGNAL \pulsegen|Equal0~6_combout\ : std_logic;
SIGNAL \pulsegen|Equal0~5_combout\ : std_logic;
SIGNAL \pulsegen|Add0~47\ : std_logic;
SIGNAL \pulsegen|Add0~48_combout\ : std_logic;
SIGNAL \pulsegen|Add0~49\ : std_logic;
SIGNAL \pulsegen|Add0~50_combout\ : std_logic;
SIGNAL \pulsegen|s_cnt~11_combout\ : std_logic;
SIGNAL \pulsegen|Equal0~7_combout\ : std_logic;
SIGNAL \pulsegen|Equal0~0_combout\ : std_logic;
SIGNAL \pulsegen|Equal0~1_combout\ : std_logic;
SIGNAL \pulsegen|Equal0~3_combout\ : std_logic;
SIGNAL \pulsegen|Equal0~2_combout\ : std_logic;
SIGNAL \pulsegen|Equal0~4_combout\ : std_logic;
SIGNAL \pulsegen|Equal0~8_combout\ : std_logic;
SIGNAL \pulsegen|pulse~feeder_combout\ : std_logic;
SIGNAL \pulsegen|pulse~q\ : std_logic;
SIGNAL \pulsegen|pulse~clkctrl_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \counter|Add0~1\ : std_logic;
SIGNAL \counter|Add0~2_combout\ : std_logic;
SIGNAL \counter|Add0~22_combout\ : std_logic;
SIGNAL \counter|Add0~3\ : std_logic;
SIGNAL \counter|Add0~4_combout\ : std_logic;
SIGNAL \counter|Add0~21_combout\ : std_logic;
SIGNAL \counter|Add0~5\ : std_logic;
SIGNAL \counter|Add0~6_combout\ : std_logic;
SIGNAL \counter|Add0~20_combout\ : std_logic;
SIGNAL \counter|Equal0~0_combout\ : std_logic;
SIGNAL \counter|Add0~7\ : std_logic;
SIGNAL \counter|Add0~8_combout\ : std_logic;
SIGNAL \counter|Add0~19_combout\ : std_logic;
SIGNAL \counter|Add0~9\ : std_logic;
SIGNAL \counter|Add0~10_combout\ : std_logic;
SIGNAL \counter|Add0~18_combout\ : std_logic;
SIGNAL \counter|Add0~11\ : std_logic;
SIGNAL \counter|Add0~12_combout\ : std_logic;
SIGNAL \counter|Add0~17_combout\ : std_logic;
SIGNAL \counter|Add0~13\ : std_logic;
SIGNAL \counter|Add0~14_combout\ : std_logic;
SIGNAL \counter|Add0~16_combout\ : std_logic;
SIGNAL \counter|Equal0~1_combout\ : std_logic;
SIGNAL \counter|Add0~0_combout\ : std_logic;
SIGNAL \counter|Add0~23_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[27]~57_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[27]~56_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[26]~58_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[26]~59_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[25]~61_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[25]~60_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[24]~62_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[24]~63_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[36]~101_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[36]~64_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[35]~102_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[35]~65_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[34]~103_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[34]~66_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~68_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~67_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~69_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[40]~78_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[40]~77_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[45]~71_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[45]~93_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[44]~72_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[44]~94_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[43]~95_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[43]~73_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[42]~74_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[42]~104_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[41]~75_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[41]~76_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[49]~86_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[48]~87_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[48]~88_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[54]~97_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[54]~81_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[53]~96_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[53]~79_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[52]~82_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[52]~98_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[51]~83_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[51]~99_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[50]~84_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[50]~105_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[58]~91_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[57]~92_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[60]~89_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \display1|Equal2~1_combout\ : std_logic;
SIGNAL \display1|Equal2~2_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[59]~90_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[61]~100_combout\ : std_logic;
SIGNAL \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[63]~80_combout\ : std_logic;
SIGNAL \display1|Equal2~0_combout\ : std_logic;
SIGNAL \display1|Equal2~3_combout\ : std_logic;
SIGNAL \display1|decOut_n~0_combout\ : std_logic;
SIGNAL \display1|decOut_n~1_combout\ : std_logic;
SIGNAL \display1|Equal7~0_combout\ : std_logic;
SIGNAL \display1|decOut_n~2_combout\ : std_logic;
SIGNAL \display1|decOut_n~3_combout\ : std_logic;
SIGNAL \display1|Equal2~4_combout\ : std_logic;
SIGNAL \display1|Equal0~0_combout\ : std_logic;
SIGNAL \display1|decOut_n~4_combout\ : std_logic;
SIGNAL \display1|decOut_n~5_combout\ : std_logic;
SIGNAL \display1|Equal0~1_combout\ : std_logic;
SIGNAL \display1|Equal8~0_combout\ : std_logic;
SIGNAL \display1|decOut_n~6_combout\ : std_logic;
SIGNAL \display1|decOut_n~7_combout\ : std_logic;
SIGNAL \display1|Equal2~5_combout\ : std_logic;
SIGNAL \display1|decOut_n~8_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[27]~54_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[27]~55_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[26]~57_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[26]~56_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[25]~59_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[25]~58_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[24]~60_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[24]~61_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[36]~62_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[36]~93_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[35]~63_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[35]~94_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[34]~95_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[34]~64_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[33]~65_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[32]~68_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[45]~69_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[45]~86_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[44]~70_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[44]~87_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[43]~71_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[43]~88_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[42]~96_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[42]~72_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[41]~73_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[41]~74_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[40]~76_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[40]~75_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[54]~89_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[54]~77_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[53]~78_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[53]~90_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[52]~91_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[52]~79_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[51]~92_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[51]~80_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[50]~97_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[50]~81_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[49]~83_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[49]~82_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[48]~85_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[48]~84_combout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \display0|Equal2~0_combout\ : std_logic;
SIGNAL \display0|decOut_n~6_combout\ : std_logic;
SIGNAL \display0|decOut_n~7_combout\ : std_logic;
SIGNAL \display0|Equal7~0_combout\ : std_logic;
SIGNAL \display0|decOut_n~8_combout\ : std_logic;
SIGNAL \display0|decOut_n~2_combout\ : std_logic;
SIGNAL \display0|decOut_n~10_combout\ : std_logic;
SIGNAL \display0|decOut_n~9_combout\ : std_logic;
SIGNAL \display0|decOut_n~5_combout\ : std_logic;
SIGNAL \display0|decOut_n~11_combout\ : std_logic;
SIGNAL \counter|s_count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pulsegen|s_cnt\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \display1|ALT_INV_decOut_n~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
LEDR <= ww_LEDR;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\pulsegen|pulse~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pulsegen|pulse~q\);
\display1|ALT_INV_decOut_n~1_combout\ <= NOT \display1|decOut_n~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \KEY[1]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|decOut_n~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|ALT_INV_decOut_n~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Equal7~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|decOut_n~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|decOut_n~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|decOut_n~7_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|decOut_n~8_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|decOut_n~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|decOut_n~7_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|Equal7~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|decOut_n~8_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|decOut_n~10_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|decOut_n~9_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|decOut_n~11_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

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

-- Location: LCCOMB_X66_Y50_N6
\pulsegen|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|Add0~0_combout\ = \pulsegen|s_cnt\(0) $ (VCC)
-- \pulsegen|Add0~1\ = CARRY(\pulsegen|s_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsegen|s_cnt\(0),
	datad => VCC,
	combout => \pulsegen|Add0~0_combout\,
	cout => \pulsegen|Add0~1\);

-- Location: FF_X66_Y50_N7
\pulsegen|s_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsegen|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsegen|s_cnt\(0));

-- Location: LCCOMB_X66_Y50_N8
\pulsegen|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|Add0~2_combout\ = (\pulsegen|s_cnt\(1) & (!\pulsegen|Add0~1\)) # (!\pulsegen|s_cnt\(1) & ((\pulsegen|Add0~1\) # (GND)))
-- \pulsegen|Add0~3\ = CARRY((!\pulsegen|Add0~1\) # (!\pulsegen|s_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsegen|s_cnt\(1),
	datad => VCC,
	cin => \pulsegen|Add0~1\,
	combout => \pulsegen|Add0~2_combout\,
	cout => \pulsegen|Add0~3\);

-- Location: FF_X66_Y50_N9
\pulsegen|s_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsegen|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsegen|s_cnt\(1));

-- Location: LCCOMB_X66_Y50_N10
\pulsegen|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|Add0~4_combout\ = (\pulsegen|s_cnt\(2) & (\pulsegen|Add0~3\ $ (GND))) # (!\pulsegen|s_cnt\(2) & (!\pulsegen|Add0~3\ & VCC))
-- \pulsegen|Add0~5\ = CARRY((\pulsegen|s_cnt\(2) & !\pulsegen|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsegen|s_cnt\(2),
	datad => VCC,
	cin => \pulsegen|Add0~3\,
	combout => \pulsegen|Add0~4_combout\,
	cout => \pulsegen|Add0~5\);

-- Location: FF_X66_Y50_N11
\pulsegen|s_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsegen|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsegen|s_cnt\(2));

-- Location: LCCOMB_X66_Y50_N12
\pulsegen|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|Add0~6_combout\ = (\pulsegen|s_cnt\(3) & (!\pulsegen|Add0~5\)) # (!\pulsegen|s_cnt\(3) & ((\pulsegen|Add0~5\) # (GND)))
-- \pulsegen|Add0~7\ = CARRY((!\pulsegen|Add0~5\) # (!\pulsegen|s_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsegen|s_cnt\(3),
	datad => VCC,
	cin => \pulsegen|Add0~5\,
	combout => \pulsegen|Add0~6_combout\,
	cout => \pulsegen|Add0~7\);

-- Location: FF_X66_Y50_N13
\pulsegen|s_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsegen|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsegen|s_cnt\(3));

-- Location: LCCOMB_X66_Y50_N14
\pulsegen|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|Add0~8_combout\ = (\pulsegen|s_cnt\(4) & (\pulsegen|Add0~7\ $ (GND))) # (!\pulsegen|s_cnt\(4) & (!\pulsegen|Add0~7\ & VCC))
-- \pulsegen|Add0~9\ = CARRY((\pulsegen|s_cnt\(4) & !\pulsegen|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsegen|s_cnt\(4),
	datad => VCC,
	cin => \pulsegen|Add0~7\,
	combout => \pulsegen|Add0~8_combout\,
	cout => \pulsegen|Add0~9\);

-- Location: FF_X66_Y50_N15
\pulsegen|s_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsegen|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsegen|s_cnt\(4));

-- Location: LCCOMB_X66_Y50_N16
\pulsegen|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|Add0~10_combout\ = (\pulsegen|s_cnt\(5) & (!\pulsegen|Add0~9\)) # (!\pulsegen|s_cnt\(5) & ((\pulsegen|Add0~9\) # (GND)))
-- \pulsegen|Add0~11\ = CARRY((!\pulsegen|Add0~9\) # (!\pulsegen|s_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsegen|s_cnt\(5),
	datad => VCC,
	cin => \pulsegen|Add0~9\,
	combout => \pulsegen|Add0~10_combout\,
	cout => \pulsegen|Add0~11\);

-- Location: FF_X66_Y50_N17
\pulsegen|s_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsegen|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsegen|s_cnt\(5));

-- Location: LCCOMB_X66_Y50_N18
\pulsegen|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|Add0~12_combout\ = (\pulsegen|s_cnt\(6) & (\pulsegen|Add0~11\ $ (GND))) # (!\pulsegen|s_cnt\(6) & (!\pulsegen|Add0~11\ & VCC))
-- \pulsegen|Add0~13\ = CARRY((\pulsegen|s_cnt\(6) & !\pulsegen|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsegen|s_cnt\(6),
	datad => VCC,
	cin => \pulsegen|Add0~11\,
	combout => \pulsegen|Add0~12_combout\,
	cout => \pulsegen|Add0~13\);

-- Location: FF_X66_Y50_N19
\pulsegen|s_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsegen|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsegen|s_cnt\(6));

-- Location: LCCOMB_X66_Y50_N20
\pulsegen|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|Add0~14_combout\ = (\pulsegen|s_cnt\(7) & (!\pulsegen|Add0~13\)) # (!\pulsegen|s_cnt\(7) & ((\pulsegen|Add0~13\) # (GND)))
-- \pulsegen|Add0~15\ = CARRY((!\pulsegen|Add0~13\) # (!\pulsegen|s_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsegen|s_cnt\(7),
	datad => VCC,
	cin => \pulsegen|Add0~13\,
	combout => \pulsegen|Add0~14_combout\,
	cout => \pulsegen|Add0~15\);

-- Location: LCCOMB_X66_Y50_N4
\pulsegen|s_cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|s_cnt~5_combout\ = (!\pulsegen|Equal0~8_combout\ & \pulsegen|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulsegen|Equal0~8_combout\,
	datad => \pulsegen|Add0~14_combout\,
	combout => \pulsegen|s_cnt~5_combout\);

-- Location: FF_X66_Y50_N5
\pulsegen|s_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsegen|s_cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsegen|s_cnt\(7));

-- Location: LCCOMB_X66_Y50_N22
\pulsegen|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|Add0~16_combout\ = (\pulsegen|s_cnt\(8) & (\pulsegen|Add0~15\ $ (GND))) # (!\pulsegen|s_cnt\(8) & (!\pulsegen|Add0~15\ & VCC))
-- \pulsegen|Add0~17\ = CARRY((\pulsegen|s_cnt\(8) & !\pulsegen|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsegen|s_cnt\(8),
	datad => VCC,
	cin => \pulsegen|Add0~15\,
	combout => \pulsegen|Add0~16_combout\,
	cout => \pulsegen|Add0~17\);

-- Location: FF_X66_Y50_N23
\pulsegen|s_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsegen|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsegen|s_cnt\(8));

-- Location: LCCOMB_X66_Y50_N24
\pulsegen|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|Add0~18_combout\ = (\pulsegen|s_cnt\(9) & (!\pulsegen|Add0~17\)) # (!\pulsegen|s_cnt\(9) & ((\pulsegen|Add0~17\) # (GND)))
-- \pulsegen|Add0~19\ = CARRY((!\pulsegen|Add0~17\) # (!\pulsegen|s_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsegen|s_cnt\(9),
	datad => VCC,
	cin => \pulsegen|Add0~17\,
	combout => \pulsegen|Add0~18_combout\,
	cout => \pulsegen|Add0~19\);

-- Location: FF_X66_Y50_N25
\pulsegen|s_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsegen|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsegen|s_cnt\(9));

-- Location: LCCOMB_X66_Y50_N26
\pulsegen|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|Add0~20_combout\ = (\pulsegen|s_cnt\(10) & (\pulsegen|Add0~19\ $ (GND))) # (!\pulsegen|s_cnt\(10) & (!\pulsegen|Add0~19\ & VCC))
-- \pulsegen|Add0~21\ = CARRY((\pulsegen|s_cnt\(10) & !\pulsegen|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsegen|s_cnt\(10),
	datad => VCC,
	cin => \pulsegen|Add0~19\,
	combout => \pulsegen|Add0~20_combout\,
	cout => \pulsegen|Add0~21\);

-- Location: FF_X66_Y50_N27
\pulsegen|s_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsegen|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsegen|s_cnt\(10));

-- Location: LCCOMB_X66_Y50_N28
\pulsegen|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|Add0~22_combout\ = (\pulsegen|s_cnt\(11) & (!\pulsegen|Add0~21\)) # (!\pulsegen|s_cnt\(11) & ((\pulsegen|Add0~21\) # (GND)))
-- \pulsegen|Add0~23\ = CARRY((!\pulsegen|Add0~21\) # (!\pulsegen|s_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsegen|s_cnt\(11),
	datad => VCC,
	cin => \pulsegen|Add0~21\,
	combout => \pulsegen|Add0~22_combout\,
	cout => \pulsegen|Add0~23\);

-- Location: FF_X66_Y50_N29
\pulsegen|s_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsegen|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsegen|s_cnt\(11));

-- Location: LCCOMB_X66_Y50_N30
\pulsegen|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|Add0~24_combout\ = (\pulsegen|s_cnt\(12) & (\pulsegen|Add0~23\ $ (GND))) # (!\pulsegen|s_cnt\(12) & (!\pulsegen|Add0~23\ & VCC))
-- \pulsegen|Add0~25\ = CARRY((\pulsegen|s_cnt\(12) & !\pulsegen|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsegen|s_cnt\(12),
	datad => VCC,
	cin => \pulsegen|Add0~23\,
	combout => \pulsegen|Add0~24_combout\,
	cout => \pulsegen|Add0~25\);

-- Location: LCCOMB_X65_Y49_N0
\pulsegen|s_cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|s_cnt~4_combout\ = (!\pulsegen|Equal0~8_combout\ & \pulsegen|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulsegen|Equal0~8_combout\,
	datad => \pulsegen|Add0~24_combout\,
	combout => \pulsegen|s_cnt~4_combout\);

-- Location: FF_X65_Y49_N1
\pulsegen|s_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsegen|s_cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsegen|s_cnt\(12));

-- Location: LCCOMB_X66_Y49_N0
\pulsegen|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|Add0~26_combout\ = (\pulsegen|s_cnt\(13) & (!\pulsegen|Add0~25\)) # (!\pulsegen|s_cnt\(13) & ((\pulsegen|Add0~25\) # (GND)))
-- \pulsegen|Add0~27\ = CARRY((!\pulsegen|Add0~25\) # (!\pulsegen|s_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsegen|s_cnt\(13),
	datad => VCC,
	cin => \pulsegen|Add0~25\,
	combout => \pulsegen|Add0~26_combout\,
	cout => \pulsegen|Add0~27\);

-- Location: LCCOMB_X65_Y49_N2
\pulsegen|s_cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|s_cnt~3_combout\ = (\pulsegen|Add0~26_combout\ & !\pulsegen|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulsegen|Add0~26_combout\,
	datad => \pulsegen|Equal0~8_combout\,
	combout => \pulsegen|s_cnt~3_combout\);

-- Location: FF_X65_Y49_N3
\pulsegen|s_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsegen|s_cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsegen|s_cnt\(13));

-- Location: LCCOMB_X66_Y49_N2
\pulsegen|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|Add0~28_combout\ = (\pulsegen|s_cnt\(14) & (\pulsegen|Add0~27\ $ (GND))) # (!\pulsegen|s_cnt\(14) & (!\pulsegen|Add0~27\ & VCC))
-- \pulsegen|Add0~29\ = CARRY((\pulsegen|s_cnt\(14) & !\pulsegen|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsegen|s_cnt\(14),
	datad => VCC,
	cin => \pulsegen|Add0~27\,
	combout => \pulsegen|Add0~28_combout\,
	cout => \pulsegen|Add0~29\);

-- Location: LCCOMB_X65_Y49_N12
\pulsegen|s_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|s_cnt~2_combout\ = (!\pulsegen|Equal0~8_combout\ & \pulsegen|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulsegen|Equal0~8_combout\,
	datad => \pulsegen|Add0~28_combout\,
	combout => \pulsegen|s_cnt~2_combout\);

-- Location: FF_X65_Y49_N13
\pulsegen|s_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsegen|s_cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsegen|s_cnt\(14));

-- Location: LCCOMB_X66_Y49_N4
\pulsegen|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|Add0~30_combout\ = (\pulsegen|s_cnt\(15) & (!\pulsegen|Add0~29\)) # (!\pulsegen|s_cnt\(15) & ((\pulsegen|Add0~29\) # (GND)))
-- \pulsegen|Add0~31\ = CARRY((!\pulsegen|Add0~29\) # (!\pulsegen|s_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsegen|s_cnt\(15),
	datad => VCC,
	cin => \pulsegen|Add0~29\,
	combout => \pulsegen|Add0~30_combout\,
	cout => \pulsegen|Add0~31\);

-- Location: LCCOMB_X66_Y49_N26
\pulsegen|s_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|s_cnt~1_combout\ = (\pulsegen|Add0~30_combout\ & !\pulsegen|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulsegen|Add0~30_combout\,
	datad => \pulsegen|Equal0~8_combout\,
	combout => \pulsegen|s_cnt~1_combout\);

-- Location: FF_X66_Y49_N27
\pulsegen|s_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsegen|s_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsegen|s_cnt\(15));

-- Location: LCCOMB_X66_Y49_N6
\pulsegen|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|Add0~32_combout\ = (\pulsegen|s_cnt\(16) & (\pulsegen|Add0~31\ $ (GND))) # (!\pulsegen|s_cnt\(16) & (!\pulsegen|Add0~31\ & VCC))
-- \pulsegen|Add0~33\ = CARRY((\pulsegen|s_cnt\(16) & !\pulsegen|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsegen|s_cnt\(16),
	datad => VCC,
	cin => \pulsegen|Add0~31\,
	combout => \pulsegen|Add0~32_combout\,
	cout => \pulsegen|Add0~33\);

-- Location: FF_X66_Y49_N7
\pulsegen|s_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsegen|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsegen|s_cnt\(16));

-- Location: LCCOMB_X66_Y49_N8
\pulsegen|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|Add0~34_combout\ = (\pulsegen|s_cnt\(17) & (!\pulsegen|Add0~33\)) # (!\pulsegen|s_cnt\(17) & ((\pulsegen|Add0~33\) # (GND)))
-- \pulsegen|Add0~35\ = CARRY((!\pulsegen|Add0~33\) # (!\pulsegen|s_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsegen|s_cnt\(17),
	datad => VCC,
	cin => \pulsegen|Add0~33\,
	combout => \pulsegen|Add0~34_combout\,
	cout => \pulsegen|Add0~35\);

-- Location: LCCOMB_X65_Y49_N6
\pulsegen|s_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|s_cnt~0_combout\ = (\pulsegen|Add0~34_combout\ & !\pulsegen|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulsegen|Add0~34_combout\,
	datad => \pulsegen|Equal0~8_combout\,
	combout => \pulsegen|s_cnt~0_combout\);

-- Location: FF_X65_Y49_N7
\pulsegen|s_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsegen|s_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsegen|s_cnt\(17));

-- Location: LCCOMB_X66_Y49_N10
\pulsegen|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|Add0~36_combout\ = (\pulsegen|s_cnt\(18) & (\pulsegen|Add0~35\ $ (GND))) # (!\pulsegen|s_cnt\(18) & (!\pulsegen|Add0~35\ & VCC))
-- \pulsegen|Add0~37\ = CARRY((\pulsegen|s_cnt\(18) & !\pulsegen|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsegen|s_cnt\(18),
	datad => VCC,
	cin => \pulsegen|Add0~35\,
	combout => \pulsegen|Add0~36_combout\,
	cout => \pulsegen|Add0~37\);

-- Location: FF_X66_Y49_N11
\pulsegen|s_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsegen|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsegen|s_cnt\(18));

-- Location: LCCOMB_X66_Y49_N12
\pulsegen|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|Add0~38_combout\ = (\pulsegen|s_cnt\(19) & (!\pulsegen|Add0~37\)) # (!\pulsegen|s_cnt\(19) & ((\pulsegen|Add0~37\) # (GND)))
-- \pulsegen|Add0~39\ = CARRY((!\pulsegen|Add0~37\) # (!\pulsegen|s_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsegen|s_cnt\(19),
	datad => VCC,
	cin => \pulsegen|Add0~37\,
	combout => \pulsegen|Add0~38_combout\,
	cout => \pulsegen|Add0~39\);

-- Location: LCCOMB_X65_Y49_N26
\pulsegen|s_cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|s_cnt~6_combout\ = (\pulsegen|Add0~38_combout\ & !\pulsegen|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulsegen|Add0~38_combout\,
	datad => \pulsegen|Equal0~8_combout\,
	combout => \pulsegen|s_cnt~6_combout\);

-- Location: FF_X65_Y49_N27
\pulsegen|s_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsegen|s_cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsegen|s_cnt\(19));

-- Location: LCCOMB_X66_Y49_N14
\pulsegen|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|Add0~40_combout\ = (\pulsegen|s_cnt\(20) & (\pulsegen|Add0~39\ $ (GND))) # (!\pulsegen|s_cnt\(20) & (!\pulsegen|Add0~39\ & VCC))
-- \pulsegen|Add0~41\ = CARRY((\pulsegen|s_cnt\(20) & !\pulsegen|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulsegen|s_cnt\(20),
	datad => VCC,
	cin => \pulsegen|Add0~39\,
	combout => \pulsegen|Add0~40_combout\,
	cout => \pulsegen|Add0~41\);

-- Location: LCCOMB_X66_Y49_N28
\pulsegen|s_cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|s_cnt~7_combout\ = (\pulsegen|Add0~40_combout\ & !\pulsegen|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulsegen|Add0~40_combout\,
	datad => \pulsegen|Equal0~8_combout\,
	combout => \pulsegen|s_cnt~7_combout\);

-- Location: FF_X66_Y49_N29
\pulsegen|s_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsegen|s_cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsegen|s_cnt\(20));

-- Location: LCCOMB_X66_Y49_N16
\pulsegen|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|Add0~42_combout\ = (\pulsegen|s_cnt\(21) & (!\pulsegen|Add0~41\)) # (!\pulsegen|s_cnt\(21) & ((\pulsegen|Add0~41\) # (GND)))
-- \pulsegen|Add0~43\ = CARRY((!\pulsegen|Add0~41\) # (!\pulsegen|s_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsegen|s_cnt\(21),
	datad => VCC,
	cin => \pulsegen|Add0~41\,
	combout => \pulsegen|Add0~42_combout\,
	cout => \pulsegen|Add0~43\);

-- Location: LCCOMB_X65_Y49_N10
\pulsegen|s_cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|s_cnt~8_combout\ = (!\pulsegen|Equal0~8_combout\ & \pulsegen|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulsegen|Equal0~8_combout\,
	datad => \pulsegen|Add0~42_combout\,
	combout => \pulsegen|s_cnt~8_combout\);

-- Location: FF_X65_Y49_N11
\pulsegen|s_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsegen|s_cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsegen|s_cnt\(21));

-- Location: LCCOMB_X66_Y49_N18
\pulsegen|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|Add0~44_combout\ = (\pulsegen|s_cnt\(22) & (\pulsegen|Add0~43\ $ (GND))) # (!\pulsegen|s_cnt\(22) & (!\pulsegen|Add0~43\ & VCC))
-- \pulsegen|Add0~45\ = CARRY((\pulsegen|s_cnt\(22) & !\pulsegen|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsegen|s_cnt\(22),
	datad => VCC,
	cin => \pulsegen|Add0~43\,
	combout => \pulsegen|Add0~44_combout\,
	cout => \pulsegen|Add0~45\);

-- Location: LCCOMB_X66_Y49_N30
\pulsegen|s_cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|s_cnt~9_combout\ = (!\pulsegen|Equal0~8_combout\ & \pulsegen|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulsegen|Equal0~8_combout\,
	datad => \pulsegen|Add0~44_combout\,
	combout => \pulsegen|s_cnt~9_combout\);

-- Location: FF_X66_Y49_N31
\pulsegen|s_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsegen|s_cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsegen|s_cnt\(22));

-- Location: LCCOMB_X66_Y49_N20
\pulsegen|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|Add0~46_combout\ = (\pulsegen|s_cnt\(23) & (!\pulsegen|Add0~45\)) # (!\pulsegen|s_cnt\(23) & ((\pulsegen|Add0~45\) # (GND)))
-- \pulsegen|Add0~47\ = CARRY((!\pulsegen|Add0~45\) # (!\pulsegen|s_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsegen|s_cnt\(23),
	datad => VCC,
	cin => \pulsegen|Add0~45\,
	combout => \pulsegen|Add0~46_combout\,
	cout => \pulsegen|Add0~47\);

-- Location: LCCOMB_X65_Y49_N8
\pulsegen|s_cnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|s_cnt~10_combout\ = (\pulsegen|Add0~46_combout\ & !\pulsegen|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulsegen|Add0~46_combout\,
	datad => \pulsegen|Equal0~8_combout\,
	combout => \pulsegen|s_cnt~10_combout\);

-- Location: FF_X65_Y49_N9
\pulsegen|s_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsegen|s_cnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsegen|s_cnt\(23));

-- Location: LCCOMB_X65_Y49_N22
\pulsegen|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|Equal0~6_combout\ = (\pulsegen|s_cnt\(21) & (\pulsegen|s_cnt\(22) & (\pulsegen|s_cnt\(23) & \pulsegen|s_cnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsegen|s_cnt\(21),
	datab => \pulsegen|s_cnt\(22),
	datac => \pulsegen|s_cnt\(23),
	datad => \pulsegen|s_cnt\(20),
	combout => \pulsegen|Equal0~6_combout\);

-- Location: LCCOMB_X65_Y49_N28
\pulsegen|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|Equal0~5_combout\ = (\pulsegen|s_cnt\(19) & (!\pulsegen|s_cnt\(18) & (\pulsegen|s_cnt\(1) & \pulsegen|s_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsegen|s_cnt\(19),
	datab => \pulsegen|s_cnt\(18),
	datac => \pulsegen|s_cnt\(1),
	datad => \pulsegen|s_cnt\(0),
	combout => \pulsegen|Equal0~5_combout\);

-- Location: LCCOMB_X66_Y49_N22
\pulsegen|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|Add0~48_combout\ = (\pulsegen|s_cnt\(24) & (\pulsegen|Add0~47\ $ (GND))) # (!\pulsegen|s_cnt\(24) & (!\pulsegen|Add0~47\ & VCC))
-- \pulsegen|Add0~49\ = CARRY((\pulsegen|s_cnt\(24) & !\pulsegen|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulsegen|s_cnt\(24),
	datad => VCC,
	cin => \pulsegen|Add0~47\,
	combout => \pulsegen|Add0~48_combout\,
	cout => \pulsegen|Add0~49\);

-- Location: FF_X66_Y49_N23
\pulsegen|s_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsegen|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsegen|s_cnt\(24));

-- Location: LCCOMB_X66_Y49_N24
\pulsegen|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|Add0~50_combout\ = \pulsegen|Add0~49\ $ (\pulsegen|s_cnt\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pulsegen|s_cnt\(25),
	cin => \pulsegen|Add0~49\,
	combout => \pulsegen|Add0~50_combout\);

-- Location: LCCOMB_X65_Y49_N14
\pulsegen|s_cnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|s_cnt~11_combout\ = (!\pulsegen|Equal0~8_combout\ & \pulsegen|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulsegen|Equal0~8_combout\,
	datad => \pulsegen|Add0~50_combout\,
	combout => \pulsegen|s_cnt~11_combout\);

-- Location: FF_X65_Y49_N15
\pulsegen|s_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsegen|s_cnt~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsegen|s_cnt\(25));

-- Location: LCCOMB_X65_Y49_N4
\pulsegen|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|Equal0~7_combout\ = (\pulsegen|s_cnt\(25) & !\pulsegen|s_cnt\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulsegen|s_cnt\(25),
	datad => \pulsegen|s_cnt\(24),
	combout => \pulsegen|Equal0~7_combout\);

-- Location: LCCOMB_X65_Y49_N30
\pulsegen|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|Equal0~0_combout\ = (\pulsegen|s_cnt\(17) & (\pulsegen|s_cnt\(14) & (\pulsegen|s_cnt\(15) & !\pulsegen|s_cnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsegen|s_cnt\(17),
	datab => \pulsegen|s_cnt\(14),
	datac => \pulsegen|s_cnt\(15),
	datad => \pulsegen|s_cnt\(16),
	combout => \pulsegen|Equal0~0_combout\);

-- Location: LCCOMB_X65_Y49_N20
\pulsegen|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|Equal0~1_combout\ = (\pulsegen|s_cnt\(13) & (\pulsegen|s_cnt\(12) & (!\pulsegen|s_cnt\(11) & !\pulsegen|s_cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsegen|s_cnt\(13),
	datab => \pulsegen|s_cnt\(12),
	datac => \pulsegen|s_cnt\(11),
	datad => \pulsegen|s_cnt\(10),
	combout => \pulsegen|Equal0~1_combout\);

-- Location: LCCOMB_X66_Y50_N0
\pulsegen|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|Equal0~3_combout\ = (\pulsegen|s_cnt\(2) & (\pulsegen|s_cnt\(5) & (\pulsegen|s_cnt\(4) & \pulsegen|s_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsegen|s_cnt\(2),
	datab => \pulsegen|s_cnt\(5),
	datac => \pulsegen|s_cnt\(4),
	datad => \pulsegen|s_cnt\(3),
	combout => \pulsegen|Equal0~3_combout\);

-- Location: LCCOMB_X66_Y50_N2
\pulsegen|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|Equal0~2_combout\ = (!\pulsegen|s_cnt\(8) & (\pulsegen|s_cnt\(6) & (!\pulsegen|s_cnt\(7) & !\pulsegen|s_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsegen|s_cnt\(8),
	datab => \pulsegen|s_cnt\(6),
	datac => \pulsegen|s_cnt\(7),
	datad => \pulsegen|s_cnt\(9),
	combout => \pulsegen|Equal0~2_combout\);

-- Location: LCCOMB_X65_Y49_N16
\pulsegen|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|Equal0~4_combout\ = (\pulsegen|Equal0~0_combout\ & (\pulsegen|Equal0~1_combout\ & (\pulsegen|Equal0~3_combout\ & \pulsegen|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsegen|Equal0~0_combout\,
	datab => \pulsegen|Equal0~1_combout\,
	datac => \pulsegen|Equal0~3_combout\,
	datad => \pulsegen|Equal0~2_combout\,
	combout => \pulsegen|Equal0~4_combout\);

-- Location: LCCOMB_X65_Y49_N24
\pulsegen|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|Equal0~8_combout\ = (\pulsegen|Equal0~6_combout\ & (\pulsegen|Equal0~5_combout\ & (\pulsegen|Equal0~7_combout\ & \pulsegen|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsegen|Equal0~6_combout\,
	datab => \pulsegen|Equal0~5_combout\,
	datac => \pulsegen|Equal0~7_combout\,
	datad => \pulsegen|Equal0~4_combout\,
	combout => \pulsegen|Equal0~8_combout\);

-- Location: LCCOMB_X65_Y49_N18
\pulsegen|pulse~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsegen|pulse~feeder_combout\ = \pulsegen|Equal0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pulsegen|Equal0~8_combout\,
	combout => \pulsegen|pulse~feeder_combout\);

-- Location: FF_X65_Y49_N19
\pulsegen|pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulsegen|pulse~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsegen|pulse~q\);

-- Location: CLKCTRL_G14
\pulsegen|pulse~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pulsegen|pulse~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pulsegen|pulse~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X109_Y36_N8
\counter|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|Add0~0_combout\ = \counter|s_count\(0) $ (GND)
-- \counter|Add0~1\ = CARRY(!\counter|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(0),
	datad => VCC,
	combout => \counter|Add0~0_combout\,
	cout => \counter|Add0~1\);

-- Location: LCCOMB_X109_Y36_N10
\counter|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|Add0~2_combout\ = (\counter|s_count\(1) & (!\counter|Add0~1\)) # (!\counter|s_count\(1) & (\counter|Add0~1\ & VCC))
-- \counter|Add0~3\ = CARRY((\counter|s_count\(1) & !\counter|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|s_count\(1),
	datad => VCC,
	cin => \counter|Add0~1\,
	combout => \counter|Add0~2_combout\,
	cout => \counter|Add0~3\);

-- Location: LCCOMB_X109_Y36_N28
\counter|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|Add0~22_combout\ = (\KEY[0]~input_o\ & (!\counter|Add0~2_combout\ & ((\counter|Equal0~1_combout\) # (\counter|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|Equal0~1_combout\,
	datab => \counter|Equal0~0_combout\,
	datac => \KEY[0]~input_o\,
	datad => \counter|Add0~2_combout\,
	combout => \counter|Add0~22_combout\);

-- Location: FF_X109_Y36_N29
\counter|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pulsegen|pulse~clkctrl_outclk\,
	d => \counter|Add0~22_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(1));

-- Location: LCCOMB_X109_Y36_N12
\counter|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|Add0~4_combout\ = (\counter|s_count\(2) & ((GND) # (!\counter|Add0~3\))) # (!\counter|s_count\(2) & (\counter|Add0~3\ $ (GND)))
-- \counter|Add0~5\ = CARRY((\counter|s_count\(2)) # (!\counter|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(2),
	datad => VCC,
	cin => \counter|Add0~3\,
	combout => \counter|Add0~4_combout\,
	cout => \counter|Add0~5\);

-- Location: LCCOMB_X109_Y36_N26
\counter|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|Add0~21_combout\ = (\counter|Add0~4_combout\ & (\KEY[0]~input_o\ & ((\counter|Equal0~1_combout\) # (\counter|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|Add0~4_combout\,
	datab => \KEY[0]~input_o\,
	datac => \counter|Equal0~1_combout\,
	datad => \counter|Equal0~0_combout\,
	combout => \counter|Add0~21_combout\);

-- Location: FF_X109_Y36_N27
\counter|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pulsegen|pulse~clkctrl_outclk\,
	d => \counter|Add0~21_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(2));

-- Location: LCCOMB_X109_Y36_N14
\counter|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|Add0~6_combout\ = (\counter|s_count\(3) & (!\counter|Add0~5\)) # (!\counter|s_count\(3) & (\counter|Add0~5\ & VCC))
-- \counter|Add0~7\ = CARRY((\counter|s_count\(3) & !\counter|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|s_count\(3),
	datad => VCC,
	cin => \counter|Add0~5\,
	combout => \counter|Add0~6_combout\,
	cout => \counter|Add0~7\);

-- Location: LCCOMB_X109_Y36_N24
\counter|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|Add0~20_combout\ = (\KEY[0]~input_o\ & (!\counter|Add0~6_combout\ & ((\counter|Equal0~1_combout\) # (\counter|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|Equal0~1_combout\,
	datab => \KEY[0]~input_o\,
	datac => \counter|Add0~6_combout\,
	datad => \counter|Equal0~0_combout\,
	combout => \counter|Add0~20_combout\);

-- Location: FF_X109_Y36_N25
\counter|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pulsegen|pulse~clkctrl_outclk\,
	d => \counter|Add0~20_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(3));

-- Location: LCCOMB_X110_Y36_N26
\counter|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|Equal0~0_combout\ = (((\counter|s_count\(2)) # (!\counter|s_count\(1))) # (!\counter|s_count\(3))) # (!\counter|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(0),
	datab => \counter|s_count\(3),
	datac => \counter|s_count\(2),
	datad => \counter|s_count\(1),
	combout => \counter|Equal0~0_combout\);

-- Location: LCCOMB_X109_Y36_N16
\counter|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|Add0~8_combout\ = (\counter|s_count\(4) & (\counter|Add0~7\ $ (GND))) # (!\counter|s_count\(4) & ((GND) # (!\counter|Add0~7\)))
-- \counter|Add0~9\ = CARRY((!\counter|Add0~7\) # (!\counter|s_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|s_count\(4),
	datad => VCC,
	cin => \counter|Add0~7\,
	combout => \counter|Add0~8_combout\,
	cout => \counter|Add0~9\);

-- Location: LCCOMB_X109_Y36_N2
\counter|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|Add0~19_combout\ = (\KEY[0]~input_o\ & (!\counter|Add0~8_combout\ & ((\counter|Equal0~1_combout\) # (\counter|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|Equal0~1_combout\,
	datab => \counter|Equal0~0_combout\,
	datac => \KEY[0]~input_o\,
	datad => \counter|Add0~8_combout\,
	combout => \counter|Add0~19_combout\);

-- Location: FF_X109_Y36_N3
\counter|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pulsegen|pulse~clkctrl_outclk\,
	d => \counter|Add0~19_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(4));

-- Location: LCCOMB_X109_Y36_N18
\counter|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|Add0~10_combout\ = (\counter|s_count\(5) & (!\counter|Add0~9\)) # (!\counter|s_count\(5) & (\counter|Add0~9\ & VCC))
-- \counter|Add0~11\ = CARRY((\counter|s_count\(5) & !\counter|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|s_count\(5),
	datad => VCC,
	cin => \counter|Add0~9\,
	combout => \counter|Add0~10_combout\,
	cout => \counter|Add0~11\);

-- Location: LCCOMB_X109_Y36_N0
\counter|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|Add0~18_combout\ = (\KEY[0]~input_o\ & (!\counter|Add0~10_combout\ & ((\counter|Equal0~1_combout\) # (\counter|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|Equal0~1_combout\,
	datab => \counter|Equal0~0_combout\,
	datac => \KEY[0]~input_o\,
	datad => \counter|Add0~10_combout\,
	combout => \counter|Add0~18_combout\);

-- Location: FF_X109_Y36_N1
\counter|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pulsegen|pulse~clkctrl_outclk\,
	d => \counter|Add0~18_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(5));

-- Location: LCCOMB_X109_Y36_N20
\counter|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|Add0~12_combout\ = (\counter|s_count\(6) & ((GND) # (!\counter|Add0~11\))) # (!\counter|s_count\(6) & (\counter|Add0~11\ $ (GND)))
-- \counter|Add0~13\ = CARRY((\counter|s_count\(6)) # (!\counter|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(6),
	datad => VCC,
	cin => \counter|Add0~11\,
	combout => \counter|Add0~12_combout\,
	cout => \counter|Add0~13\);

-- Location: LCCOMB_X109_Y36_N6
\counter|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|Add0~17_combout\ = (\KEY[0]~input_o\ & (\counter|Add0~12_combout\ & ((\counter|Equal0~1_combout\) # (\counter|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|Equal0~1_combout\,
	datab => \counter|Equal0~0_combout\,
	datac => \KEY[0]~input_o\,
	datad => \counter|Add0~12_combout\,
	combout => \counter|Add0~17_combout\);

-- Location: FF_X109_Y36_N7
\counter|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pulsegen|pulse~clkctrl_outclk\,
	d => \counter|Add0~17_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(6));

-- Location: LCCOMB_X109_Y36_N22
\counter|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|Add0~14_combout\ = \counter|s_count\(7) $ (!\counter|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|s_count\(7),
	cin => \counter|Add0~13\,
	combout => \counter|Add0~14_combout\);

-- Location: LCCOMB_X109_Y36_N4
\counter|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|Add0~16_combout\ = (\KEY[0]~input_o\ & (\counter|Add0~14_combout\ & ((\counter|Equal0~1_combout\) # (\counter|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|Equal0~1_combout\,
	datab => \KEY[0]~input_o\,
	datac => \counter|Add0~14_combout\,
	datad => \counter|Equal0~0_combout\,
	combout => \counter|Add0~16_combout\);

-- Location: FF_X109_Y36_N5
\counter|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pulsegen|pulse~clkctrl_outclk\,
	d => \counter|Add0~16_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(7));

-- Location: LCCOMB_X108_Y36_N16
\counter|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|Equal0~1_combout\ = (\counter|s_count\(7)) # (((\counter|s_count\(6)) # (!\counter|s_count\(4))) # (!\counter|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(7),
	datab => \counter|s_count\(5),
	datac => \counter|s_count\(4),
	datad => \counter|s_count\(6),
	combout => \counter|Equal0~1_combout\);

-- Location: LCCOMB_X109_Y36_N30
\counter|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|Add0~23_combout\ = (\KEY[0]~input_o\ & (!\counter|Add0~0_combout\ & ((\counter|Equal0~1_combout\) # (\counter|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|Equal0~1_combout\,
	datab => \KEY[0]~input_o\,
	datac => \counter|Add0~0_combout\,
	datad => \counter|Equal0~0_combout\,
	combout => \counter|Add0~23_combout\);

-- Location: FF_X109_Y36_N31
\counter|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pulsegen|pulse~clkctrl_outclk\,
	d => \counter|Add0~23_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(0));

-- Location: LCCOMB_X108_Y35_N18
\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \counter|s_count\(5) $ (GND)
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(!\counter|s_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|s_count\(5),
	datad => VCC,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X108_Y35_N20
\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\counter|s_count\(6) & (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\counter|s_count\(6) & 
-- (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\counter|s_count\(6) & !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(6),
	datad => VCC,
	cin => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X108_Y35_N22
\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\counter|s_count\(7) & (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\counter|s_count\(7) & 
-- (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\counter|s_count\(7) & !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|s_count\(7),
	datad => VCC,
	cin => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X108_Y35_N24
\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X108_Y35_N10
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[27]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[27]~57_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[27]~57_combout\);

-- Location: LCCOMB_X108_Y35_N12
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[27]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[27]~56_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \counter|s_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \counter|s_count\(7),
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[27]~56_combout\);

-- Location: LCCOMB_X108_Y35_N8
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[26]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[26]~58_combout\ = (\counter|s_count\(6) & \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|s_count\(6),
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[26]~58_combout\);

-- Location: LCCOMB_X108_Y35_N6
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[26]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[26]~59_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[26]~59_combout\);

-- Location: LCCOMB_X108_Y35_N2
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[25]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[25]~61_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[25]~61_combout\);

-- Location: LCCOMB_X108_Y35_N28
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[25]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[25]~60_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\counter|s_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \counter|s_count\(5),
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[25]~60_combout\);

-- Location: LCCOMB_X108_Y35_N16
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[24]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[24]~62_combout\ = (!\counter|s_count\(4) & \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|s_count\(4),
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[24]~62_combout\);

-- Location: LCCOMB_X108_Y35_N30
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[24]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[24]~63_combout\ = (!\counter|s_count\(4) & !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|s_count\(4),
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[24]~63_combout\);

-- Location: LCCOMB_X109_Y35_N10
\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[24]~62_combout\) # (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[24]~63_combout\)))
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[24]~62_combout\) # (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[24]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[24]~62_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[24]~63_combout\,
	datad => VCC,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X109_Y35_N12
\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[25]~61_combout\) # 
-- (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[25]~60_combout\)))) # (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[25]~61_combout\ & 
-- (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[25]~60_combout\)))
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[25]~61_combout\ & (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[25]~60_combout\ & 
-- !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[25]~61_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[25]~60_combout\,
	datad => VCC,
	cin => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X109_Y35_N14
\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[26]~58_combout\) # 
-- (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[26]~59_combout\)))) # (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[26]~58_combout\) # 
-- (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[26]~59_combout\)))))
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[26]~58_combout\) # 
-- (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[26]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[26]~58_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[26]~59_combout\,
	datad => VCC,
	cin => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X109_Y35_N16
\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[27]~57_combout\) # 
-- (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[27]~56_combout\)))) # (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[27]~57_combout\ & 
-- (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[27]~56_combout\)))
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[27]~57_combout\ & (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[27]~56_combout\ & 
-- !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[27]~57_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[27]~56_combout\,
	datad => VCC,
	cin => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X109_Y35_N18
\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X108_Y35_N26
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[36]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[36]~101_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\counter|s_count\(7)))) # (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \counter|s_count\(7),
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[36]~101_combout\);

-- Location: LCCOMB_X109_Y35_N0
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[36]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[36]~64_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[36]~64_combout\);

-- Location: LCCOMB_X108_Y35_N0
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[35]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[35]~102_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\counter|s_count\(6)))) # (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \counter|s_count\(6),
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[35]~102_combout\);

-- Location: LCCOMB_X109_Y35_N2
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[35]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[35]~65_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[35]~65_combout\);

-- Location: LCCOMB_X108_Y35_N14
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[34]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[34]~103_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((!\counter|s_count\(5)))) # (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \counter|s_count\(5),
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[34]~103_combout\);

-- Location: LCCOMB_X109_Y35_N4
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[34]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[34]~66_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[34]~66_combout\);

-- Location: LCCOMB_X109_Y35_N6
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~68_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~68_combout\);

-- Location: LCCOMB_X108_Y35_N4
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~67_combout\ = (!\counter|s_count\(4) & \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|s_count\(4),
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~67_combout\);

-- Location: LCCOMB_X110_Y35_N22
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\ = (!\counter|s_count\(3) & !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|s_count\(3),
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\);

-- Location: LCCOMB_X110_Y35_N24
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~69_combout\ = (!\counter|s_count\(3) & \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|s_count\(3),
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~69_combout\);

-- Location: LCCOMB_X109_Y35_N20
\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\) # (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~69_combout\)))
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\) # (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~69_combout\,
	datad => VCC,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X109_Y35_N22
\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~68_combout\) # 
-- (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~67_combout\)))) # (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~68_combout\ & 
-- (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~67_combout\)))
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~68_combout\ & (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~67_combout\ & 
-- !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~68_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~67_combout\,
	datad => VCC,
	cin => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X109_Y35_N24
\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[34]~103_combout\) # 
-- (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[34]~66_combout\)))) # (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[34]~103_combout\) # 
-- (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[34]~66_combout\)))))
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[34]~103_combout\) # 
-- (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[34]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[34]~103_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[34]~66_combout\,
	datad => VCC,
	cin => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X109_Y35_N26
\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[35]~102_combout\) # 
-- (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[35]~65_combout\)))) # (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[35]~102_combout\ & 
-- (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[35]~65_combout\)))
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[35]~102_combout\ & (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[35]~65_combout\ & 
-- !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[35]~102_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[35]~65_combout\,
	datad => VCC,
	cin => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X109_Y35_N28
\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[36]~101_combout\) # 
-- (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[36]~64_combout\))))) # (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[36]~101_combout\) # 
-- ((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[36]~64_combout\) # (GND))))
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[36]~101_combout\) # ((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[36]~64_combout\) # 
-- (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[36]~101_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[36]~64_combout\,
	datad => VCC,
	cin => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X109_Y35_N30
\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X111_Y35_N30
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[40]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[40]~78_combout\ = (\counter|s_count\(2) & !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|s_count\(2),
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[40]~78_combout\);

-- Location: LCCOMB_X111_Y35_N24
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[40]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[40]~77_combout\ = (\counter|s_count\(2) & \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|s_count\(2),
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[40]~77_combout\);

-- Location: LCCOMB_X111_Y35_N8
\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[40]~78_combout\) # (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[40]~77_combout\)))
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[40]~78_combout\) # (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[40]~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[40]~78_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[40]~77_combout\,
	datad => VCC,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X110_Y35_N0
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[45]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[45]~71_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[45]~71_combout\);

-- Location: LCCOMB_X110_Y35_N4
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[45]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[45]~93_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[36]~101_combout\) # 
-- ((!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[36]~101_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[45]~93_combout\);

-- Location: LCCOMB_X110_Y35_N10
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[44]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[44]~72_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[44]~72_combout\);

-- Location: LCCOMB_X110_Y35_N6
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[44]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[44]~94_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[35]~102_combout\) # 
-- ((\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[35]~102_combout\,
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[44]~94_combout\);

-- Location: LCCOMB_X109_Y35_N8
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[43]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[43]~95_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[34]~103_combout\) # 
-- ((\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[34]~103_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[43]~95_combout\);

-- Location: LCCOMB_X110_Y35_N20
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[43]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[43]~73_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[43]~73_combout\);

-- Location: LCCOMB_X110_Y35_N26
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[42]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[42]~74_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[42]~74_combout\);

-- Location: LCCOMB_X110_Y35_N12
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[42]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[42]~104_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((!\counter|s_count\(4)))) # (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \counter|s_count\(4),
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[42]~104_combout\);

-- Location: LCCOMB_X110_Y35_N16
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[41]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[41]~75_combout\ = (!\counter|s_count\(3) & \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|s_count\(3),
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[41]~75_combout\);

-- Location: LCCOMB_X110_Y35_N14
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[41]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[41]~76_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[41]~76_combout\);

-- Location: LCCOMB_X111_Y35_N10
\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[41]~75_combout\) # 
-- (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[41]~76_combout\)))) # (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[41]~75_combout\ & 
-- (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[41]~76_combout\)))
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[41]~75_combout\ & (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[41]~76_combout\ & 
-- !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[41]~75_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[41]~76_combout\,
	datad => VCC,
	cin => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X111_Y35_N12
\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[42]~74_combout\) # 
-- (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[42]~104_combout\)))) # (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[42]~74_combout\) # 
-- (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[42]~104_combout\)))))
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[42]~74_combout\) # 
-- (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[42]~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[42]~74_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[42]~104_combout\,
	datad => VCC,
	cin => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X111_Y35_N14
\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[43]~95_combout\) # 
-- (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[43]~73_combout\)))) # (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[43]~95_combout\ & 
-- (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[43]~73_combout\)))
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[43]~95_combout\ & (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[43]~73_combout\ & 
-- !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[43]~95_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[43]~73_combout\,
	datad => VCC,
	cin => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X111_Y35_N16
\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[44]~72_combout\) # 
-- (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[44]~94_combout\))))) # (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[44]~72_combout\) # 
-- ((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[44]~94_combout\) # (GND))))
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[44]~72_combout\) # ((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[44]~94_combout\) # 
-- (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[44]~72_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[44]~94_combout\,
	datad => VCC,
	cin => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X111_Y35_N18
\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[45]~71_combout\) # 
-- (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[45]~93_combout\)))) # (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[45]~71_combout\ & 
-- (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[45]~93_combout\)))
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[45]~71_combout\ & (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[45]~93_combout\ & 
-- !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[45]~71_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[45]~93_combout\,
	datad => VCC,
	cin => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X111_Y35_N20
\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X111_Y35_N2
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[49]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[49]~86_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[49]~86_combout\);

-- Location: LCCOMB_X110_Y36_N0
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[49]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\ = (\counter|s_count\(2) & \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(2),
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\);

-- Location: LCCOMB_X109_Y38_N16
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[48]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[48]~87_combout\ = (!\counter|s_count\(1) & \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|s_count\(1),
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[48]~87_combout\);

-- Location: LCCOMB_X109_Y38_N6
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[48]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[48]~88_combout\ = (!\counter|s_count\(1) & !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|s_count\(1),
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[48]~88_combout\);

-- Location: LCCOMB_X110_Y38_N10
\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[48]~87_combout\) # (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[48]~88_combout\)))
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[48]~87_combout\) # (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[48]~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[48]~87_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[48]~88_combout\,
	datad => VCC,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X110_Y38_N12
\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[49]~86_combout\) # 
-- (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\)))) # (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[49]~86_combout\ & 
-- (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\)))
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[49]~86_combout\ & (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\ & 
-- !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[49]~86_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\,
	datad => VCC,
	cin => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X110_Y35_N30
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[54]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[54]~97_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[45]~93_combout\) # 
-- ((\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[45]~93_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[54]~97_combout\);

-- Location: LCCOMB_X111_Y35_N22
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[54]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[54]~81_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[54]~81_combout\);

-- Location: LCCOMB_X110_Y35_N28
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[53]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[53]~96_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[44]~94_combout\) # 
-- ((\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[44]~94_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[53]~96_combout\);

-- Location: LCCOMB_X111_Y35_N28
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[53]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[53]~79_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[53]~79_combout\);

-- Location: LCCOMB_X110_Y38_N28
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[52]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[52]~82_combout\ = (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[52]~82_combout\);

-- Location: LCCOMB_X110_Y35_N8
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[52]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[52]~98_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[43]~95_combout\) # 
-- ((\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[43]~95_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[52]~98_combout\);

-- Location: LCCOMB_X110_Y38_N6
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[51]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[51]~83_combout\ = (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[51]~83_combout\);

-- Location: LCCOMB_X110_Y35_N18
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[51]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[51]~99_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[42]~104_combout\) # 
-- ((!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[42]~104_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[51]~99_combout\);

-- Location: LCCOMB_X111_Y35_N0
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[50]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[50]~84_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[50]~84_combout\);

-- Location: LCCOMB_X110_Y35_N2
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[50]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[50]~105_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (!\counter|s_count\(3))) # (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(3),
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[50]~105_combout\);

-- Location: LCCOMB_X110_Y38_N14
\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[50]~84_combout\) # 
-- (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[50]~105_combout\)))) # (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[50]~84_combout\) # 
-- (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[50]~105_combout\)))))
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[50]~84_combout\) # 
-- (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[50]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[50]~84_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[50]~105_combout\,
	datad => VCC,
	cin => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X110_Y38_N16
\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[51]~83_combout\) # 
-- (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[51]~99_combout\)))) # (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[51]~83_combout\ & 
-- (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[51]~99_combout\)))
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ = CARRY((!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[51]~83_combout\ & (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[51]~99_combout\ & 
-- !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[51]~83_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[51]~99_combout\,
	datad => VCC,
	cin => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	cout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\);

-- Location: LCCOMB_X110_Y38_N18
\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[52]~82_combout\) # 
-- (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[52]~98_combout\))))) # (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[52]~82_combout\) # 
-- ((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[52]~98_combout\) # (GND))))
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ = CARRY((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[52]~82_combout\) # ((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[52]~98_combout\) # 
-- (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[52]~82_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[52]~98_combout\,
	datad => VCC,
	cin => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	cout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\);

-- Location: LCCOMB_X110_Y38_N20
\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & (((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[53]~96_combout\) # 
-- (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[53]~79_combout\)))) # (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[53]~96_combout\ & 
-- (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[53]~79_combout\)))
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ = CARRY((!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[53]~96_combout\ & (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[53]~79_combout\ & 
-- !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[53]~96_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[53]~79_combout\,
	datad => VCC,
	cin => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	cout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\);

-- Location: LCCOMB_X110_Y38_N22
\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ & ((((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[54]~97_combout\) # 
-- (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[54]~81_combout\))))) # (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ & ((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[54]~97_combout\) # 
-- ((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[54]~81_combout\) # (GND))))
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ = CARRY((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[54]~97_combout\) # ((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[54]~81_combout\) # 
-- (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[54]~97_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[54]~81_combout\,
	datad => VCC,
	cin => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	cout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\);

-- Location: LCCOMB_X110_Y38_N24
\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X110_Y38_N8
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[58]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[58]~91_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\) # 
-- (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[49]~86_combout\)))) # (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\,
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[49]~86_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[58]~91_combout\);

-- Location: LCCOMB_X109_Y38_N24
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[57]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[57]~92_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (!\counter|s_count\(1))) # 
-- (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(1),
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[57]~92_combout\);

-- Location: LCCOMB_X111_Y35_N4
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[60]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[60]~89_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[42]~104_combout\) # 
-- (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[42]~74_combout\)))) # (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[42]~104_combout\,
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[42]~74_combout\,
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[60]~89_combout\);

-- Location: LCCOMB_X110_Y38_N2
\display1|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Equal2~1_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\) # ((!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & 
-- (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ & !\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \display1|Equal2~1_combout\);

-- Location: LCCOMB_X110_Y38_N0
\display1|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Equal2~2_combout\ = (\display1|Equal2~1_combout\ & ((\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[60]~89_combout\))) # 
-- (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[60]~89_combout\,
	datad => \display1|Equal2~1_combout\,
	combout => \display1|Equal2~2_combout\);

-- Location: LCCOMB_X110_Y38_N26
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[59]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[59]~90_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[50]~105_combout\) # 
-- ((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[50]~84_combout\)))) # (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[50]~105_combout\,
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[50]~84_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[59]~90_combout\);

-- Location: LCCOMB_X110_Y38_N30
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[61]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[61]~100_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[52]~98_combout\) # 
-- ((!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[52]~98_combout\,
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[61]~100_combout\);

-- Location: LCCOMB_X111_Y35_N26
\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[63]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[63]~80_combout\ = (\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[45]~71_combout\) # 
-- ((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[45]~93_combout\)))) # (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- (((\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[45]~71_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[45]~93_combout\,
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[63]~80_combout\);

-- Location: LCCOMB_X110_Y38_N4
\display1|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Equal2~0_combout\ = ((!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[53]~96_combout\ & (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[63]~80_combout\ & 
-- !\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[53]~79_combout\))) # (!\bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[53]~96_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[63]~80_combout\,
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[53]~79_combout\,
	combout => \display1|Equal2~0_combout\);

-- Location: LCCOMB_X110_Y42_N20
\display1|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Equal2~3_combout\ = (\display1|Equal2~2_combout\ & (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[59]~90_combout\ & (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[61]~100_combout\ & \display1|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display1|Equal2~2_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[59]~90_combout\,
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[61]~100_combout\,
	datad => \display1|Equal2~0_combout\,
	combout => \display1|Equal2~3_combout\);

-- Location: LCCOMB_X110_Y42_N22
\display1|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|decOut_n~0_combout\ = (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[57]~92_combout\ & (\display1|Equal2~3_combout\ & (\counter|s_count\(0) $ (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[58]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(0),
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[58]~91_combout\,
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[57]~92_combout\,
	datad => \display1|Equal2~3_combout\,
	combout => \display1|decOut_n~0_combout\);

-- Location: LCCOMB_X110_Y42_N8
\display1|decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|decOut_n~1_combout\ = ((\counter|s_count\(0) $ (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[57]~92_combout\)) # (!\display1|Equal2~3_combout\)) # (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[58]~91_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(0),
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[58]~91_combout\,
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[57]~92_combout\,
	datad => \display1|Equal2~3_combout\,
	combout => \display1|decOut_n~1_combout\);

-- Location: LCCOMB_X110_Y42_N30
\display1|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Equal7~0_combout\ = (\counter|s_count\(0) & (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[58]~91_combout\ & (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[57]~92_combout\ & \display1|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(0),
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[58]~91_combout\,
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[57]~92_combout\,
	datad => \display1|Equal2~3_combout\,
	combout => \display1|Equal7~0_combout\);

-- Location: LCCOMB_X110_Y42_N4
\display1|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|decOut_n~2_combout\ = (\display1|Equal2~3_combout\ & ((\counter|s_count\(0) & (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[58]~91_combout\ & !\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[57]~92_combout\)) # 
-- (!\counter|s_count\(0) & (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[58]~91_combout\ $ (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[57]~92_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(0),
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[58]~91_combout\,
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[57]~92_combout\,
	datad => \display1|Equal2~3_combout\,
	combout => \display1|decOut_n~2_combout\);

-- Location: LCCOMB_X110_Y42_N12
\display1|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|decOut_n~3_combout\ = (\display1|Equal2~3_combout\ & ((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[57]~92_combout\ & (!\counter|s_count\(0))) # (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[57]~92_combout\ & 
-- ((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[58]~91_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(0),
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[58]~91_combout\,
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[57]~92_combout\,
	datad => \display1|Equal2~3_combout\,
	combout => \display1|decOut_n~3_combout\);

-- Location: LCCOMB_X110_Y42_N6
\display1|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Equal2~4_combout\ = (\display1|Equal2~2_combout\ & (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[61]~100_combout\ & \display1|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display1|Equal2~2_combout\,
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[61]~100_combout\,
	datad => \display1|Equal2~0_combout\,
	combout => \display1|Equal2~4_combout\);

-- Location: LCCOMB_X110_Y42_N16
\display1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Equal0~0_combout\ = (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[57]~92_combout\ & (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[59]~90_combout\ & (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[58]~91_combout\ 
-- & \display1|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[57]~92_combout\,
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[59]~90_combout\,
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[58]~91_combout\,
	datad => \display1|Equal2~4_combout\,
	combout => \display1|Equal0~0_combout\);

-- Location: LCCOMB_X110_Y42_N28
\display1|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|decOut_n~4_combout\ = (\display1|Equal2~3_combout\ & ((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[58]~91_combout\) # (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[57]~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[58]~91_combout\,
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[57]~92_combout\,
	datad => \display1|Equal2~3_combout\,
	combout => \display1|decOut_n~4_combout\);

-- Location: LCCOMB_X110_Y42_N2
\display1|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|decOut_n~5_combout\ = (\display1|decOut_n~4_combout\) # ((\counter|s_count\(0) & \display1|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(0),
	datab => \display1|Equal0~0_combout\,
	datad => \display1|decOut_n~4_combout\,
	combout => \display1|decOut_n~5_combout\);

-- Location: LCCOMB_X110_Y42_N14
\display1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Equal0~1_combout\ = (!\counter|s_count\(0) & \display1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(0),
	datad => \display1|Equal0~0_combout\,
	combout => \display1|Equal0~1_combout\);

-- Location: LCCOMB_X110_Y42_N10
\display1|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Equal8~0_combout\ = (!\counter|s_count\(0) & (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[58]~91_combout\ & (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[57]~92_combout\ & \display1|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(0),
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[58]~91_combout\,
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[57]~92_combout\,
	datad => \display1|Equal2~3_combout\,
	combout => \display1|Equal8~0_combout\);

-- Location: LCCOMB_X110_Y42_N0
\display1|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|decOut_n~6_combout\ = (\display1|Equal8~0_combout\) # ((\display1|decOut_n~5_combout\ & (\display1|decOut_n~3_combout\)) # (!\display1|decOut_n~5_combout\ & ((\display1|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display1|decOut_n~3_combout\,
	datab => \display1|decOut_n~5_combout\,
	datac => \display1|Equal0~1_combout\,
	datad => \display1|Equal8~0_combout\,
	combout => \display1|decOut_n~6_combout\);

-- Location: LCCOMB_X110_Y42_N26
\display1|decOut_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|decOut_n~7_combout\ = (\display1|Equal2~3_combout\ & ((\counter|s_count\(0) & (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[58]~91_combout\ & \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[57]~92_combout\)) # 
-- (!\counter|s_count\(0) & ((\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[57]~92_combout\) # (!\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[58]~91_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(0),
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[58]~91_combout\,
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[57]~92_combout\,
	datad => \display1|Equal2~3_combout\,
	combout => \display1|decOut_n~7_combout\);

-- Location: LCCOMB_X110_Y42_N24
\display1|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Equal2~5_combout\ = (!\counter|s_count\(0) & (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[58]~91_combout\ & (\bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[57]~92_combout\ & \display1|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(0),
	datab => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[58]~91_combout\,
	datac => \bin_2_bcd|Mod0|auto_generated|divider|divider|StageOut[57]~92_combout\,
	datad => \display1|Equal2~3_combout\,
	combout => \display1|Equal2~5_combout\);

-- Location: LCCOMB_X110_Y42_N18
\display1|decOut_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|decOut_n~8_combout\ = (\display1|Equal8~0_combout\) # ((\display1|decOut_n~5_combout\ & ((\display1|Equal2~5_combout\))) # (!\display1|decOut_n~5_combout\ & (!\display1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display1|Equal8~0_combout\,
	datab => \display1|decOut_n~5_combout\,
	datac => \display1|Equal0~1_combout\,
	datad => \display1|Equal2~5_combout\,
	combout => \display1|decOut_n~8_combout\);

-- Location: LCCOMB_X112_Y32_N24
\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \counter|s_count\(5) $ (GND)
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(!\counter|s_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|s_count\(5),
	datad => VCC,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X112_Y32_N26
\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\counter|s_count\(6) & (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\counter|s_count\(6) & 
-- (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\counter|s_count\(6) & !\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(6),
	datad => VCC,
	cin => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X112_Y32_N28
\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\counter|s_count\(7) & (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\counter|s_count\(7) & 
-- (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\counter|s_count\(7) & !\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(7),
	datad => VCC,
	cin => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X112_Y32_N30
\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X112_Y32_N12
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[27]~54_combout\ = (\counter|s_count\(7) & \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(7),
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[27]~54_combout\);

-- Location: LCCOMB_X111_Y32_N28
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[27]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[27]~55_combout\ = (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[27]~55_combout\);

-- Location: LCCOMB_X111_Y32_N26
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[26]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[26]~57_combout\ = (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[26]~57_combout\);

-- Location: LCCOMB_X112_Y32_N2
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[26]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[26]~56_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \counter|s_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \counter|s_count\(6),
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[26]~56_combout\);

-- Location: LCCOMB_X112_Y32_N10
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[25]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[25]~59_combout\ = (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[25]~59_combout\);

-- Location: LCCOMB_X112_Y32_N4
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[25]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[25]~58_combout\ = (!\counter|s_count\(5) & \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|s_count\(5),
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[25]~58_combout\);

-- Location: LCCOMB_X111_Y32_N16
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[24]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[24]~60_combout\ = (!\counter|s_count\(4) & \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|s_count\(4),
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[24]~60_combout\);

-- Location: LCCOMB_X111_Y32_N6
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[24]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[24]~61_combout\ = (!\counter|s_count\(4) & !\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|s_count\(4),
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[24]~61_combout\);

-- Location: LCCOMB_X112_Y32_N14
\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[24]~60_combout\) # (\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[24]~61_combout\)))
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[24]~60_combout\) # (\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[24]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[24]~60_combout\,
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[24]~61_combout\,
	datad => VCC,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X112_Y32_N16
\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[25]~59_combout\) # 
-- (\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[25]~58_combout\)))) # (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[25]~59_combout\ & 
-- (!\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[25]~58_combout\)))
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[25]~59_combout\ & (!\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[25]~58_combout\ & 
-- !\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[25]~59_combout\,
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[25]~58_combout\,
	datad => VCC,
	cin => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X112_Y32_N18
\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[26]~56_combout\)))) # (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[26]~56_combout\)))))
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[26]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[26]~57_combout\,
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[26]~56_combout\,
	datad => VCC,
	cin => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X112_Y32_N20
\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[27]~54_combout\) # 
-- (\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[27]~55_combout\)))) # (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[27]~54_combout\ & 
-- (!\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[27]~55_combout\)))
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[27]~54_combout\ & (!\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[27]~55_combout\ & 
-- !\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[27]~54_combout\,
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[27]~55_combout\,
	datad => VCC,
	cin => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X112_Y32_N22
\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X112_Y33_N20
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[36]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[36]~62_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[36]~62_combout\);

-- Location: LCCOMB_X112_Y32_N0
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[36]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[36]~93_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\counter|s_count\(7))) # (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \counter|s_count\(7),
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[36]~93_combout\);

-- Location: LCCOMB_X112_Y33_N26
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[35]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[35]~63_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[35]~63_combout\);

-- Location: LCCOMB_X112_Y32_N6
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[35]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[35]~94_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\counter|s_count\(6)))) # (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \counter|s_count\(6),
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[35]~94_combout\);

-- Location: LCCOMB_X112_Y32_N8
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[34]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[34]~95_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (!\counter|s_count\(5))) # (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \counter|s_count\(5),
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[34]~95_combout\);

-- Location: LCCOMB_X112_Y33_N16
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[34]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[34]~64_combout\ = (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[34]~64_combout\);

-- Location: LCCOMB_X112_Y33_N22
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[33]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[33]~65_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\counter|s_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \counter|s_count\(4),
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[33]~65_combout\);

-- Location: LCCOMB_X112_Y33_N0
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[33]~66_combout\ = (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X111_Y33_N0
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\counter|s_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \counter|s_count\(3),
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X111_Y33_N6
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[32]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[32]~68_combout\ = (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\counter|s_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \counter|s_count\(3),
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[32]~68_combout\);

-- Location: LCCOMB_X112_Y33_N4
\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\) # (\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[32]~68_combout\)))
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\) # (\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[32]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[32]~68_combout\,
	datad => VCC,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X112_Y33_N6
\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[33]~65_combout\) # 
-- (\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[33]~66_combout\)))) # (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[33]~65_combout\ & 
-- (!\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[33]~66_combout\)))
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[33]~65_combout\ & (!\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[33]~66_combout\ & 
-- !\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[33]~65_combout\,
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datad => VCC,
	cin => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X112_Y33_N8
\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[34]~95_combout\) # 
-- (\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[34]~64_combout\)))) # (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[34]~95_combout\) # 
-- (\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[34]~64_combout\)))))
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[34]~95_combout\) # 
-- (\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[34]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[34]~95_combout\,
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[34]~64_combout\,
	datad => VCC,
	cin => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X112_Y33_N10
\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[35]~63_combout\) # 
-- (\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[35]~94_combout\)))) # (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[35]~63_combout\ & 
-- (!\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[35]~94_combout\)))
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[35]~63_combout\ & (!\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[35]~94_combout\ & 
-- !\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[35]~63_combout\,
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[35]~94_combout\,
	datad => VCC,
	cin => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X112_Y33_N12
\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[36]~62_combout\) # 
-- (\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[36]~93_combout\))))) # (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[36]~62_combout\) # 
-- ((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[36]~93_combout\) # (GND))))
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[36]~62_combout\) # ((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[36]~93_combout\) # 
-- (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[36]~62_combout\,
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[36]~93_combout\,
	datad => VCC,
	cin => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X112_Y33_N14
\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X111_Y33_N28
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[45]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[45]~69_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[45]~69_combout\);

-- Location: LCCOMB_X112_Y33_N28
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[45]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[45]~86_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[36]~93_combout\) # 
-- ((\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[36]~93_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[45]~86_combout\);

-- Location: LCCOMB_X112_Y33_N2
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[44]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[44]~70_combout\ = (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[44]~70_combout\);

-- Location: LCCOMB_X112_Y33_N18
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[44]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[44]~87_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[35]~94_combout\) # 
-- ((\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[35]~94_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[44]~87_combout\);

-- Location: LCCOMB_X111_Y33_N10
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[43]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[43]~71_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[43]~71_combout\);

-- Location: LCCOMB_X112_Y33_N24
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[43]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[43]~88_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[34]~95_combout\) # 
-- ((\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[34]~95_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[43]~88_combout\);

-- Location: LCCOMB_X112_Y33_N30
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[42]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[42]~96_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\counter|s_count\(4))) # (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(4),
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[42]~96_combout\);

-- Location: LCCOMB_X111_Y33_N8
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[42]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[42]~72_combout\ = (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[42]~72_combout\);

-- Location: LCCOMB_X109_Y33_N24
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[41]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[41]~73_combout\ = (!\counter|s_count\(3) & \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|s_count\(3),
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[41]~73_combout\);

-- Location: LCCOMB_X110_Y33_N28
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[41]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[41]~74_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[41]~74_combout\);

-- Location: LCCOMB_X109_Y33_N30
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[40]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[40]~76_combout\ = (\counter|s_count\(2) & !\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|s_count\(2),
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[40]~76_combout\);

-- Location: LCCOMB_X110_Y33_N6
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[40]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[40]~75_combout\ = (\counter|s_count\(2) & \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|s_count\(2),
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[40]~75_combout\);

-- Location: LCCOMB_X111_Y33_N12
\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[40]~76_combout\) # (\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[40]~75_combout\)))
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[40]~76_combout\) # (\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[40]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[40]~76_combout\,
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[40]~75_combout\,
	datad => VCC,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X111_Y33_N14
\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[41]~73_combout\) # 
-- (\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[41]~74_combout\)))) # (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[41]~73_combout\ & 
-- (!\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[41]~74_combout\)))
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[41]~73_combout\ & (!\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[41]~74_combout\ & 
-- !\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[41]~73_combout\,
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[41]~74_combout\,
	datad => VCC,
	cin => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X111_Y33_N16
\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[42]~96_combout\) # 
-- (\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[42]~72_combout\)))) # (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[42]~96_combout\) # 
-- (\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[42]~72_combout\)))))
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[42]~96_combout\) # 
-- (\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[42]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[42]~96_combout\,
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[42]~72_combout\,
	datad => VCC,
	cin => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X111_Y33_N18
\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[43]~71_combout\) # 
-- (\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[43]~88_combout\)))) # (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[43]~71_combout\ & 
-- (!\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[43]~88_combout\)))
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[43]~71_combout\ & (!\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[43]~88_combout\ & 
-- !\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[43]~71_combout\,
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[43]~88_combout\,
	datad => VCC,
	cin => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X111_Y33_N20
\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[44]~70_combout\) # 
-- (\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[44]~87_combout\))))) # (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[44]~70_combout\) # 
-- ((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[44]~87_combout\) # (GND))))
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[44]~70_combout\) # ((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[44]~87_combout\) # 
-- (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[44]~70_combout\,
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[44]~87_combout\,
	datad => VCC,
	cin => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X111_Y33_N22
\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[45]~69_combout\) # 
-- (\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[45]~86_combout\)))) # (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[45]~69_combout\ & 
-- (!\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[45]~86_combout\)))
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[45]~69_combout\ & (!\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[45]~86_combout\ & 
-- !\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[45]~69_combout\,
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[45]~86_combout\,
	datad => VCC,
	cin => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X111_Y33_N24
\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X111_Y33_N2
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[54]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[54]~89_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[45]~86_combout\) # 
-- ((!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[45]~86_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[54]~89_combout\);

-- Location: LCCOMB_X110_Y33_N24
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[54]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[54]~77_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[54]~77_combout\);

-- Location: LCCOMB_X110_Y33_N26
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[53]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[53]~78_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[53]~78_combout\);

-- Location: LCCOMB_X111_Y33_N26
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[53]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[53]~90_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[44]~87_combout\) # 
-- ((!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[44]~87_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[53]~90_combout\);

-- Location: LCCOMB_X111_Y33_N4
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[52]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[52]~91_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[43]~88_combout\) # 
-- ((!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[43]~88_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[52]~91_combout\);

-- Location: LCCOMB_X110_Y33_N0
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[52]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[52]~79_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[52]~79_combout\);

-- Location: LCCOMB_X111_Y33_N30
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[51]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[51]~92_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[42]~96_combout\) # 
-- ((\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[42]~96_combout\,
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[51]~92_combout\);

-- Location: LCCOMB_X110_Y33_N2
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[51]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[51]~80_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[51]~80_combout\);

-- Location: LCCOMB_X109_Y33_N26
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[50]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[50]~97_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((!\counter|s_count\(3)))) # (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \counter|s_count\(3),
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[50]~97_combout\);

-- Location: LCCOMB_X110_Y33_N4
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[50]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[50]~81_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[50]~81_combout\);

-- Location: LCCOMB_X110_Y33_N30
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[49]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[49]~83_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[49]~83_combout\);

-- Location: LCCOMB_X109_Y33_N4
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[49]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[49]~82_combout\ = (\counter|s_count\(2) & \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|s_count\(2),
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[49]~82_combout\);

-- Location: LCCOMB_X109_Y33_N16
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[48]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[48]~85_combout\ = (!\counter|s_count\(1) & !\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|s_count\(1),
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[48]~85_combout\);

-- Location: LCCOMB_X109_Y33_N6
\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[48]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[48]~84_combout\ = (!\counter|s_count\(1) & \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|s_count\(1),
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[48]~84_combout\);

-- Location: LCCOMB_X110_Y33_N8
\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[48]~85_combout\) # (\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[48]~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[48]~85_combout\,
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[48]~84_combout\,
	datad => VCC,
	cout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X110_Y33_N10
\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[49]~83_combout\ & (!\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[49]~82_combout\ & 
-- !\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[49]~83_combout\,
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[49]~82_combout\,
	datad => VCC,
	cin => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X110_Y33_N12
\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[50]~97_combout\) # 
-- (\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[50]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[50]~97_combout\,
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[50]~81_combout\,
	datad => VCC,
	cin => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X110_Y33_N14
\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[51]~92_combout\ & (!\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[51]~80_combout\ & 
-- !\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[51]~92_combout\,
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[51]~80_combout\,
	datad => VCC,
	cin => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X110_Y33_N16
\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[52]~91_combout\) # ((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[52]~79_combout\) # 
-- (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[52]~91_combout\,
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[52]~79_combout\,
	datad => VCC,
	cin => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X110_Y33_N18
\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[53]~78_combout\ & (!\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[53]~90_combout\ & 
-- !\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[53]~78_combout\,
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[53]~90_combout\,
	datad => VCC,
	cin => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X110_Y33_N20
\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[54]~89_combout\) # ((\bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[54]~77_combout\) # 
-- (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[54]~89_combout\,
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|StageOut[54]~77_combout\,
	datad => VCC,
	cin => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X110_Y33_N22
\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X111_Y32_N20
\display0|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|Equal2~0_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \display0|Equal2~0_combout\);

-- Location: LCCOMB_X111_Y32_N22
\display0|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|decOut_n~6_combout\ = (\display0|Equal2~0_combout\ & (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ $ 
-- (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \display0|Equal2~0_combout\,
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \display0|decOut_n~6_combout\);

-- Location: LCCOMB_X111_Y32_N4
\display0|decOut_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|decOut_n~7_combout\ = (\display0|Equal2~0_combout\ & (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ $ 
-- (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \display0|Equal2~0_combout\,
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \display0|decOut_n~7_combout\);

-- Location: LCCOMB_X111_Y32_N30
\display0|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|Equal7~0_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\display0|Equal2~0_combout\ & (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \display0|Equal2~0_combout\,
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \display0|Equal7~0_combout\);

-- Location: LCCOMB_X111_Y32_N8
\display0|decOut_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|decOut_n~8_combout\ = (\display0|Equal2~0_combout\ & ((\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- !\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)) # (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ $ (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \display0|Equal2~0_combout\,
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \display0|decOut_n~8_combout\);

-- Location: LCCOMB_X111_Y32_N12
\display0|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|decOut_n~2_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)) # (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))) # (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \display0|decOut_n~2_combout\);

-- Location: LCCOMB_X111_Y32_N18
\display0|decOut_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|decOut_n~10_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \display0|decOut_n~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \display0|decOut_n~2_combout\,
	combout => \display0|decOut_n~10_combout\);

-- Location: LCCOMB_X111_Y32_N10
\display0|decOut_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|decOut_n~9_combout\ = (\display0|Equal2~0_combout\ & ((\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)) # (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\) # (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \display0|Equal2~0_combout\,
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \display0|decOut_n~9_combout\);

-- Location: LCCOMB_X111_Y32_N24
\display0|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|decOut_n~5_combout\ = (\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ 
-- (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)))) # (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- (((!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & !\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)) # 
-- (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \display0|decOut_n~5_combout\);

-- Location: LCCOMB_X111_Y32_N14
\display0|decOut_n~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|decOut_n~11_combout\ = (\display0|decOut_n~5_combout\) # (!\bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin_2_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \display0|decOut_n~5_combout\,
	combout => \display0|decOut_n~11_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;
END structure;


