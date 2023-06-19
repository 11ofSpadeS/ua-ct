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

-- DATE "06/06/2023 13:02:39"

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

ENTITY 	PaoTop IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(0 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(1 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(2 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END PaoTop;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PaoTop IS
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
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \maquina_pao_fsm|WideOr0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \maquina_pao_fsm|s_currentState.Amassar_Init~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
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
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \reg|time_total[3]~0_combout\ : std_logic;
SIGNAL \maquina_pao_fsm|Selector9~0_combout\ : std_logic;
SIGNAL \maquina_pao_fsm|Selector3~0_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[0]~26_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[3]~33\ : std_logic;
SIGNAL \clkDivider|s_divCounter[4]~34_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[4]~35\ : std_logic;
SIGNAL \clkDivider|s_divCounter[5]~36_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[5]~37\ : std_logic;
SIGNAL \clkDivider|s_divCounter[6]~38_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[6]~39\ : std_logic;
SIGNAL \clkDivider|s_divCounter[7]~40_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[7]~41\ : std_logic;
SIGNAL \clkDivider|s_divCounter[8]~42_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[8]~43\ : std_logic;
SIGNAL \clkDivider|s_divCounter[9]~44_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[9]~45\ : std_logic;
SIGNAL \clkDivider|s_divCounter[10]~46_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[10]~47\ : std_logic;
SIGNAL \clkDivider|s_divCounter[11]~48_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[11]~49\ : std_logic;
SIGNAL \clkDivider|s_divCounter[12]~50_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[12]~51\ : std_logic;
SIGNAL \clkDivider|s_divCounter[13]~52_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[13]~53\ : std_logic;
SIGNAL \clkDivider|s_divCounter[14]~54_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[14]~55\ : std_logic;
SIGNAL \clkDivider|s_divCounter[15]~56_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[15]~57\ : std_logic;
SIGNAL \clkDivider|s_divCounter[16]~58_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[16]~59\ : std_logic;
SIGNAL \clkDivider|s_divCounter[17]~60_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[17]~61\ : std_logic;
SIGNAL \clkDivider|s_divCounter[18]~62_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[18]~63\ : std_logic;
SIGNAL \clkDivider|s_divCounter[19]~64_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[19]~65\ : std_logic;
SIGNAL \clkDivider|s_divCounter[20]~66_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[20]~67\ : std_logic;
SIGNAL \clkDivider|s_divCounter[21]~68_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[21]~69\ : std_logic;
SIGNAL \clkDivider|s_divCounter[22]~70_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[22]~71\ : std_logic;
SIGNAL \clkDivider|s_divCounter[23]~72_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[23]~73\ : std_logic;
SIGNAL \clkDivider|s_divCounter[24]~74_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[24]~75\ : std_logic;
SIGNAL \clkDivider|s_divCounter[25]~76_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~0_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~2_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~3_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~1_combout\ : std_logic;
SIGNAL \clkDivider|Equal0~0_combout\ : std_logic;
SIGNAL \clkDivider|Equal0~1_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~4_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~5_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~6_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[0]~27\ : std_logic;
SIGNAL \clkDivider|s_divCounter[1]~28_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[1]~29\ : std_logic;
SIGNAL \clkDivider|s_divCounter[2]~30_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[2]~31\ : std_logic;
SIGNAL \clkDivider|s_divCounter[3]~32_combout\ : std_logic;
SIGNAL \clkDivider|Equal0~2_combout\ : std_logic;
SIGNAL \clkDivider|Equal0~3_combout\ : std_logic;
SIGNAL \clkDivider|Equal0~6_combout\ : std_logic;
SIGNAL \clkDivider|Equal0~4_combout\ : std_logic;
SIGNAL \clkDivider|Equal0~5_combout\ : std_logic;
SIGNAL \clkDivider|Equal0~7_combout\ : std_logic;
SIGNAL \clkDivider|Equal0~8_combout\ : std_logic;
SIGNAL \clkDivider|pulseOut~q\ : std_logic;
SIGNAL \maquina_pao_fsm|s_currentState.Amassar~q\ : std_logic;
SIGNAL \maquina_pao_fsm|s_currentState~12_combout\ : std_logic;
SIGNAL \maquina_pao_fsm|s_currentState.Levedura_Init~feeder_combout\ : std_logic;
SIGNAL \maquina_pao_fsm|s_currentState.Levedura_Init~q\ : std_logic;
SIGNAL \maquina_pao_fsm|Selector4~0_combout\ : std_logic;
SIGNAL \maquina_pao_fsm|s_currentState.Levedura~q\ : std_logic;
SIGNAL \maquina_pao_fsm|s_currentState~13_combout\ : std_logic;
SIGNAL \maquina_pao_fsm|s_currentState.Cozedura_Init~feeder_combout\ : std_logic;
SIGNAL \maquina_pao_fsm|s_currentState.Cozedura_Init~q\ : std_logic;
SIGNAL \maquina_pao_fsm|Selector5~0_combout\ : std_logic;
SIGNAL \maquina_pao_fsm|s_currentState.Cozedura~q\ : std_logic;
SIGNAL \maquina_pao_fsm|WideOr0~0_combout\ : std_logic;
SIGNAL \maquina_pao_fsm|WideOr0~0clkctrl_outclk\ : std_logic;
SIGNAL \maquina_pao_fsm|Selector7~0_combout\ : std_logic;
SIGNAL \timeraux_fsm|Add0~0_combout\ : std_logic;
SIGNAL \maquina_pao_fsm|Selector1~0_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter~0_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter[6]~2_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter[7]~3_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter[7]~4_combout\ : std_logic;
SIGNAL \timeraux_fsm|Add0~1\ : std_logic;
SIGNAL \timeraux_fsm|Add0~2_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter~11_combout\ : std_logic;
SIGNAL \timeraux_fsm|Add0~3\ : std_logic;
SIGNAL \timeraux_fsm|Add0~4_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter~10_combout\ : std_logic;
SIGNAL \timeraux_fsm|Add0~5\ : std_logic;
SIGNAL \timeraux_fsm|Add0~6_combout\ : std_logic;
SIGNAL \maquina_pao_fsm|Selector8~0_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter~9_combout\ : std_logic;
SIGNAL \timeraux_fsm|Add0~7\ : std_logic;
SIGNAL \timeraux_fsm|Add0~8_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter~8_combout\ : std_logic;
SIGNAL \timeraux_fsm|Add0~9\ : std_logic;
SIGNAL \timeraux_fsm|Add0~10_combout\ : std_logic;
SIGNAL \maquina_pao_fsm|Selector10~0_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter~7_combout\ : std_logic;
SIGNAL \timeraux_fsm|Add0~11\ : std_logic;
SIGNAL \timeraux_fsm|Add0~12_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter~6_combout\ : std_logic;
SIGNAL \timeraux_fsm|Add0~13\ : std_logic;
SIGNAL \timeraux_fsm|Add0~14_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter~5_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter[6]~1_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter[6]~12_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_cntZero~q\ : std_logic;
SIGNAL \maquina_pao_fsm|s_currentState~14_combout\ : std_logic;
SIGNAL \maquina_pao_fsm|s_currentState.Extra_Init~feeder_combout\ : std_logic;
SIGNAL \maquina_pao_fsm|s_currentState.Extra_Init~q\ : std_logic;
SIGNAL \maquina_pao_fsm|Selector6~0_combout\ : std_logic;
SIGNAL \maquina_pao_fsm|s_currentState.Extra~q\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \maquina_pao_fsm|s_currentState.TInit~0_combout\ : std_logic;
SIGNAL \maquina_pao_fsm|s_currentState.TInit~1_combout\ : std_logic;
SIGNAL \maquina_pao_fsm|s_currentState.TInit~q\ : std_logic;
SIGNAL \maquina_pao_fsm|s_currentState~11_combout\ : std_logic;
SIGNAL \maquina_pao_fsm|s_currentState.Amassar_Init~feeder_combout\ : std_logic;
SIGNAL \maquina_pao_fsm|s_currentState.Amassar_Init~q\ : std_logic;
SIGNAL \maquina_pao_fsm|s_currentState.Amassar_Init~clkctrl_outclk\ : std_logic;
SIGNAL \maquina_pao_fsm|ledr0~combout\ : std_logic;
SIGNAL \maquina_pao_fsm|ledg0~combout\ : std_logic;
SIGNAL \maquina_pao_fsm|ledg1~0_combout\ : std_logic;
SIGNAL \maquina_pao_fsm|ledg1~combout\ : std_logic;
SIGNAL \maquina_pao_fsm|ledg2~0_combout\ : std_logic;
SIGNAL \maquina_pao_fsm|ledg2~combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[36]~99_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[35]~100_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[34]~101_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[45]~92_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[44]~93_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[43]~94_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[42]~102_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[51]~98_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[50]~103_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[54]~95_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[53]~96_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[52]~97_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \displayR|Mux1~1_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[61]~91_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[60]~90_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[63]~89_combout\ : std_logic;
SIGNAL \displayR|Mux1~0_combout\ : std_logic;
SIGNAL \displayR|Mux1~2_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ : std_logic;
SIGNAL \displayR|Mux6~0_combout\ : std_logic;
SIGNAL \displayR|Mux6~1_combout\ : std_logic;
SIGNAL \displayR|Mux5~0_combout\ : std_logic;
SIGNAL \displayR|Mux5~1_combout\ : std_logic;
SIGNAL \displayR|Mux4~0_combout\ : std_logic;
SIGNAL \displayR|Mux4~1_combout\ : std_logic;
SIGNAL \displayR|Mux3~0_combout\ : std_logic;
SIGNAL \displayR|Mux3~1_combout\ : std_logic;
SIGNAL \displayR|Mux2~0_combout\ : std_logic;
SIGNAL \displayR|Mux2~1_combout\ : std_logic;
SIGNAL \displayR|Mux1~3_combout\ : std_logic;
SIGNAL \displayR|Mux1~4_combout\ : std_logic;
SIGNAL \displayR|Mux0~0_combout\ : std_logic;
SIGNAL \displayR|Mux0~1_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[27]~54_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[27]~55_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[26]~56_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[26]~57_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[25]~58_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[25]~59_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[24]~60_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[24]~61_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[36]~62_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[36]~93_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[35]~63_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[35]~94_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[34]~95_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[34]~64_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[33]~65_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[32]~68_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[45]~69_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[45]~86_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[44]~70_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[44]~87_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[43]~71_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[43]~88_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[42]~72_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[42]~96_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[41]~74_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[41]~73_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[40]~76_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[40]~75_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[54]~89_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[54]~77_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[53]~78_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[53]~90_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[52]~79_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[52]~91_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[51]~92_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[51]~80_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[50]~97_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[50]~81_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[49]~83_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[49]~82_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[48]~85_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|StageOut[48]~84_combout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \displayL|Mux6~0_combout\ : std_logic;
SIGNAL \displayL|Mux6~1_combout\ : std_logic;
SIGNAL \displayL|Mux5~0_combout\ : std_logic;
SIGNAL \displayL|Mux5~1_combout\ : std_logic;
SIGNAL \displayL|Mux4~0_combout\ : std_logic;
SIGNAL \displayL|Mux4~1_combout\ : std_logic;
SIGNAL \displayL|Mux3~0_combout\ : std_logic;
SIGNAL \displayL|Mux3~1_combout\ : std_logic;
SIGNAL \displayL|Mux2~0_combout\ : std_logic;
SIGNAL \displayL|Mux2~1_combout\ : std_logic;
SIGNAL \displayL|Mux1~0_combout\ : std_logic;
SIGNAL \displayL|Mux1~1_combout\ : std_logic;
SIGNAL \displayL|Mux0~0_combout\ : std_logic;
SIGNAL \displayL|Mux0~1_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \timeraux_fsm|s_counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg|time_amassar\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg|time_total\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \maquina_pao_fsm|timeVal\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\maquina_pao_fsm|WideOr0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \maquina_pao_fsm|WideOr0~0_combout\);

\maquina_pao_fsm|s_currentState.Amassar_Init~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \maquina_pao_fsm|s_currentState.Amassar_Init~q\);
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
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
	i => \maquina_pao_fsm|ledr0~combout\,
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

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \maquina_pao_fsm|ledg0~combout\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \maquina_pao_fsm|ledg1~combout\,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \maquina_pao_fsm|ledg2~combout\,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayR|Mux6~1_combout\,
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
	i => \displayR|Mux5~1_combout\,
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
	i => \displayR|Mux4~1_combout\,
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
	i => \displayR|Mux3~1_combout\,
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
	i => \displayR|Mux2~1_combout\,
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
	i => \displayR|Mux1~4_combout\,
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
	i => \displayR|Mux0~1_combout\,
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
	i => \displayL|Mux6~1_combout\,
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
	i => \displayL|Mux5~1_combout\,
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
	i => \displayL|Mux4~1_combout\,
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
	i => \displayL|Mux3~1_combout\,
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
	i => \displayL|Mux2~1_combout\,
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
	i => \displayL|Mux1~1_combout\,
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
	i => \displayL|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

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

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

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

-- Location: LCCOMB_X113_Y37_N14
\reg|time_total[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|time_total[3]~0_combout\ = !\SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	combout => \reg|time_total[3]~0_combout\);

-- Location: FF_X113_Y37_N15
\reg|time_total[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reg|time_total[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|time_total\(3));

-- Location: LCCOMB_X113_Y37_N4
\maquina_pao_fsm|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina_pao_fsm|Selector9~0_combout\ = (\maquina_pao_fsm|s_currentState.TInit~q\) # (!\reg|time_total\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg|time_total\(3),
	datad => \maquina_pao_fsm|s_currentState.TInit~q\,
	combout => \maquina_pao_fsm|Selector9~0_combout\);

-- Location: LCCOMB_X111_Y37_N16
\maquina_pao_fsm|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina_pao_fsm|Selector3~0_combout\ = (\maquina_pao_fsm|s_currentState.Amassar_Init~q\) # ((!\timeraux_fsm|s_cntZero~q\ & \maquina_pao_fsm|s_currentState.Amassar~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|s_cntZero~q\,
	datac => \maquina_pao_fsm|s_currentState.Amassar_Init~q\,
	datad => \maquina_pao_fsm|s_currentState.Amassar~q\,
	combout => \maquina_pao_fsm|Selector3~0_combout\);

-- Location: LCCOMB_X109_Y45_N6
\clkDivider|s_divCounter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[0]~26_combout\ = \clkDivider|s_divCounter\(0) $ (VCC)
-- \clkDivider|s_divCounter[0]~27\ = CARRY(\clkDivider|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(0),
	datad => VCC,
	combout => \clkDivider|s_divCounter[0]~26_combout\,
	cout => \clkDivider|s_divCounter[0]~27\);

-- Location: LCCOMB_X109_Y45_N12
\clkDivider|s_divCounter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[3]~32_combout\ = (\clkDivider|s_divCounter\(3) & (!\clkDivider|s_divCounter[2]~31\)) # (!\clkDivider|s_divCounter\(3) & ((\clkDivider|s_divCounter[2]~31\) # (GND)))
-- \clkDivider|s_divCounter[3]~33\ = CARRY((!\clkDivider|s_divCounter[2]~31\) # (!\clkDivider|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(3),
	datad => VCC,
	cin => \clkDivider|s_divCounter[2]~31\,
	combout => \clkDivider|s_divCounter[3]~32_combout\,
	cout => \clkDivider|s_divCounter[3]~33\);

-- Location: LCCOMB_X109_Y45_N14
\clkDivider|s_divCounter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[4]~34_combout\ = (\clkDivider|s_divCounter\(4) & (\clkDivider|s_divCounter[3]~33\ $ (GND))) # (!\clkDivider|s_divCounter\(4) & (!\clkDivider|s_divCounter[3]~33\ & VCC))
-- \clkDivider|s_divCounter[4]~35\ = CARRY((\clkDivider|s_divCounter\(4) & !\clkDivider|s_divCounter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(4),
	datad => VCC,
	cin => \clkDivider|s_divCounter[3]~33\,
	combout => \clkDivider|s_divCounter[4]~34_combout\,
	cout => \clkDivider|s_divCounter[4]~35\);

-- Location: FF_X109_Y45_N15
\clkDivider|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[4]~34_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(4));

-- Location: LCCOMB_X109_Y45_N16
\clkDivider|s_divCounter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[5]~36_combout\ = (\clkDivider|s_divCounter\(5) & (!\clkDivider|s_divCounter[4]~35\)) # (!\clkDivider|s_divCounter\(5) & ((\clkDivider|s_divCounter[4]~35\) # (GND)))
-- \clkDivider|s_divCounter[5]~37\ = CARRY((!\clkDivider|s_divCounter[4]~35\) # (!\clkDivider|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(5),
	datad => VCC,
	cin => \clkDivider|s_divCounter[4]~35\,
	combout => \clkDivider|s_divCounter[5]~36_combout\,
	cout => \clkDivider|s_divCounter[5]~37\);

-- Location: FF_X109_Y45_N17
\clkDivider|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[5]~36_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(5));

-- Location: LCCOMB_X109_Y45_N18
\clkDivider|s_divCounter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[6]~38_combout\ = (\clkDivider|s_divCounter\(6) & (\clkDivider|s_divCounter[5]~37\ $ (GND))) # (!\clkDivider|s_divCounter\(6) & (!\clkDivider|s_divCounter[5]~37\ & VCC))
-- \clkDivider|s_divCounter[6]~39\ = CARRY((\clkDivider|s_divCounter\(6) & !\clkDivider|s_divCounter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(6),
	datad => VCC,
	cin => \clkDivider|s_divCounter[5]~37\,
	combout => \clkDivider|s_divCounter[6]~38_combout\,
	cout => \clkDivider|s_divCounter[6]~39\);

-- Location: FF_X109_Y45_N19
\clkDivider|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[6]~38_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(6));

-- Location: LCCOMB_X109_Y45_N20
\clkDivider|s_divCounter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[7]~40_combout\ = (\clkDivider|s_divCounter\(7) & (!\clkDivider|s_divCounter[6]~39\)) # (!\clkDivider|s_divCounter\(7) & ((\clkDivider|s_divCounter[6]~39\) # (GND)))
-- \clkDivider|s_divCounter[7]~41\ = CARRY((!\clkDivider|s_divCounter[6]~39\) # (!\clkDivider|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(7),
	datad => VCC,
	cin => \clkDivider|s_divCounter[6]~39\,
	combout => \clkDivider|s_divCounter[7]~40_combout\,
	cout => \clkDivider|s_divCounter[7]~41\);

-- Location: FF_X109_Y45_N21
\clkDivider|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[7]~40_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(7));

-- Location: LCCOMB_X109_Y45_N22
\clkDivider|s_divCounter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[8]~42_combout\ = (\clkDivider|s_divCounter\(8) & (\clkDivider|s_divCounter[7]~41\ $ (GND))) # (!\clkDivider|s_divCounter\(8) & (!\clkDivider|s_divCounter[7]~41\ & VCC))
-- \clkDivider|s_divCounter[8]~43\ = CARRY((\clkDivider|s_divCounter\(8) & !\clkDivider|s_divCounter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(8),
	datad => VCC,
	cin => \clkDivider|s_divCounter[7]~41\,
	combout => \clkDivider|s_divCounter[8]~42_combout\,
	cout => \clkDivider|s_divCounter[8]~43\);

-- Location: FF_X109_Y45_N23
\clkDivider|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[8]~42_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(8));

-- Location: LCCOMB_X109_Y45_N24
\clkDivider|s_divCounter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[9]~44_combout\ = (\clkDivider|s_divCounter\(9) & (!\clkDivider|s_divCounter[8]~43\)) # (!\clkDivider|s_divCounter\(9) & ((\clkDivider|s_divCounter[8]~43\) # (GND)))
-- \clkDivider|s_divCounter[9]~45\ = CARRY((!\clkDivider|s_divCounter[8]~43\) # (!\clkDivider|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(9),
	datad => VCC,
	cin => \clkDivider|s_divCounter[8]~43\,
	combout => \clkDivider|s_divCounter[9]~44_combout\,
	cout => \clkDivider|s_divCounter[9]~45\);

-- Location: FF_X109_Y45_N25
\clkDivider|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[9]~44_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(9));

-- Location: LCCOMB_X109_Y45_N26
\clkDivider|s_divCounter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[10]~46_combout\ = (\clkDivider|s_divCounter\(10) & (\clkDivider|s_divCounter[9]~45\ $ (GND))) # (!\clkDivider|s_divCounter\(10) & (!\clkDivider|s_divCounter[9]~45\ & VCC))
-- \clkDivider|s_divCounter[10]~47\ = CARRY((\clkDivider|s_divCounter\(10) & !\clkDivider|s_divCounter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(10),
	datad => VCC,
	cin => \clkDivider|s_divCounter[9]~45\,
	combout => \clkDivider|s_divCounter[10]~46_combout\,
	cout => \clkDivider|s_divCounter[10]~47\);

-- Location: FF_X109_Y45_N27
\clkDivider|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[10]~46_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(10));

-- Location: LCCOMB_X109_Y45_N28
\clkDivider|s_divCounter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[11]~48_combout\ = (\clkDivider|s_divCounter\(11) & (!\clkDivider|s_divCounter[10]~47\)) # (!\clkDivider|s_divCounter\(11) & ((\clkDivider|s_divCounter[10]~47\) # (GND)))
-- \clkDivider|s_divCounter[11]~49\ = CARRY((!\clkDivider|s_divCounter[10]~47\) # (!\clkDivider|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(11),
	datad => VCC,
	cin => \clkDivider|s_divCounter[10]~47\,
	combout => \clkDivider|s_divCounter[11]~48_combout\,
	cout => \clkDivider|s_divCounter[11]~49\);

-- Location: FF_X109_Y45_N29
\clkDivider|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[11]~48_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(11));

-- Location: LCCOMB_X109_Y45_N30
\clkDivider|s_divCounter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[12]~50_combout\ = (\clkDivider|s_divCounter\(12) & (\clkDivider|s_divCounter[11]~49\ $ (GND))) # (!\clkDivider|s_divCounter\(12) & (!\clkDivider|s_divCounter[11]~49\ & VCC))
-- \clkDivider|s_divCounter[12]~51\ = CARRY((\clkDivider|s_divCounter\(12) & !\clkDivider|s_divCounter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(12),
	datad => VCC,
	cin => \clkDivider|s_divCounter[11]~49\,
	combout => \clkDivider|s_divCounter[12]~50_combout\,
	cout => \clkDivider|s_divCounter[12]~51\);

-- Location: FF_X109_Y45_N31
\clkDivider|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[12]~50_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(12));

-- Location: LCCOMB_X109_Y44_N0
\clkDivider|s_divCounter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[13]~52_combout\ = (\clkDivider|s_divCounter\(13) & (!\clkDivider|s_divCounter[12]~51\)) # (!\clkDivider|s_divCounter\(13) & ((\clkDivider|s_divCounter[12]~51\) # (GND)))
-- \clkDivider|s_divCounter[13]~53\ = CARRY((!\clkDivider|s_divCounter[12]~51\) # (!\clkDivider|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(13),
	datad => VCC,
	cin => \clkDivider|s_divCounter[12]~51\,
	combout => \clkDivider|s_divCounter[13]~52_combout\,
	cout => \clkDivider|s_divCounter[13]~53\);

-- Location: FF_X109_Y44_N1
\clkDivider|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[13]~52_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(13));

-- Location: LCCOMB_X109_Y44_N2
\clkDivider|s_divCounter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[14]~54_combout\ = (\clkDivider|s_divCounter\(14) & (\clkDivider|s_divCounter[13]~53\ $ (GND))) # (!\clkDivider|s_divCounter\(14) & (!\clkDivider|s_divCounter[13]~53\ & VCC))
-- \clkDivider|s_divCounter[14]~55\ = CARRY((\clkDivider|s_divCounter\(14) & !\clkDivider|s_divCounter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(14),
	datad => VCC,
	cin => \clkDivider|s_divCounter[13]~53\,
	combout => \clkDivider|s_divCounter[14]~54_combout\,
	cout => \clkDivider|s_divCounter[14]~55\);

-- Location: FF_X109_Y44_N3
\clkDivider|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[14]~54_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(14));

-- Location: LCCOMB_X109_Y44_N4
\clkDivider|s_divCounter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[15]~56_combout\ = (\clkDivider|s_divCounter\(15) & (!\clkDivider|s_divCounter[14]~55\)) # (!\clkDivider|s_divCounter\(15) & ((\clkDivider|s_divCounter[14]~55\) # (GND)))
-- \clkDivider|s_divCounter[15]~57\ = CARRY((!\clkDivider|s_divCounter[14]~55\) # (!\clkDivider|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(15),
	datad => VCC,
	cin => \clkDivider|s_divCounter[14]~55\,
	combout => \clkDivider|s_divCounter[15]~56_combout\,
	cout => \clkDivider|s_divCounter[15]~57\);

-- Location: FF_X109_Y44_N5
\clkDivider|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[15]~56_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(15));

-- Location: LCCOMB_X109_Y44_N6
\clkDivider|s_divCounter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[16]~58_combout\ = (\clkDivider|s_divCounter\(16) & (\clkDivider|s_divCounter[15]~57\ $ (GND))) # (!\clkDivider|s_divCounter\(16) & (!\clkDivider|s_divCounter[15]~57\ & VCC))
-- \clkDivider|s_divCounter[16]~59\ = CARRY((\clkDivider|s_divCounter\(16) & !\clkDivider|s_divCounter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(16),
	datad => VCC,
	cin => \clkDivider|s_divCounter[15]~57\,
	combout => \clkDivider|s_divCounter[16]~58_combout\,
	cout => \clkDivider|s_divCounter[16]~59\);

-- Location: FF_X109_Y44_N7
\clkDivider|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[16]~58_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(16));

-- Location: LCCOMB_X109_Y44_N8
\clkDivider|s_divCounter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[17]~60_combout\ = (\clkDivider|s_divCounter\(17) & (!\clkDivider|s_divCounter[16]~59\)) # (!\clkDivider|s_divCounter\(17) & ((\clkDivider|s_divCounter[16]~59\) # (GND)))
-- \clkDivider|s_divCounter[17]~61\ = CARRY((!\clkDivider|s_divCounter[16]~59\) # (!\clkDivider|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(17),
	datad => VCC,
	cin => \clkDivider|s_divCounter[16]~59\,
	combout => \clkDivider|s_divCounter[17]~60_combout\,
	cout => \clkDivider|s_divCounter[17]~61\);

-- Location: FF_X109_Y44_N9
\clkDivider|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[17]~60_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(17));

-- Location: LCCOMB_X109_Y44_N10
\clkDivider|s_divCounter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[18]~62_combout\ = (\clkDivider|s_divCounter\(18) & (\clkDivider|s_divCounter[17]~61\ $ (GND))) # (!\clkDivider|s_divCounter\(18) & (!\clkDivider|s_divCounter[17]~61\ & VCC))
-- \clkDivider|s_divCounter[18]~63\ = CARRY((\clkDivider|s_divCounter\(18) & !\clkDivider|s_divCounter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(18),
	datad => VCC,
	cin => \clkDivider|s_divCounter[17]~61\,
	combout => \clkDivider|s_divCounter[18]~62_combout\,
	cout => \clkDivider|s_divCounter[18]~63\);

-- Location: FF_X109_Y44_N11
\clkDivider|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[18]~62_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(18));

-- Location: LCCOMB_X109_Y44_N12
\clkDivider|s_divCounter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[19]~64_combout\ = (\clkDivider|s_divCounter\(19) & (!\clkDivider|s_divCounter[18]~63\)) # (!\clkDivider|s_divCounter\(19) & ((\clkDivider|s_divCounter[18]~63\) # (GND)))
-- \clkDivider|s_divCounter[19]~65\ = CARRY((!\clkDivider|s_divCounter[18]~63\) # (!\clkDivider|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(19),
	datad => VCC,
	cin => \clkDivider|s_divCounter[18]~63\,
	combout => \clkDivider|s_divCounter[19]~64_combout\,
	cout => \clkDivider|s_divCounter[19]~65\);

-- Location: FF_X109_Y44_N13
\clkDivider|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[19]~64_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(19));

-- Location: LCCOMB_X109_Y44_N14
\clkDivider|s_divCounter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[20]~66_combout\ = (\clkDivider|s_divCounter\(20) & (\clkDivider|s_divCounter[19]~65\ $ (GND))) # (!\clkDivider|s_divCounter\(20) & (!\clkDivider|s_divCounter[19]~65\ & VCC))
-- \clkDivider|s_divCounter[20]~67\ = CARRY((\clkDivider|s_divCounter\(20) & !\clkDivider|s_divCounter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(20),
	datad => VCC,
	cin => \clkDivider|s_divCounter[19]~65\,
	combout => \clkDivider|s_divCounter[20]~66_combout\,
	cout => \clkDivider|s_divCounter[20]~67\);

-- Location: FF_X109_Y44_N15
\clkDivider|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[20]~66_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(20));

-- Location: LCCOMB_X109_Y44_N16
\clkDivider|s_divCounter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[21]~68_combout\ = (\clkDivider|s_divCounter\(21) & (!\clkDivider|s_divCounter[20]~67\)) # (!\clkDivider|s_divCounter\(21) & ((\clkDivider|s_divCounter[20]~67\) # (GND)))
-- \clkDivider|s_divCounter[21]~69\ = CARRY((!\clkDivider|s_divCounter[20]~67\) # (!\clkDivider|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(21),
	datad => VCC,
	cin => \clkDivider|s_divCounter[20]~67\,
	combout => \clkDivider|s_divCounter[21]~68_combout\,
	cout => \clkDivider|s_divCounter[21]~69\);

-- Location: FF_X109_Y44_N17
\clkDivider|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[21]~68_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(21));

-- Location: LCCOMB_X109_Y44_N18
\clkDivider|s_divCounter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[22]~70_combout\ = (\clkDivider|s_divCounter\(22) & (\clkDivider|s_divCounter[21]~69\ $ (GND))) # (!\clkDivider|s_divCounter\(22) & (!\clkDivider|s_divCounter[21]~69\ & VCC))
-- \clkDivider|s_divCounter[22]~71\ = CARRY((\clkDivider|s_divCounter\(22) & !\clkDivider|s_divCounter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(22),
	datad => VCC,
	cin => \clkDivider|s_divCounter[21]~69\,
	combout => \clkDivider|s_divCounter[22]~70_combout\,
	cout => \clkDivider|s_divCounter[22]~71\);

-- Location: FF_X109_Y44_N19
\clkDivider|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[22]~70_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(22));

-- Location: LCCOMB_X109_Y44_N20
\clkDivider|s_divCounter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[23]~72_combout\ = (\clkDivider|s_divCounter\(23) & (!\clkDivider|s_divCounter[22]~71\)) # (!\clkDivider|s_divCounter\(23) & ((\clkDivider|s_divCounter[22]~71\) # (GND)))
-- \clkDivider|s_divCounter[23]~73\ = CARRY((!\clkDivider|s_divCounter[22]~71\) # (!\clkDivider|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(23),
	datad => VCC,
	cin => \clkDivider|s_divCounter[22]~71\,
	combout => \clkDivider|s_divCounter[23]~72_combout\,
	cout => \clkDivider|s_divCounter[23]~73\);

-- Location: FF_X109_Y44_N21
\clkDivider|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[23]~72_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(23));

-- Location: LCCOMB_X109_Y44_N22
\clkDivider|s_divCounter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[24]~74_combout\ = (\clkDivider|s_divCounter\(24) & (\clkDivider|s_divCounter[23]~73\ $ (GND))) # (!\clkDivider|s_divCounter\(24) & (!\clkDivider|s_divCounter[23]~73\ & VCC))
-- \clkDivider|s_divCounter[24]~75\ = CARRY((\clkDivider|s_divCounter\(24) & !\clkDivider|s_divCounter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(24),
	datad => VCC,
	cin => \clkDivider|s_divCounter[23]~73\,
	combout => \clkDivider|s_divCounter[24]~74_combout\,
	cout => \clkDivider|s_divCounter[24]~75\);

-- Location: FF_X109_Y44_N23
\clkDivider|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[24]~74_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(24));

-- Location: LCCOMB_X109_Y44_N24
\clkDivider|s_divCounter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[25]~76_combout\ = \clkDivider|s_divCounter[24]~75\ $ (\clkDivider|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clkDivider|s_divCounter\(25),
	cin => \clkDivider|s_divCounter[24]~75\,
	combout => \clkDivider|s_divCounter[25]~76_combout\);

-- Location: FF_X109_Y44_N25
\clkDivider|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[25]~76_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(25));

-- Location: LCCOMB_X109_Y44_N26
\clkDivider|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan0~0_combout\ = (\clkDivider|s_divCounter\(23) & (\clkDivider|s_divCounter\(21) & (\clkDivider|s_divCounter\(20) & \clkDivider|s_divCounter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(23),
	datab => \clkDivider|s_divCounter\(21),
	datac => \clkDivider|s_divCounter\(20),
	datad => \clkDivider|s_divCounter\(22),
	combout => \clkDivider|LessThan0~0_combout\);

-- Location: LCCOMB_X109_Y45_N2
\clkDivider|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan0~2_combout\ = (((!\clkDivider|s_divCounter\(2)) # (!\clkDivider|s_divCounter\(0))) # (!\clkDivider|s_divCounter\(1))) # (!\clkDivider|s_divCounter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(3),
	datab => \clkDivider|s_divCounter\(1),
	datac => \clkDivider|s_divCounter\(0),
	datad => \clkDivider|s_divCounter\(2),
	combout => \clkDivider|LessThan0~2_combout\);

-- Location: LCCOMB_X109_Y45_N0
\clkDivider|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan0~3_combout\ = (((\clkDivider|LessThan0~2_combout\) # (!\clkDivider|s_divCounter\(4))) # (!\clkDivider|s_divCounter\(5))) # (!\clkDivider|s_divCounter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(6),
	datab => \clkDivider|s_divCounter\(5),
	datac => \clkDivider|s_divCounter\(4),
	datad => \clkDivider|LessThan0~2_combout\,
	combout => \clkDivider|LessThan0~3_combout\);

-- Location: LCCOMB_X110_Y45_N22
\clkDivider|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan0~1_combout\ = (((!\clkDivider|s_divCounter\(13)) # (!\clkDivider|s_divCounter\(14))) # (!\clkDivider|s_divCounter\(15))) # (!\clkDivider|s_divCounter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(12),
	datab => \clkDivider|s_divCounter\(15),
	datac => \clkDivider|s_divCounter\(14),
	datad => \clkDivider|s_divCounter\(13),
	combout => \clkDivider|LessThan0~1_combout\);

-- Location: LCCOMB_X109_Y45_N4
\clkDivider|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|Equal0~0_combout\ = (!\clkDivider|s_divCounter\(10) & (!\clkDivider|s_divCounter\(9) & (!\clkDivider|s_divCounter\(8) & !\clkDivider|s_divCounter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(10),
	datab => \clkDivider|s_divCounter\(9),
	datac => \clkDivider|s_divCounter\(8),
	datad => \clkDivider|s_divCounter\(7),
	combout => \clkDivider|Equal0~0_combout\);

-- Location: LCCOMB_X110_Y45_N24
\clkDivider|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|Equal0~1_combout\ = (!\clkDivider|s_divCounter\(11) & \clkDivider|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(11),
	datac => \clkDivider|Equal0~0_combout\,
	combout => \clkDivider|Equal0~1_combout\);

-- Location: LCCOMB_X110_Y45_N12
\clkDivider|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan0~4_combout\ = (!\clkDivider|s_divCounter\(16) & ((\clkDivider|LessThan0~1_combout\) # ((\clkDivider|LessThan0~3_combout\ & \clkDivider|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|LessThan0~3_combout\,
	datab => \clkDivider|s_divCounter\(16),
	datac => \clkDivider|LessThan0~1_combout\,
	datad => \clkDivider|Equal0~1_combout\,
	combout => \clkDivider|LessThan0~4_combout\);

-- Location: LCCOMB_X110_Y45_N10
\clkDivider|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan0~5_combout\ = (\clkDivider|s_divCounter\(19) & ((\clkDivider|s_divCounter\(18)) # ((\clkDivider|s_divCounter\(17) & !\clkDivider|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(17),
	datab => \clkDivider|s_divCounter\(19),
	datac => \clkDivider|s_divCounter\(18),
	datad => \clkDivider|LessThan0~4_combout\,
	combout => \clkDivider|LessThan0~5_combout\);

-- Location: LCCOMB_X110_Y45_N28
\clkDivider|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan0~6_combout\ = (\clkDivider|s_divCounter\(25) & ((\clkDivider|s_divCounter\(24)) # ((\clkDivider|LessThan0~0_combout\ & \clkDivider|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(24),
	datab => \clkDivider|s_divCounter\(25),
	datac => \clkDivider|LessThan0~0_combout\,
	datad => \clkDivider|LessThan0~5_combout\,
	combout => \clkDivider|LessThan0~6_combout\);

-- Location: FF_X109_Y45_N7
\clkDivider|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[0]~26_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(0));

-- Location: LCCOMB_X109_Y45_N8
\clkDivider|s_divCounter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[1]~28_combout\ = (\clkDivider|s_divCounter\(1) & (!\clkDivider|s_divCounter[0]~27\)) # (!\clkDivider|s_divCounter\(1) & ((\clkDivider|s_divCounter[0]~27\) # (GND)))
-- \clkDivider|s_divCounter[1]~29\ = CARRY((!\clkDivider|s_divCounter[0]~27\) # (!\clkDivider|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(1),
	datad => VCC,
	cin => \clkDivider|s_divCounter[0]~27\,
	combout => \clkDivider|s_divCounter[1]~28_combout\,
	cout => \clkDivider|s_divCounter[1]~29\);

-- Location: FF_X109_Y45_N9
\clkDivider|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[1]~28_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(1));

-- Location: LCCOMB_X109_Y45_N10
\clkDivider|s_divCounter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[2]~30_combout\ = (\clkDivider|s_divCounter\(2) & (\clkDivider|s_divCounter[1]~29\ $ (GND))) # (!\clkDivider|s_divCounter\(2) & (!\clkDivider|s_divCounter[1]~29\ & VCC))
-- \clkDivider|s_divCounter[2]~31\ = CARRY((\clkDivider|s_divCounter\(2) & !\clkDivider|s_divCounter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(2),
	datad => VCC,
	cin => \clkDivider|s_divCounter[1]~29\,
	combout => \clkDivider|s_divCounter[2]~30_combout\,
	cout => \clkDivider|s_divCounter[2]~31\);

-- Location: FF_X109_Y45_N11
\clkDivider|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[2]~30_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(2));

-- Location: FF_X109_Y45_N13
\clkDivider|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[3]~32_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(3));

-- Location: LCCOMB_X110_Y45_N14
\clkDivider|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|Equal0~2_combout\ = (!\clkDivider|s_divCounter\(3) & (!\clkDivider|s_divCounter\(1) & (!\clkDivider|s_divCounter\(0) & !\clkDivider|s_divCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(3),
	datab => \clkDivider|s_divCounter\(1),
	datac => \clkDivider|s_divCounter\(0),
	datad => \clkDivider|s_divCounter\(2),
	combout => \clkDivider|Equal0~2_combout\);

-- Location: LCCOMB_X110_Y45_N16
\clkDivider|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|Equal0~3_combout\ = (!\clkDivider|s_divCounter\(4) & (!\clkDivider|s_divCounter\(6) & (!\clkDivider|s_divCounter\(5) & !\clkDivider|s_divCounter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(4),
	datab => \clkDivider|s_divCounter\(6),
	datac => \clkDivider|s_divCounter\(5),
	datad => \clkDivider|s_divCounter\(12),
	combout => \clkDivider|Equal0~3_combout\);

-- Location: LCCOMB_X109_Y44_N28
\clkDivider|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|Equal0~6_combout\ = (!\clkDivider|s_divCounter\(23) & (!\clkDivider|s_divCounter\(22) & (!\clkDivider|s_divCounter\(24) & !\clkDivider|s_divCounter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(23),
	datab => \clkDivider|s_divCounter\(22),
	datac => \clkDivider|s_divCounter\(24),
	datad => \clkDivider|s_divCounter\(21),
	combout => \clkDivider|Equal0~6_combout\);

-- Location: LCCOMB_X110_Y45_N30
\clkDivider|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|Equal0~4_combout\ = (!\clkDivider|s_divCounter\(16) & (!\clkDivider|s_divCounter\(15) & (!\clkDivider|s_divCounter\(14) & !\clkDivider|s_divCounter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(16),
	datab => \clkDivider|s_divCounter\(15),
	datac => \clkDivider|s_divCounter\(14),
	datad => \clkDivider|s_divCounter\(13),
	combout => \clkDivider|Equal0~4_combout\);

-- Location: LCCOMB_X109_Y44_N30
\clkDivider|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|Equal0~5_combout\ = (!\clkDivider|s_divCounter\(19) & (!\clkDivider|s_divCounter\(20) & (!\clkDivider|s_divCounter\(17) & !\clkDivider|s_divCounter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(19),
	datab => \clkDivider|s_divCounter\(20),
	datac => \clkDivider|s_divCounter\(17),
	datad => \clkDivider|s_divCounter\(18),
	combout => \clkDivider|Equal0~5_combout\);

-- Location: LCCOMB_X110_Y45_N20
\clkDivider|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|Equal0~7_combout\ = (\clkDivider|Equal0~6_combout\ & (!\clkDivider|s_divCounter\(25) & (\clkDivider|Equal0~4_combout\ & \clkDivider|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|Equal0~6_combout\,
	datab => \clkDivider|s_divCounter\(25),
	datac => \clkDivider|Equal0~4_combout\,
	datad => \clkDivider|Equal0~5_combout\,
	combout => \clkDivider|Equal0~7_combout\);

-- Location: LCCOMB_X111_Y45_N20
\clkDivider|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|Equal0~8_combout\ = (\clkDivider|Equal0~2_combout\ & (\clkDivider|Equal0~1_combout\ & (\clkDivider|Equal0~3_combout\ & \clkDivider|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|Equal0~2_combout\,
	datab => \clkDivider|Equal0~1_combout\,
	datac => \clkDivider|Equal0~3_combout\,
	datad => \clkDivider|Equal0~7_combout\,
	combout => \clkDivider|Equal0~8_combout\);

-- Location: FF_X111_Y45_N21
\clkDivider|pulseOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|pulseOut~q\);

-- Location: FF_X111_Y37_N9
\maquina_pao_fsm|s_currentState.Amassar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \maquina_pao_fsm|Selector3~0_combout\,
	sclr => \ALT_INV_KEY[3]~input_o\,
	sload => VCC,
	ena => \clkDivider|pulseOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquina_pao_fsm|s_currentState.Amassar~q\);

-- Location: LCCOMB_X111_Y37_N0
\maquina_pao_fsm|s_currentState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina_pao_fsm|s_currentState~12_combout\ = (\KEY[3]~input_o\ & (\maquina_pao_fsm|s_currentState.Amassar~q\ & \timeraux_fsm|s_cntZero~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[3]~input_o\,
	datac => \maquina_pao_fsm|s_currentState.Amassar~q\,
	datad => \timeraux_fsm|s_cntZero~q\,
	combout => \maquina_pao_fsm|s_currentState~12_combout\);

-- Location: LCCOMB_X113_Y37_N18
\maquina_pao_fsm|s_currentState.Levedura_Init~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina_pao_fsm|s_currentState.Levedura_Init~feeder_combout\ = \maquina_pao_fsm|s_currentState~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_pao_fsm|s_currentState~12_combout\,
	combout => \maquina_pao_fsm|s_currentState.Levedura_Init~feeder_combout\);

-- Location: FF_X113_Y37_N19
\maquina_pao_fsm|s_currentState.Levedura_Init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \maquina_pao_fsm|s_currentState.Levedura_Init~feeder_combout\,
	ena => \clkDivider|pulseOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquina_pao_fsm|s_currentState.Levedura_Init~q\);

-- Location: LCCOMB_X112_Y37_N12
\maquina_pao_fsm|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina_pao_fsm|Selector4~0_combout\ = (\maquina_pao_fsm|s_currentState.Levedura_Init~q\) # ((!\timeraux_fsm|s_cntZero~q\ & \maquina_pao_fsm|s_currentState.Levedura~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timeraux_fsm|s_cntZero~q\,
	datac => \maquina_pao_fsm|s_currentState.Levedura~q\,
	datad => \maquina_pao_fsm|s_currentState.Levedura_Init~q\,
	combout => \maquina_pao_fsm|Selector4~0_combout\);

-- Location: FF_X112_Y37_N13
\maquina_pao_fsm|s_currentState.Levedura\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \maquina_pao_fsm|Selector4~0_combout\,
	sclr => \ALT_INV_KEY[3]~input_o\,
	ena => \clkDivider|pulseOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquina_pao_fsm|s_currentState.Levedura~q\);

-- Location: LCCOMB_X112_Y37_N16
\maquina_pao_fsm|s_currentState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina_pao_fsm|s_currentState~13_combout\ = (\KEY[3]~input_o\ & (\timeraux_fsm|s_cntZero~q\ & \maquina_pao_fsm|s_currentState.Levedura~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[3]~input_o\,
	datac => \timeraux_fsm|s_cntZero~q\,
	datad => \maquina_pao_fsm|s_currentState.Levedura~q\,
	combout => \maquina_pao_fsm|s_currentState~13_combout\);

-- Location: LCCOMB_X112_Y37_N0
\maquina_pao_fsm|s_currentState.Cozedura_Init~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina_pao_fsm|s_currentState.Cozedura_Init~feeder_combout\ = \maquina_pao_fsm|s_currentState~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maquina_pao_fsm|s_currentState~13_combout\,
	combout => \maquina_pao_fsm|s_currentState.Cozedura_Init~feeder_combout\);

-- Location: FF_X112_Y37_N1
\maquina_pao_fsm|s_currentState.Cozedura_Init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \maquina_pao_fsm|s_currentState.Cozedura_Init~feeder_combout\,
	ena => \clkDivider|pulseOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquina_pao_fsm|s_currentState.Cozedura_Init~q\);

-- Location: LCCOMB_X112_Y37_N6
\maquina_pao_fsm|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina_pao_fsm|Selector5~0_combout\ = (\maquina_pao_fsm|s_currentState.Cozedura_Init~q\) # ((\maquina_pao_fsm|s_currentState.Cozedura~q\ & !\timeraux_fsm|s_cntZero~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_pao_fsm|s_currentState.Cozedura_Init~q\,
	datac => \maquina_pao_fsm|s_currentState.Cozedura~q\,
	datad => \timeraux_fsm|s_cntZero~q\,
	combout => \maquina_pao_fsm|Selector5~0_combout\);

-- Location: FF_X112_Y37_N7
\maquina_pao_fsm|s_currentState.Cozedura\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \maquina_pao_fsm|Selector5~0_combout\,
	sclr => \ALT_INV_KEY[3]~input_o\,
	ena => \clkDivider|pulseOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquina_pao_fsm|s_currentState.Cozedura~q\);

-- Location: LCCOMB_X111_Y37_N30
\maquina_pao_fsm|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina_pao_fsm|WideOr0~0_combout\ = (\maquina_pao_fsm|s_currentState.Cozedura~q\) # ((\maquina_pao_fsm|s_currentState.Amassar~q\) # ((\maquina_pao_fsm|s_currentState.Levedura~q\) # (\maquina_pao_fsm|s_currentState.Extra~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_pao_fsm|s_currentState.Cozedura~q\,
	datab => \maquina_pao_fsm|s_currentState.Amassar~q\,
	datac => \maquina_pao_fsm|s_currentState.Levedura~q\,
	datad => \maquina_pao_fsm|s_currentState.Extra~q\,
	combout => \maquina_pao_fsm|WideOr0~0_combout\);

-- Location: CLKCTRL_G6
\maquina_pao_fsm|WideOr0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \maquina_pao_fsm|WideOr0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \maquina_pao_fsm|WideOr0~0clkctrl_outclk\);

-- Location: LCCOMB_X111_Y37_N28
\maquina_pao_fsm|timeVal[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina_pao_fsm|timeVal\(4) = (GLOBAL(\maquina_pao_fsm|WideOr0~0clkctrl_outclk\) & (\maquina_pao_fsm|timeVal\(4))) # (!GLOBAL(\maquina_pao_fsm|WideOr0~0clkctrl_outclk\) & ((!\maquina_pao_fsm|Selector9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_pao_fsm|timeVal\(4),
	datac => \maquina_pao_fsm|Selector9~0_combout\,
	datad => \maquina_pao_fsm|WideOr0~0clkctrl_outclk\,
	combout => \maquina_pao_fsm|timeVal\(4));

-- Location: FF_X113_Y37_N31
\reg|time_amassar[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|time_amassar\(0));

-- Location: LCCOMB_X112_Y37_N22
\maquina_pao_fsm|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina_pao_fsm|Selector7~0_combout\ = (\maquina_pao_fsm|s_currentState.Amassar_Init~q\ & \reg|time_amassar\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maquina_pao_fsm|s_currentState.Amassar_Init~q\,
	datac => \reg|time_amassar\(0),
	combout => \maquina_pao_fsm|Selector7~0_combout\);

-- Location: LCCOMB_X111_Y37_N20
\maquina_pao_fsm|timeVal[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina_pao_fsm|timeVal\(2) = (GLOBAL(\maquina_pao_fsm|WideOr0~0clkctrl_outclk\) & ((\maquina_pao_fsm|timeVal\(2)))) # (!GLOBAL(\maquina_pao_fsm|WideOr0~0clkctrl_outclk\) & (\maquina_pao_fsm|Selector7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maquina_pao_fsm|Selector7~0_combout\,
	datac => \maquina_pao_fsm|timeVal\(2),
	datad => \maquina_pao_fsm|WideOr0~0clkctrl_outclk\,
	combout => \maquina_pao_fsm|timeVal\(2));

-- Location: LCCOMB_X110_Y37_N16
\timeraux_fsm|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|Add0~0_combout\ = \timeraux_fsm|s_counter\(0) $ (GND)
-- \timeraux_fsm|Add0~1\ = CARRY(!\timeraux_fsm|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timeraux_fsm|s_counter\(0),
	datad => VCC,
	combout => \timeraux_fsm|Add0~0_combout\,
	cout => \timeraux_fsm|Add0~1\);

-- Location: LCCOMB_X112_Y37_N30
\maquina_pao_fsm|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina_pao_fsm|Selector1~0_combout\ = (\reg|time_amassar\(0) & ((\maquina_pao_fsm|s_currentState.Amassar_Init~q\) # (!\maquina_pao_fsm|s_currentState.TInit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_pao_fsm|s_currentState.Amassar_Init~q\,
	datac => \reg|time_amassar\(0),
	datad => \maquina_pao_fsm|s_currentState.TInit~q\,
	combout => \maquina_pao_fsm|Selector1~0_combout\);

-- Location: LCCOMB_X111_Y37_N6
\maquina_pao_fsm|timeVal[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina_pao_fsm|timeVal\(0) = (GLOBAL(\maquina_pao_fsm|WideOr0~0clkctrl_outclk\) & (\maquina_pao_fsm|timeVal\(0))) # (!GLOBAL(\maquina_pao_fsm|WideOr0~0clkctrl_outclk\) & ((\maquina_pao_fsm|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_pao_fsm|timeVal\(0),
	datac => \maquina_pao_fsm|Selector1~0_combout\,
	datad => \maquina_pao_fsm|WideOr0~0clkctrl_outclk\,
	combout => \maquina_pao_fsm|timeVal\(0));

-- Location: LCCOMB_X111_Y37_N26
\timeraux_fsm|s_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter~0_combout\ = (\KEY[3]~input_o\ & ((\maquina_pao_fsm|WideOr0~0_combout\ & (!\timeraux_fsm|Add0~0_combout\)) # (!\maquina_pao_fsm|WideOr0~0_combout\ & ((!\maquina_pao_fsm|timeVal\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|Add0~0_combout\,
	datab => \KEY[3]~input_o\,
	datac => \maquina_pao_fsm|WideOr0~0_combout\,
	datad => \maquina_pao_fsm|timeVal\(0),
	combout => \timeraux_fsm|s_counter~0_combout\);

-- Location: LCCOMB_X111_Y37_N12
\timeraux_fsm|s_counter[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter[6]~2_combout\ = (\timeraux_fsm|s_counter\(0) & (\timeraux_fsm|s_counter\(2) & (\timeraux_fsm|s_counter\(3) & \timeraux_fsm|s_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|s_counter\(0),
	datab => \timeraux_fsm|s_counter\(2),
	datac => \timeraux_fsm|s_counter\(3),
	datad => \timeraux_fsm|s_counter\(1),
	combout => \timeraux_fsm|s_counter[6]~2_combout\);

-- Location: LCCOMB_X111_Y37_N8
\timeraux_fsm|s_counter[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter[7]~3_combout\ = (!\timeraux_fsm|s_counter[6]~2_combout\) # (!\KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[3]~input_o\,
	datad => \timeraux_fsm|s_counter[6]~2_combout\,
	combout => \timeraux_fsm|s_counter[7]~3_combout\);

-- Location: LCCOMB_X111_Y37_N18
\timeraux_fsm|s_counter[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter[7]~4_combout\ = (\clkDivider|pulseOut~q\ & (((\timeraux_fsm|s_counter[7]~3_combout\) # (!\maquina_pao_fsm|WideOr0~0_combout\)) # (!\timeraux_fsm|s_counter[6]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|s_counter[6]~1_combout\,
	datab => \maquina_pao_fsm|WideOr0~0_combout\,
	datac => \clkDivider|pulseOut~q\,
	datad => \timeraux_fsm|s_counter[7]~3_combout\,
	combout => \timeraux_fsm|s_counter[7]~4_combout\);

-- Location: FF_X111_Y37_N27
\timeraux_fsm|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timeraux_fsm|s_counter~0_combout\,
	ena => \timeraux_fsm|s_counter[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timeraux_fsm|s_counter\(0));

-- Location: LCCOMB_X110_Y37_N18
\timeraux_fsm|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|Add0~2_combout\ = (\timeraux_fsm|s_counter\(1) & (!\timeraux_fsm|Add0~1\)) # (!\timeraux_fsm|s_counter\(1) & (\timeraux_fsm|Add0~1\ & VCC))
-- \timeraux_fsm|Add0~3\ = CARRY((\timeraux_fsm|s_counter\(1) & !\timeraux_fsm|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|s_counter\(1),
	datad => VCC,
	cin => \timeraux_fsm|Add0~1\,
	combout => \timeraux_fsm|Add0~2_combout\,
	cout => \timeraux_fsm|Add0~3\);

-- Location: LCCOMB_X113_Y37_N16
\maquina_pao_fsm|timeVal[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina_pao_fsm|timeVal\(1) = (GLOBAL(\maquina_pao_fsm|WideOr0~0clkctrl_outclk\) & (\maquina_pao_fsm|timeVal\(1))) # (!GLOBAL(\maquina_pao_fsm|WideOr0~0clkctrl_outclk\) & ((\maquina_pao_fsm|s_currentState.TInit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maquina_pao_fsm|timeVal\(1),
	datac => \maquina_pao_fsm|s_currentState.TInit~q\,
	datad => \maquina_pao_fsm|WideOr0~0clkctrl_outclk\,
	combout => \maquina_pao_fsm|timeVal\(1));

-- Location: LCCOMB_X110_Y37_N10
\timeraux_fsm|s_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter~11_combout\ = (\KEY[3]~input_o\ & ((\maquina_pao_fsm|WideOr0~0_combout\ & (!\timeraux_fsm|Add0~2_combout\)) # (!\maquina_pao_fsm|WideOr0~0_combout\ & ((!\maquina_pao_fsm|timeVal\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|Add0~2_combout\,
	datab => \maquina_pao_fsm|WideOr0~0_combout\,
	datac => \KEY[3]~input_o\,
	datad => \maquina_pao_fsm|timeVal\(1),
	combout => \timeraux_fsm|s_counter~11_combout\);

-- Location: FF_X110_Y37_N11
\timeraux_fsm|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timeraux_fsm|s_counter~11_combout\,
	ena => \timeraux_fsm|s_counter[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timeraux_fsm|s_counter\(1));

-- Location: LCCOMB_X110_Y37_N20
\timeraux_fsm|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|Add0~4_combout\ = (\timeraux_fsm|s_counter\(2) & (\timeraux_fsm|Add0~3\ $ (GND))) # (!\timeraux_fsm|s_counter\(2) & ((GND) # (!\timeraux_fsm|Add0~3\)))
-- \timeraux_fsm|Add0~5\ = CARRY((!\timeraux_fsm|Add0~3\) # (!\timeraux_fsm|s_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timeraux_fsm|s_counter\(2),
	datad => VCC,
	cin => \timeraux_fsm|Add0~3\,
	combout => \timeraux_fsm|Add0~4_combout\,
	cout => \timeraux_fsm|Add0~5\);

-- Location: LCCOMB_X111_Y37_N14
\timeraux_fsm|s_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter~10_combout\ = (\KEY[3]~input_o\ & ((\maquina_pao_fsm|WideOr0~0_combout\ & ((!\timeraux_fsm|Add0~4_combout\))) # (!\maquina_pao_fsm|WideOr0~0_combout\ & (!\maquina_pao_fsm|timeVal\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_pao_fsm|timeVal\(2),
	datab => \KEY[3]~input_o\,
	datac => \maquina_pao_fsm|WideOr0~0_combout\,
	datad => \timeraux_fsm|Add0~4_combout\,
	combout => \timeraux_fsm|s_counter~10_combout\);

-- Location: FF_X111_Y37_N15
\timeraux_fsm|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timeraux_fsm|s_counter~10_combout\,
	ena => \timeraux_fsm|s_counter[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timeraux_fsm|s_counter\(2));

-- Location: LCCOMB_X110_Y37_N22
\timeraux_fsm|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|Add0~6_combout\ = (\timeraux_fsm|s_counter\(3) & (!\timeraux_fsm|Add0~5\)) # (!\timeraux_fsm|s_counter\(3) & (\timeraux_fsm|Add0~5\ & VCC))
-- \timeraux_fsm|Add0~7\ = CARRY((\timeraux_fsm|s_counter\(3) & !\timeraux_fsm|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timeraux_fsm|s_counter\(3),
	datad => VCC,
	cin => \timeraux_fsm|Add0~5\,
	combout => \timeraux_fsm|Add0~6_combout\,
	cout => \timeraux_fsm|Add0~7\);

-- Location: LCCOMB_X113_Y37_N22
\maquina_pao_fsm|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina_pao_fsm|Selector8~0_combout\ = (\maquina_pao_fsm|s_currentState.Amassar_Init~q\) # ((\maquina_pao_fsm|s_currentState.Levedura_Init~q\) # ((\reg|time_total\(3) & !\maquina_pao_fsm|s_currentState.TInit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_pao_fsm|s_currentState.Amassar_Init~q\,
	datab => \maquina_pao_fsm|s_currentState.Levedura_Init~q\,
	datac => \reg|time_total\(3),
	datad => \maquina_pao_fsm|s_currentState.TInit~q\,
	combout => \maquina_pao_fsm|Selector8~0_combout\);

-- Location: LCCOMB_X113_Y37_N26
\maquina_pao_fsm|timeVal[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina_pao_fsm|timeVal\(3) = (GLOBAL(\maquina_pao_fsm|WideOr0~0clkctrl_outclk\) & ((\maquina_pao_fsm|timeVal\(3)))) # (!GLOBAL(\maquina_pao_fsm|WideOr0~0clkctrl_outclk\) & (\maquina_pao_fsm|Selector8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_pao_fsm|Selector8~0_combout\,
	datac => \maquina_pao_fsm|timeVal\(3),
	datad => \maquina_pao_fsm|WideOr0~0clkctrl_outclk\,
	combout => \maquina_pao_fsm|timeVal\(3));

-- Location: LCCOMB_X110_Y37_N0
\timeraux_fsm|s_counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter~9_combout\ = (\KEY[3]~input_o\ & ((\maquina_pao_fsm|WideOr0~0_combout\ & (!\timeraux_fsm|Add0~6_combout\)) # (!\maquina_pao_fsm|WideOr0~0_combout\ & ((!\maquina_pao_fsm|timeVal\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|Add0~6_combout\,
	datab => \maquina_pao_fsm|WideOr0~0_combout\,
	datac => \KEY[3]~input_o\,
	datad => \maquina_pao_fsm|timeVal\(3),
	combout => \timeraux_fsm|s_counter~9_combout\);

-- Location: FF_X110_Y37_N1
\timeraux_fsm|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timeraux_fsm|s_counter~9_combout\,
	ena => \timeraux_fsm|s_counter[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timeraux_fsm|s_counter\(3));

-- Location: LCCOMB_X110_Y37_N24
\timeraux_fsm|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|Add0~8_combout\ = (\timeraux_fsm|s_counter\(4) & (\timeraux_fsm|Add0~7\ $ (GND))) # (!\timeraux_fsm|s_counter\(4) & ((GND) # (!\timeraux_fsm|Add0~7\)))
-- \timeraux_fsm|Add0~9\ = CARRY((!\timeraux_fsm|Add0~7\) # (!\timeraux_fsm|s_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timeraux_fsm|s_counter\(4),
	datad => VCC,
	cin => \timeraux_fsm|Add0~7\,
	combout => \timeraux_fsm|Add0~8_combout\,
	cout => \timeraux_fsm|Add0~9\);

-- Location: LCCOMB_X111_Y37_N10
\timeraux_fsm|s_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter~8_combout\ = (\KEY[3]~input_o\ & ((\maquina_pao_fsm|WideOr0~0_combout\ & ((!\timeraux_fsm|Add0~8_combout\))) # (!\maquina_pao_fsm|WideOr0~0_combout\ & (!\maquina_pao_fsm|timeVal\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_pao_fsm|timeVal\(4),
	datab => \KEY[3]~input_o\,
	datac => \maquina_pao_fsm|WideOr0~0_combout\,
	datad => \timeraux_fsm|Add0~8_combout\,
	combout => \timeraux_fsm|s_counter~8_combout\);

-- Location: FF_X111_Y37_N11
\timeraux_fsm|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timeraux_fsm|s_counter~8_combout\,
	ena => \timeraux_fsm|s_counter[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timeraux_fsm|s_counter\(4));

-- Location: LCCOMB_X110_Y37_N26
\timeraux_fsm|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|Add0~10_combout\ = (\timeraux_fsm|s_counter\(5) & (!\timeraux_fsm|Add0~9\)) # (!\timeraux_fsm|s_counter\(5) & (\timeraux_fsm|Add0~9\ & VCC))
-- \timeraux_fsm|Add0~11\ = CARRY((\timeraux_fsm|s_counter\(5) & !\timeraux_fsm|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|s_counter\(5),
	datad => VCC,
	cin => \timeraux_fsm|Add0~9\,
	combout => \timeraux_fsm|Add0~10_combout\,
	cout => \timeraux_fsm|Add0~11\);

-- Location: LCCOMB_X113_Y37_N12
\maquina_pao_fsm|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina_pao_fsm|Selector10~0_combout\ = (\reg|time_amassar\(0) & !\maquina_pao_fsm|s_currentState.TInit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg|time_amassar\(0),
	datad => \maquina_pao_fsm|s_currentState.TInit~q\,
	combout => \maquina_pao_fsm|Selector10~0_combout\);

-- Location: LCCOMB_X112_Y37_N18
\maquina_pao_fsm|timeVal[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina_pao_fsm|timeVal\(5) = (GLOBAL(\maquina_pao_fsm|WideOr0~0clkctrl_outclk\) & (\maquina_pao_fsm|timeVal\(5))) # (!GLOBAL(\maquina_pao_fsm|WideOr0~0clkctrl_outclk\) & ((\maquina_pao_fsm|Selector10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maquina_pao_fsm|timeVal\(5),
	datac => \maquina_pao_fsm|Selector10~0_combout\,
	datad => \maquina_pao_fsm|WideOr0~0clkctrl_outclk\,
	combout => \maquina_pao_fsm|timeVal\(5));

-- Location: LCCOMB_X111_Y37_N2
\timeraux_fsm|s_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter~7_combout\ = (\KEY[3]~input_o\ & ((\maquina_pao_fsm|WideOr0~0_combout\ & (!\timeraux_fsm|Add0~10_combout\)) # (!\maquina_pao_fsm|WideOr0~0_combout\ & ((!\maquina_pao_fsm|timeVal\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|Add0~10_combout\,
	datab => \KEY[3]~input_o\,
	datac => \maquina_pao_fsm|WideOr0~0_combout\,
	datad => \maquina_pao_fsm|timeVal\(5),
	combout => \timeraux_fsm|s_counter~7_combout\);

-- Location: FF_X111_Y37_N3
\timeraux_fsm|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timeraux_fsm|s_counter~7_combout\,
	ena => \timeraux_fsm|s_counter[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timeraux_fsm|s_counter\(5));

-- Location: LCCOMB_X110_Y37_N28
\timeraux_fsm|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|Add0~12_combout\ = (\timeraux_fsm|s_counter\(6) & (\timeraux_fsm|Add0~11\ $ (GND))) # (!\timeraux_fsm|s_counter\(6) & ((GND) # (!\timeraux_fsm|Add0~11\)))
-- \timeraux_fsm|Add0~13\ = CARRY((!\timeraux_fsm|Add0~11\) # (!\timeraux_fsm|s_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|s_counter\(6),
	datad => VCC,
	cin => \timeraux_fsm|Add0~11\,
	combout => \timeraux_fsm|Add0~12_combout\,
	cout => \timeraux_fsm|Add0~13\);

-- Location: LCCOMB_X111_Y37_N4
\timeraux_fsm|s_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter~6_combout\ = (\KEY[3]~input_o\ & ((!\timeraux_fsm|Add0~12_combout\) # (!\maquina_pao_fsm|WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[3]~input_o\,
	datac => \maquina_pao_fsm|WideOr0~0_combout\,
	datad => \timeraux_fsm|Add0~12_combout\,
	combout => \timeraux_fsm|s_counter~6_combout\);

-- Location: FF_X111_Y37_N5
\timeraux_fsm|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timeraux_fsm|s_counter~6_combout\,
	ena => \timeraux_fsm|s_counter[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timeraux_fsm|s_counter\(6));

-- Location: LCCOMB_X110_Y37_N30
\timeraux_fsm|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|Add0~14_combout\ = \timeraux_fsm|s_counter\(7) $ (\timeraux_fsm|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|s_counter\(7),
	cin => \timeraux_fsm|Add0~13\,
	combout => \timeraux_fsm|Add0~14_combout\);

-- Location: LCCOMB_X111_Y37_N24
\timeraux_fsm|s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter~5_combout\ = (\KEY[3]~input_o\ & ((!\timeraux_fsm|Add0~14_combout\) # (!\maquina_pao_fsm|WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[3]~input_o\,
	datac => \maquina_pao_fsm|WideOr0~0_combout\,
	datad => \timeraux_fsm|Add0~14_combout\,
	combout => \timeraux_fsm|s_counter~5_combout\);

-- Location: FF_X111_Y37_N25
\timeraux_fsm|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timeraux_fsm|s_counter~5_combout\,
	ena => \timeraux_fsm|s_counter[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timeraux_fsm|s_counter\(7));

-- Location: LCCOMB_X111_Y37_N22
\timeraux_fsm|s_counter[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter[6]~1_combout\ = (\timeraux_fsm|s_counter\(4) & (\timeraux_fsm|s_counter\(7) & (\timeraux_fsm|s_counter\(6) & \timeraux_fsm|s_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|s_counter\(4),
	datab => \timeraux_fsm|s_counter\(7),
	datac => \timeraux_fsm|s_counter\(6),
	datad => \timeraux_fsm|s_counter\(5),
	combout => \timeraux_fsm|s_counter[6]~1_combout\);

-- Location: LCCOMB_X112_Y37_N4
\timeraux_fsm|s_counter[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter[6]~12_combout\ = (\timeraux_fsm|s_counter[6]~1_combout\ & (\maquina_pao_fsm|WideOr0~0_combout\ & \timeraux_fsm|s_counter[6]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timeraux_fsm|s_counter[6]~1_combout\,
	datac => \maquina_pao_fsm|WideOr0~0_combout\,
	datad => \timeraux_fsm|s_counter[6]~2_combout\,
	combout => \timeraux_fsm|s_counter[6]~12_combout\);

-- Location: FF_X112_Y37_N5
\timeraux_fsm|s_cntZero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timeraux_fsm|s_counter[6]~12_combout\,
	sclr => \ALT_INV_KEY[3]~input_o\,
	ena => \clkDivider|pulseOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timeraux_fsm|s_cntZero~q\);

-- Location: LCCOMB_X112_Y37_N10
\maquina_pao_fsm|s_currentState~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina_pao_fsm|s_currentState~14_combout\ = (\KEY[3]~input_o\ & (\timeraux_fsm|s_cntZero~q\ & \maquina_pao_fsm|s_currentState.Cozedura~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[3]~input_o\,
	datac => \timeraux_fsm|s_cntZero~q\,
	datad => \maquina_pao_fsm|s_currentState.Cozedura~q\,
	combout => \maquina_pao_fsm|s_currentState~14_combout\);

-- Location: LCCOMB_X112_Y37_N2
\maquina_pao_fsm|s_currentState.Extra_Init~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina_pao_fsm|s_currentState.Extra_Init~feeder_combout\ = \maquina_pao_fsm|s_currentState~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maquina_pao_fsm|s_currentState~14_combout\,
	combout => \maquina_pao_fsm|s_currentState.Extra_Init~feeder_combout\);

-- Location: FF_X112_Y37_N3
\maquina_pao_fsm|s_currentState.Extra_Init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \maquina_pao_fsm|s_currentState.Extra_Init~feeder_combout\,
	ena => \clkDivider|pulseOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquina_pao_fsm|s_currentState.Extra_Init~q\);

-- Location: LCCOMB_X112_Y37_N26
\maquina_pao_fsm|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina_pao_fsm|Selector6~0_combout\ = (\maquina_pao_fsm|s_currentState.Extra_Init~q\) # ((!\timeraux_fsm|s_cntZero~q\ & \maquina_pao_fsm|s_currentState.Extra~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timeraux_fsm|s_cntZero~q\,
	datac => \maquina_pao_fsm|s_currentState.Extra~q\,
	datad => \maquina_pao_fsm|s_currentState.Extra_Init~q\,
	combout => \maquina_pao_fsm|Selector6~0_combout\);

-- Location: FF_X112_Y37_N27
\maquina_pao_fsm|s_currentState.Extra\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \maquina_pao_fsm|Selector6~0_combout\,
	sclr => \ALT_INV_KEY[3]~input_o\,
	ena => \clkDivider|pulseOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquina_pao_fsm|s_currentState.Extra~q\);

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

-- Location: LCCOMB_X112_Y37_N28
\maquina_pao_fsm|s_currentState.TInit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina_pao_fsm|s_currentState.TInit~0_combout\ = (\maquina_pao_fsm|s_currentState.Extra~q\ & ((\timeraux_fsm|s_cntZero~q\) # ((!\maquina_pao_fsm|s_currentState.TInit~q\ & \KEY[0]~input_o\)))) # (!\maquina_pao_fsm|s_currentState.Extra~q\ & 
-- (!\maquina_pao_fsm|s_currentState.TInit~q\ & ((\KEY[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_pao_fsm|s_currentState.Extra~q\,
	datab => \maquina_pao_fsm|s_currentState.TInit~q\,
	datac => \timeraux_fsm|s_cntZero~q\,
	datad => \KEY[0]~input_o\,
	combout => \maquina_pao_fsm|s_currentState.TInit~0_combout\);

-- Location: LCCOMB_X113_Y37_N24
\maquina_pao_fsm|s_currentState.TInit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina_pao_fsm|s_currentState.TInit~1_combout\ = (\KEY[3]~input_o\ & !\maquina_pao_fsm|s_currentState.TInit~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[3]~input_o\,
	datad => \maquina_pao_fsm|s_currentState.TInit~0_combout\,
	combout => \maquina_pao_fsm|s_currentState.TInit~1_combout\);

-- Location: FF_X113_Y37_N25
\maquina_pao_fsm|s_currentState.TInit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \maquina_pao_fsm|s_currentState.TInit~1_combout\,
	ena => \clkDivider|pulseOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquina_pao_fsm|s_currentState.TInit~q\);

-- Location: LCCOMB_X113_Y37_N20
\maquina_pao_fsm|s_currentState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina_pao_fsm|s_currentState~11_combout\ = (\KEY[3]~input_o\ & (!\maquina_pao_fsm|s_currentState.TInit~q\ & !\KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[3]~input_o\,
	datac => \maquina_pao_fsm|s_currentState.TInit~q\,
	datad => \KEY[0]~input_o\,
	combout => \maquina_pao_fsm|s_currentState~11_combout\);

-- Location: LCCOMB_X114_Y37_N8
\maquina_pao_fsm|s_currentState.Amassar_Init~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina_pao_fsm|s_currentState.Amassar_Init~feeder_combout\ = \maquina_pao_fsm|s_currentState~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maquina_pao_fsm|s_currentState~11_combout\,
	combout => \maquina_pao_fsm|s_currentState.Amassar_Init~feeder_combout\);

-- Location: FF_X114_Y37_N9
\maquina_pao_fsm|s_currentState.Amassar_Init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \maquina_pao_fsm|s_currentState.Amassar_Init~feeder_combout\,
	ena => \clkDivider|pulseOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquina_pao_fsm|s_currentState.Amassar_Init~q\);

-- Location: CLKCTRL_G5
\maquina_pao_fsm|s_currentState.Amassar_Init~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \maquina_pao_fsm|s_currentState.Amassar_Init~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \maquina_pao_fsm|s_currentState.Amassar_Init~clkctrl_outclk\);

-- Location: LCCOMB_X113_Y37_N28
\maquina_pao_fsm|ledr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina_pao_fsm|ledr0~combout\ = (GLOBAL(\maquina_pao_fsm|s_currentState.Amassar_Init~clkctrl_outclk\) & (\maquina_pao_fsm|ledr0~combout\)) # (!GLOBAL(\maquina_pao_fsm|s_currentState.Amassar_Init~clkctrl_outclk\) & 
-- ((\maquina_pao_fsm|s_currentState.TInit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maquina_pao_fsm|ledr0~combout\,
	datac => \maquina_pao_fsm|s_currentState.Amassar_Init~clkctrl_outclk\,
	datad => \maquina_pao_fsm|s_currentState.TInit~q\,
	combout => \maquina_pao_fsm|ledr0~combout\);

-- Location: LCCOMB_X110_Y37_N14
\maquina_pao_fsm|ledg0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina_pao_fsm|ledg0~combout\ = (GLOBAL(\maquina_pao_fsm|s_currentState.Amassar_Init~clkctrl_outclk\) & ((\maquina_pao_fsm|ledg0~combout\))) # (!GLOBAL(\maquina_pao_fsm|s_currentState.Amassar_Init~clkctrl_outclk\) & 
-- (\maquina_pao_fsm|s_currentState.Amassar~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maquina_pao_fsm|s_currentState.Amassar~q\,
	datac => \maquina_pao_fsm|ledg0~combout\,
	datad => \maquina_pao_fsm|s_currentState.Amassar_Init~clkctrl_outclk\,
	combout => \maquina_pao_fsm|ledg0~combout\);

-- Location: LCCOMB_X112_Y37_N24
\maquina_pao_fsm|ledg1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina_pao_fsm|ledg1~0_combout\ = (\maquina_pao_fsm|s_currentState.Levedura_Init~q\) # (\maquina_pao_fsm|s_currentState.Levedura~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maquina_pao_fsm|s_currentState.Levedura_Init~q\,
	datad => \maquina_pao_fsm|s_currentState.Levedura~q\,
	combout => \maquina_pao_fsm|ledg1~0_combout\);

-- Location: LCCOMB_X112_Y37_N8
\maquina_pao_fsm|ledg1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina_pao_fsm|ledg1~combout\ = (GLOBAL(\maquina_pao_fsm|s_currentState.Amassar_Init~clkctrl_outclk\) & (\maquina_pao_fsm|ledg1~combout\)) # (!GLOBAL(\maquina_pao_fsm|s_currentState.Amassar_Init~clkctrl_outclk\) & ((\maquina_pao_fsm|ledg1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maquina_pao_fsm|ledg1~combout\,
	datac => \maquina_pao_fsm|s_currentState.Amassar_Init~clkctrl_outclk\,
	datad => \maquina_pao_fsm|ledg1~0_combout\,
	combout => \maquina_pao_fsm|ledg1~combout\);

-- Location: LCCOMB_X112_Y37_N20
\maquina_pao_fsm|ledg2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina_pao_fsm|ledg2~0_combout\ = (\maquina_pao_fsm|s_currentState.Cozedura_Init~q\) # (\maquina_pao_fsm|s_currentState.Cozedura~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maquina_pao_fsm|s_currentState.Cozedura_Init~q\,
	datad => \maquina_pao_fsm|s_currentState.Cozedura~q\,
	combout => \maquina_pao_fsm|ledg2~0_combout\);

-- Location: LCCOMB_X112_Y37_N14
\maquina_pao_fsm|ledg2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina_pao_fsm|ledg2~combout\ = (GLOBAL(\maquina_pao_fsm|s_currentState.Amassar_Init~clkctrl_outclk\) & (\maquina_pao_fsm|ledg2~combout\)) # (!GLOBAL(\maquina_pao_fsm|s_currentState.Amassar_Init~clkctrl_outclk\) & ((\maquina_pao_fsm|ledg2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maquina_pao_fsm|ledg2~combout\,
	datac => \maquina_pao_fsm|s_currentState.Amassar_Init~clkctrl_outclk\,
	datad => \maquina_pao_fsm|ledg2~0_combout\,
	combout => \maquina_pao_fsm|ledg2~combout\);

-- Location: LCCOMB_X108_Y34_N12
\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \timeraux_fsm|s_counter\(5) $ (GND)
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(!\timeraux_fsm|s_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timeraux_fsm|s_counter\(5),
	datad => VCC,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X108_Y34_N14
\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\timeraux_fsm|s_counter\(6) & (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)) # (!\timeraux_fsm|s_counter\(6) & 
-- (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC))
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((\timeraux_fsm|s_counter\(6) & !\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|s_counter\(6),
	datad => VCC,
	cin => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X108_Y34_N16
\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\timeraux_fsm|s_counter\(7) & (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC)) # (!\timeraux_fsm|s_counter\(7) & 
-- (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND)))
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\timeraux_fsm|s_counter\(7) & !\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timeraux_fsm|s_counter\(7),
	datad => VCC,
	cin => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X108_Y34_N18
\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X108_Y37_N30
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[27]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\ = (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\);

-- Location: LCCOMB_X108_Y37_N0
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\ = (!\timeraux_fsm|s_counter\(7) & \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|s_counter\(7),
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\);

-- Location: LCCOMB_X108_Y37_N22
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[26]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\ = (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\);

-- Location: LCCOMB_X108_Y37_N4
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[26]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\timeraux_fsm|s_counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \timeraux_fsm|s_counter\(6),
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\);

-- Location: LCCOMB_X108_Y37_N8
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[25]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\ = (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\);

-- Location: LCCOMB_X108_Y37_N28
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[25]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\timeraux_fsm|s_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \timeraux_fsm|s_counter\(5),
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\);

-- Location: LCCOMB_X108_Y37_N26
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[24]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\timeraux_fsm|s_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \timeraux_fsm|s_counter\(4),
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\);

-- Location: LCCOMB_X108_Y37_N20
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[24]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\ = (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\timeraux_fsm|s_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \timeraux_fsm|s_counter\(4),
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\);

-- Location: LCCOMB_X108_Y37_N10
\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\) # (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\)))
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\) # (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\,
	datad => VCC,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X108_Y37_N12
\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\) # 
-- (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\)))) # (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\ & 
-- (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\)))
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\ & (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\ & 
-- !\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\,
	datad => VCC,
	cin => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X108_Y37_N14
\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\)))) # (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\)))))
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\,
	datad => VCC,
	cin => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X108_Y37_N16
\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\) # 
-- (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\)))) # (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\ & 
-- (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\)))
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\ & (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\ & 
-- !\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\,
	datad => VCC,
	cin => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X108_Y37_N18
\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X108_Y37_N2
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[36]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[36]~99_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((!\timeraux_fsm|s_counter\(7)))) # (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \timeraux_fsm|s_counter\(7),
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[36]~99_combout\);

-- Location: LCCOMB_X109_Y37_N24
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[36]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\);

-- Location: LCCOMB_X109_Y37_N6
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[35]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\);

-- Location: LCCOMB_X108_Y37_N24
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[35]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[35]~100_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((!\timeraux_fsm|s_counter\(6)))) # (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \timeraux_fsm|s_counter\(6),
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[35]~100_combout\);

-- Location: LCCOMB_X109_Y37_N4
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[34]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\ = (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\);

-- Location: LCCOMB_X108_Y37_N6
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[34]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[34]~101_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((!\timeraux_fsm|s_counter\(5)))) # (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \timeraux_fsm|s_counter\(5),
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[34]~101_combout\);

-- Location: LCCOMB_X109_Y38_N30
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ = (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X109_Y38_N28
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[33]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\timeraux_fsm|s_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \timeraux_fsm|s_counter\(4),
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\);

-- Location: LCCOMB_X109_Y37_N10
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\timeraux_fsm|s_counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \timeraux_fsm|s_counter\(3),
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X109_Y37_N8
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[32]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\ = (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\timeraux_fsm|s_counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \timeraux_fsm|s_counter\(3),
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\);

-- Location: LCCOMB_X109_Y37_N12
\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\) # (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\)))
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\) # (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\,
	datad => VCC,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X109_Y37_N14
\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\) # 
-- (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\)))) # (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ & 
-- (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\)))
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ & (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\ & 
-- !\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\,
	datad => VCC,
	cin => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X109_Y37_N16
\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\) # 
-- (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[34]~101_combout\)))) # (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\) # 
-- (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[34]~101_combout\)))))
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\) # 
-- (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[34]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[34]~101_combout\,
	datad => VCC,
	cin => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X109_Y37_N18
\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\) # 
-- (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[35]~100_combout\)))) # (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\ & 
-- (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[35]~100_combout\)))
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\ & (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[35]~100_combout\ & 
-- !\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[35]~100_combout\,
	datad => VCC,
	cin => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X109_Y37_N20
\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[36]~99_combout\) # 
-- (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\))))) # (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[36]~99_combout\) # 
-- ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\) # (GND))))
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[36]~99_combout\) # ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\) # 
-- (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[36]~99_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\,
	datad => VCC,
	cin => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X109_Y37_N22
\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X109_Y37_N0
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[45]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[45]~92_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[36]~99_combout\) # 
-- ((\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[36]~99_combout\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[45]~92_combout\);

-- Location: LCCOMB_X109_Y40_N0
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[45]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\);

-- Location: LCCOMB_X109_Y37_N30
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[44]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\ = (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\);

-- Location: LCCOMB_X109_Y37_N2
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[44]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[44]~93_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[35]~100_combout\) # 
-- ((\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[35]~100_combout\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[44]~93_combout\);

-- Location: LCCOMB_X109_Y37_N28
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[43]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[43]~94_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[34]~101_combout\) # 
-- ((!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[34]~101_combout\,
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[43]~94_combout\);

-- Location: LCCOMB_X109_Y40_N2
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[43]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\);

-- Location: LCCOMB_X109_Y38_N0
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[42]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\ = (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\);

-- Location: LCCOMB_X109_Y38_N12
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[42]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[42]~102_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((!\timeraux_fsm|s_counter\(4)))) # (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \timeraux_fsm|s_counter\(4),
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[42]~102_combout\);

-- Location: LCCOMB_X109_Y38_N26
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[41]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\ = (!\timeraux_fsm|s_counter\(3) & \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|s_counter\(3),
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\);

-- Location: LCCOMB_X109_Y38_N20
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[41]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\ = (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\);

-- Location: LCCOMB_X109_Y38_N8
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[40]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\ = (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & !\timeraux_fsm|s_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \timeraux_fsm|s_counter\(2),
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\);

-- Location: LCCOMB_X109_Y38_N2
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[40]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & !\timeraux_fsm|s_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \timeraux_fsm|s_counter\(2),
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\);

-- Location: LCCOMB_X109_Y40_N18
\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\) # (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\)))
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\) # (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\,
	datad => VCC,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X109_Y40_N20
\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\) # 
-- (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\)))) # (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\ & 
-- (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\)))
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\ & (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\ & 
-- !\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\,
	datad => VCC,
	cin => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X109_Y40_N22
\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\) # 
-- (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[42]~102_combout\)))) # (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\) # 
-- (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[42]~102_combout\)))))
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\) # 
-- (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[42]~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[42]~102_combout\,
	datad => VCC,
	cin => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X109_Y40_N24
\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[43]~94_combout\) # 
-- (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\)))) # (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[43]~94_combout\ & 
-- (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\)))
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[43]~94_combout\ & (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\ & 
-- !\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[43]~94_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\,
	datad => VCC,
	cin => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X109_Y40_N26
\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\) # 
-- (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[44]~93_combout\))))) # (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\) # 
-- ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[44]~93_combout\) # (GND))))
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\) # ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[44]~93_combout\) # 
-- (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[44]~93_combout\,
	datad => VCC,
	cin => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X109_Y40_N28
\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[45]~92_combout\) # 
-- (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\)))) # (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[45]~92_combout\ & 
-- (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\)))
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[45]~92_combout\ & (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\ & 
-- !\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[45]~92_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\,
	datad => VCC,
	cin => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X109_Y40_N30
\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X109_Y38_N10
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[51]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[51]~98_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[42]~102_combout\) # 
-- ((!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[42]~102_combout\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[51]~98_combout\);

-- Location: LCCOMB_X109_Y38_N6
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[51]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\ = (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\);

-- Location: LCCOMB_X109_Y38_N22
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[50]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[50]~103_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (!\timeraux_fsm|s_counter\(3))) # (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \timeraux_fsm|s_counter\(3),
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[50]~103_combout\);

-- Location: LCCOMB_X110_Y40_N2
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[50]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\ = (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\);

-- Location: LCCOMB_X110_Y37_N4
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[49]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\ = (!\timeraux_fsm|s_counter\(2) & \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timeraux_fsm|s_counter\(2),
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\);

-- Location: LCCOMB_X109_Y40_N4
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[49]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\ = (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\);

-- Location: LCCOMB_X110_Y37_N2
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[48]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\ = (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & !\timeraux_fsm|s_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \timeraux_fsm|s_counter\(1),
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\);

-- Location: LCCOMB_X110_Y37_N8
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[48]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & !\timeraux_fsm|s_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \timeraux_fsm|s_counter\(1),
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\);

-- Location: LCCOMB_X110_Y40_N4
\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\) # (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\)))
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\) # (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\,
	datad => VCC,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X110_Y40_N6
\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\) # 
-- (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\)))) # (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\ & 
-- (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\)))
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\ & (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\ & 
-- !\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\,
	datad => VCC,
	cin => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X110_Y40_N8
\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[50]~103_combout\) # 
-- (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\)))) # (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[50]~103_combout\) # 
-- (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\)))))
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[50]~103_combout\) # 
-- (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[50]~103_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\,
	datad => VCC,
	cin => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X110_Y40_N10
\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[51]~98_combout\) # 
-- (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\)))) # (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[51]~98_combout\ & 
-- (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\)))
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ = CARRY((!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[51]~98_combout\ & (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\ & 
-- !\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[51]~98_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\,
	datad => VCC,
	cin => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	cout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\);

-- Location: LCCOMB_X109_Y40_N12
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[54]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\ = (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\);

-- Location: LCCOMB_X109_Y40_N10
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[54]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[54]~95_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[45]~92_combout\) # 
-- ((\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[45]~92_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[54]~95_combout\);

-- Location: LCCOMB_X109_Y37_N26
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[53]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[53]~96_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[44]~93_combout\) # 
-- ((\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[44]~93_combout\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[53]~96_combout\);

-- Location: LCCOMB_X110_Y40_N0
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[53]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\);

-- Location: LCCOMB_X109_Y40_N16
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[52]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[52]~97_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[43]~94_combout\) # 
-- ((\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[43]~94_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[52]~97_combout\);

-- Location: LCCOMB_X109_Y40_N6
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[52]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\ = (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\);

-- Location: LCCOMB_X110_Y40_N12
\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[52]~97_combout\) # 
-- (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\))))) # (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[52]~97_combout\) # 
-- ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\) # (GND))))
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ = CARRY((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[52]~97_combout\) # ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\) # 
-- (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[52]~97_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\,
	datad => VCC,
	cin => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	cout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\);

-- Location: LCCOMB_X110_Y40_N14
\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & (((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[53]~96_combout\) # 
-- (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\)))) # (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[53]~96_combout\ & 
-- (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\)))
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ = CARRY((!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[53]~96_combout\ & (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\ & 
-- !\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[53]~96_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\,
	datad => VCC,
	cin => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	cout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\);

-- Location: LCCOMB_X110_Y40_N16
\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ & ((((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\) # 
-- (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[54]~95_combout\))))) # (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ & ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\) # 
-- ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[54]~95_combout\) # (GND))))
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ = CARRY((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\) # ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[54]~95_combout\) # 
-- (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[54]~95_combout\,
	datad => VCC,
	cin => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	cout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\);

-- Location: LCCOMB_X110_Y40_N24
\displayR|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayR|Mux1~1_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\) # ((\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\) # 
-- ((\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\) # (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \displayR|Mux1~1_combout\);

-- Location: LCCOMB_X110_Y40_N18
\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X109_Y40_N8
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[61]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[61]~91_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[43]~94_combout\) # 
-- ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\)))) # (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[43]~94_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[61]~91_combout\);

-- Location: LCCOMB_X109_Y38_N24
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[60]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[60]~90_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[42]~102_combout\) # 
-- ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\)))) # (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[42]~102_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\,
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[60]~90_combout\);

-- Location: LCCOMB_X109_Y40_N14
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[63]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[63]~89_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[45]~92_combout\) # 
-- ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\)))) # (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[45]~92_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[63]~89_combout\);

-- Location: LCCOMB_X110_Y40_N30
\displayR|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayR|Mux1~0_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[61]~91_combout\) # ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[60]~90_combout\) # ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[53]~96_combout\) # 
-- (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[63]~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[61]~91_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[60]~90_combout\,
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[53]~96_combout\,
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[63]~89_combout\,
	combout => \displayR|Mux1~0_combout\);

-- Location: LCCOMB_X110_Y40_N26
\displayR|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayR|Mux1~2_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((!\displayR|Mux1~0_combout\ & !\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\)))) # 
-- (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (!\displayR|Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayR|Mux1~1_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \displayR|Mux1~0_combout\,
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\,
	combout => \displayR|Mux1~2_combout\);

-- Location: LCCOMB_X110_Y40_N28
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[59]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[50]~103_combout\) # 
-- ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\)))) # (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[50]~103_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\);

-- Location: LCCOMB_X110_Y40_N22
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[58]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\) # 
-- ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\)))) # (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\,
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\);

-- Location: LCCOMB_X110_Y40_N20
\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[57]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (!\timeraux_fsm|s_counter\(1))) # 
-- (!\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timeraux_fsm|s_counter\(1),
	datac => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\);

-- Location: LCCOMB_X110_Y51_N20
\displayR|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayR|Mux6~0_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & (!\timeraux_fsm|s_counter\(0) & (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ $ 
-- (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\)))) # (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & 
-- (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ $ (!\timeraux_fsm|s_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \timeraux_fsm|s_counter\(0),
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	combout => \displayR|Mux6~0_combout\);

-- Location: LCCOMB_X110_Y51_N18
\displayR|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayR|Mux6~1_combout\ = (\displayR|Mux6~0_combout\) # (!\displayR|Mux1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \displayR|Mux1~2_combout\,
	datad => \displayR|Mux6~0_combout\,
	combout => \displayR|Mux6~1_combout\);

-- Location: LCCOMB_X110_Y51_N8
\displayR|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayR|Mux5~0_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & ((\timeraux_fsm|s_counter\(0) & (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\)) # (!\timeraux_fsm|s_counter\(0) & 
-- ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\))))) # (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & (\timeraux_fsm|s_counter\(0) 
-- $ (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \timeraux_fsm|s_counter\(0),
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	combout => \displayR|Mux5~0_combout\);

-- Location: LCCOMB_X110_Y51_N10
\displayR|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayR|Mux5~1_combout\ = (\displayR|Mux5~0_combout\ & \displayR|Mux1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayR|Mux5~0_combout\,
	datac => \displayR|Mux1~2_combout\,
	combout => \displayR|Mux5~1_combout\);

-- Location: LCCOMB_X110_Y51_N4
\displayR|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayR|Mux4~0_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & ((\timeraux_fsm|s_counter\(0)) # 
-- (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\)))) # (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & (\timeraux_fsm|s_counter\(0) & 
-- \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \timeraux_fsm|s_counter\(0),
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	combout => \displayR|Mux4~0_combout\);

-- Location: LCCOMB_X110_Y51_N26
\displayR|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayR|Mux4~1_combout\ = (\displayR|Mux4~0_combout\ & \displayR|Mux1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayR|Mux4~0_combout\,
	datac => \displayR|Mux1~2_combout\,
	combout => \displayR|Mux4~1_combout\);

-- Location: LCCOMB_X110_Y51_N16
\displayR|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayR|Mux3~0_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & ((!\timeraux_fsm|s_counter\(0)))) # 
-- (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & \timeraux_fsm|s_counter\(0))))) # (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & 
-- (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ $ (!\timeraux_fsm|s_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \timeraux_fsm|s_counter\(0),
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	combout => \displayR|Mux3~0_combout\);

-- Location: LCCOMB_X110_Y51_N22
\displayR|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayR|Mux3~1_combout\ = (\displayR|Mux1~2_combout\ & \displayR|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \displayR|Mux1~2_combout\,
	datad => \displayR|Mux3~0_combout\,
	combout => \displayR|Mux3~1_combout\);

-- Location: LCCOMB_X110_Y51_N12
\displayR|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayR|Mux2~0_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & ((!\timeraux_fsm|s_counter\(0))))) # 
-- (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\)) # 
-- (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & ((!\timeraux_fsm|s_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \timeraux_fsm|s_counter\(0),
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	combout => \displayR|Mux2~0_combout\);

-- Location: LCCOMB_X110_Y51_N6
\displayR|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayR|Mux2~1_combout\ = (\displayR|Mux1~2_combout\ & \displayR|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \displayR|Mux1~2_combout\,
	datad => \displayR|Mux2~0_combout\,
	combout => \displayR|Mux2~1_combout\);

-- Location: LCCOMB_X110_Y51_N24
\displayR|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayR|Mux1~3_combout\ = (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & (!\timeraux_fsm|s_counter\(0) & (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ $ 
-- (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\)))) # (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & (!\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & 
-- ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\) # (!\timeraux_fsm|s_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \timeraux_fsm|s_counter\(0),
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	combout => \displayR|Mux1~3_combout\);

-- Location: LCCOMB_X110_Y51_N14
\displayR|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayR|Mux1~4_combout\ = (\displayR|Mux1~2_combout\ & \displayR|Mux1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \displayR|Mux1~2_combout\,
	datad => \displayR|Mux1~3_combout\,
	combout => \displayR|Mux1~4_combout\);

-- Location: LCCOMB_X110_Y51_N28
\displayR|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayR|Mux0~0_combout\ = (\timeraux_fsm|s_counter\(0) & ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\) # (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ $ 
-- (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\)))) # (!\timeraux_fsm|s_counter\(0) & ((\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\) # (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ 
-- $ (\bin2bcd|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \timeraux_fsm|s_counter\(0),
	datad => \bin2bcd|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	combout => \displayR|Mux0~0_combout\);

-- Location: LCCOMB_X110_Y51_N2
\displayR|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayR|Mux0~1_combout\ = (!\displayR|Mux0~0_combout\) # (!\displayR|Mux1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \displayR|Mux1~2_combout\,
	datad => \displayR|Mux0~0_combout\,
	combout => \displayR|Mux0~1_combout\);

-- Location: LCCOMB_X108_Y34_N2
\bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \timeraux_fsm|s_counter\(5) $ (GND)
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(!\timeraux_fsm|s_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timeraux_fsm|s_counter\(5),
	datad => VCC,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X108_Y34_N4
\bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\timeraux_fsm|s_counter\(6) & (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)) # (!\timeraux_fsm|s_counter\(6) & 
-- (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC))
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((\timeraux_fsm|s_counter\(6) & !\bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|s_counter\(6),
	datad => VCC,
	cin => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X108_Y34_N6
\bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\timeraux_fsm|s_counter\(7) & (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC)) # (!\timeraux_fsm|s_counter\(7) & 
-- (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND)))
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\timeraux_fsm|s_counter\(7) & !\bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timeraux_fsm|s_counter\(7),
	datad => VCC,
	cin => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X108_Y34_N8
\bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X108_Y34_N20
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[27]~54_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\timeraux_fsm|s_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \timeraux_fsm|s_counter\(7),
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[27]~54_combout\);

-- Location: LCCOMB_X108_Y33_N28
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[27]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[27]~55_combout\ = (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[27]~55_combout\);

-- Location: LCCOMB_X108_Y33_N30
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[26]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[26]~56_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\timeraux_fsm|s_counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \timeraux_fsm|s_counter\(6),
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[26]~56_combout\);

-- Location: LCCOMB_X108_Y33_N8
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[26]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[26]~57_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[26]~57_combout\);

-- Location: LCCOMB_X108_Y33_N10
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[25]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[25]~58_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\timeraux_fsm|s_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \timeraux_fsm|s_counter\(5),
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[25]~58_combout\);

-- Location: LCCOMB_X108_Y33_N0
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[25]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[25]~59_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[25]~59_combout\);

-- Location: LCCOMB_X108_Y33_N26
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[24]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[24]~60_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\timeraux_fsm|s_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \timeraux_fsm|s_counter\(4),
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[24]~60_combout\);

-- Location: LCCOMB_X108_Y33_N4
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[24]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[24]~61_combout\ = (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\timeraux_fsm|s_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \timeraux_fsm|s_counter\(4),
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[24]~61_combout\);

-- Location: LCCOMB_X108_Y33_N14
\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[24]~60_combout\) # (\bin2bcd|Div0|auto_generated|divider|divider|StageOut[24]~61_combout\)))
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[24]~60_combout\) # (\bin2bcd|Div0|auto_generated|divider|divider|StageOut[24]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[24]~60_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[24]~61_combout\,
	datad => VCC,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X108_Y33_N16
\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[25]~58_combout\) # 
-- (\bin2bcd|Div0|auto_generated|divider|divider|StageOut[25]~59_combout\)))) # (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\bin2bcd|Div0|auto_generated|divider|divider|StageOut[25]~58_combout\ & 
-- (!\bin2bcd|Div0|auto_generated|divider|divider|StageOut[25]~59_combout\)))
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\bin2bcd|Div0|auto_generated|divider|divider|StageOut[25]~58_combout\ & (!\bin2bcd|Div0|auto_generated|divider|divider|StageOut[25]~59_combout\ & 
-- !\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[25]~58_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[25]~59_combout\,
	datad => VCC,
	cin => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X108_Y33_N18
\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[26]~56_combout\) # 
-- (\bin2bcd|Div0|auto_generated|divider|divider|StageOut[26]~57_combout\)))) # (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[26]~56_combout\) # 
-- (\bin2bcd|Div0|auto_generated|divider|divider|StageOut[26]~57_combout\)))))
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[26]~56_combout\) # 
-- (\bin2bcd|Div0|auto_generated|divider|divider|StageOut[26]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[26]~56_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[26]~57_combout\,
	datad => VCC,
	cin => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X108_Y33_N20
\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[27]~54_combout\) # 
-- (\bin2bcd|Div0|auto_generated|divider|divider|StageOut[27]~55_combout\)))) # (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\bin2bcd|Div0|auto_generated|divider|divider|StageOut[27]~54_combout\ & 
-- (!\bin2bcd|Div0|auto_generated|divider|divider|StageOut[27]~55_combout\)))
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\bin2bcd|Div0|auto_generated|divider|divider|StageOut[27]~54_combout\ & (!\bin2bcd|Div0|auto_generated|divider|divider|StageOut[27]~55_combout\ & 
-- !\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[27]~54_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[27]~55_combout\,
	datad => VCC,
	cin => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X108_Y33_N22
\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X109_Y33_N4
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[36]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[36]~62_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[36]~62_combout\);

-- Location: LCCOMB_X108_Y33_N6
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[36]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[36]~93_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((!\timeraux_fsm|s_counter\(7)))) # (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \timeraux_fsm|s_counter\(7),
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[36]~93_combout\);

-- Location: LCCOMB_X109_Y33_N26
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[35]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[35]~63_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[35]~63_combout\);

-- Location: LCCOMB_X108_Y33_N24
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[35]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[35]~94_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((!\timeraux_fsm|s_counter\(6)))) # (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \timeraux_fsm|s_counter\(6),
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[35]~94_combout\);

-- Location: LCCOMB_X108_Y33_N2
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[34]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[34]~95_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((!\timeraux_fsm|s_counter\(5)))) # (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \timeraux_fsm|s_counter\(5),
	datad => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[34]~95_combout\);

-- Location: LCCOMB_X109_Y33_N0
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[34]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[34]~64_combout\ = (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[34]~64_combout\);

-- Location: LCCOMB_X108_Y33_N12
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[33]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[33]~65_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\timeraux_fsm|s_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \timeraux_fsm|s_counter\(4),
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[33]~65_combout\);

-- Location: LCCOMB_X109_Y33_N2
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[33]~66_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X109_Y33_N22
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[32]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[32]~68_combout\ = (!\timeraux_fsm|s_counter\(3) & !\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timeraux_fsm|s_counter\(3),
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[32]~68_combout\);

-- Location: LCCOMB_X109_Y33_N8
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\ = (!\timeraux_fsm|s_counter\(3) & \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timeraux_fsm|s_counter\(3),
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X109_Y33_N10
\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[32]~68_combout\) # (\bin2bcd|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\)))
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[32]~68_combout\) # (\bin2bcd|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[32]~68_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X109_Y33_N12
\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[33]~65_combout\) # 
-- (\bin2bcd|Div0|auto_generated|divider|divider|StageOut[33]~66_combout\)))) # (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\bin2bcd|Div0|auto_generated|divider|divider|StageOut[33]~65_combout\ & 
-- (!\bin2bcd|Div0|auto_generated|divider|divider|StageOut[33]~66_combout\)))
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\bin2bcd|Div0|auto_generated|divider|divider|StageOut[33]~65_combout\ & (!\bin2bcd|Div0|auto_generated|divider|divider|StageOut[33]~66_combout\ & 
-- !\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[33]~65_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datad => VCC,
	cin => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X109_Y33_N14
\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[34]~95_combout\) # 
-- (\bin2bcd|Div0|auto_generated|divider|divider|StageOut[34]~64_combout\)))) # (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[34]~95_combout\) # 
-- (\bin2bcd|Div0|auto_generated|divider|divider|StageOut[34]~64_combout\)))))
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[34]~95_combout\) # 
-- (\bin2bcd|Div0|auto_generated|divider|divider|StageOut[34]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[34]~95_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[34]~64_combout\,
	datad => VCC,
	cin => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X109_Y33_N16
\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[35]~63_combout\) # 
-- (\bin2bcd|Div0|auto_generated|divider|divider|StageOut[35]~94_combout\)))) # (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\bin2bcd|Div0|auto_generated|divider|divider|StageOut[35]~63_combout\ & 
-- (!\bin2bcd|Div0|auto_generated|divider|divider|StageOut[35]~94_combout\)))
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\bin2bcd|Div0|auto_generated|divider|divider|StageOut[35]~63_combout\ & (!\bin2bcd|Div0|auto_generated|divider|divider|StageOut[35]~94_combout\ & 
-- !\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[35]~63_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[35]~94_combout\,
	datad => VCC,
	cin => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X109_Y33_N18
\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[36]~62_combout\) # 
-- (\bin2bcd|Div0|auto_generated|divider|divider|StageOut[36]~93_combout\))))) # (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[36]~62_combout\) # 
-- ((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[36]~93_combout\) # (GND))))
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[36]~62_combout\) # ((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[36]~93_combout\) # 
-- (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[36]~62_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[36]~93_combout\,
	datad => VCC,
	cin => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X109_Y33_N20
\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X110_Y33_N24
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[45]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[45]~69_combout\ = (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[45]~69_combout\);

-- Location: LCCOMB_X109_Y33_N24
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[45]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[45]~86_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[36]~93_combout\) # 
-- ((!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datac => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[36]~93_combout\,
	datad => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[45]~86_combout\);

-- Location: LCCOMB_X110_Y33_N6
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[44]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[44]~70_combout\ = (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[44]~70_combout\);

-- Location: LCCOMB_X109_Y33_N30
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[44]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[44]~87_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[35]~94_combout\) # 
-- ((\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[35]~94_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[44]~87_combout\);

-- Location: LCCOMB_X110_Y33_N28
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[43]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[43]~71_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[43]~71_combout\);

-- Location: LCCOMB_X109_Y33_N28
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[43]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[43]~88_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[34]~95_combout\) # 
-- ((\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[34]~95_combout\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[43]~88_combout\);

-- Location: LCCOMB_X110_Y33_N2
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[42]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[42]~72_combout\ = (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[42]~72_combout\);

-- Location: LCCOMB_X109_Y33_N6
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[42]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[42]~96_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\timeraux_fsm|s_counter\(4))) # (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \timeraux_fsm|s_counter\(4),
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[42]~96_combout\);

-- Location: LCCOMB_X111_Y33_N6
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[41]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[41]~74_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[41]~74_combout\);

-- Location: LCCOMB_X111_Y33_N0
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[41]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[41]~73_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & !\timeraux_fsm|s_counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \timeraux_fsm|s_counter\(3),
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[41]~73_combout\);

-- Location: LCCOMB_X110_Y33_N30
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[40]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[40]~76_combout\ = (!\timeraux_fsm|s_counter\(2) & !\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timeraux_fsm|s_counter\(2),
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[40]~76_combout\);

-- Location: LCCOMB_X112_Y33_N4
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[40]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[40]~75_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & !\timeraux_fsm|s_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \timeraux_fsm|s_counter\(2),
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[40]~75_combout\);

-- Location: LCCOMB_X110_Y33_N8
\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[40]~76_combout\) # (\bin2bcd|Div0|auto_generated|divider|divider|StageOut[40]~75_combout\)))
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[40]~76_combout\) # (\bin2bcd|Div0|auto_generated|divider|divider|StageOut[40]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[40]~76_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[40]~75_combout\,
	datad => VCC,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X110_Y33_N10
\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[41]~74_combout\) # 
-- (\bin2bcd|Div0|auto_generated|divider|divider|StageOut[41]~73_combout\)))) # (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\bin2bcd|Div0|auto_generated|divider|divider|StageOut[41]~74_combout\ & 
-- (!\bin2bcd|Div0|auto_generated|divider|divider|StageOut[41]~73_combout\)))
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\bin2bcd|Div0|auto_generated|divider|divider|StageOut[41]~74_combout\ & (!\bin2bcd|Div0|auto_generated|divider|divider|StageOut[41]~73_combout\ & 
-- !\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[41]~74_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[41]~73_combout\,
	datad => VCC,
	cin => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X110_Y33_N12
\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[42]~72_combout\) # 
-- (\bin2bcd|Div0|auto_generated|divider|divider|StageOut[42]~96_combout\)))) # (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[42]~72_combout\) # 
-- (\bin2bcd|Div0|auto_generated|divider|divider|StageOut[42]~96_combout\)))))
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[42]~72_combout\) # 
-- (\bin2bcd|Div0|auto_generated|divider|divider|StageOut[42]~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[42]~72_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[42]~96_combout\,
	datad => VCC,
	cin => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X110_Y33_N14
\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[43]~71_combout\) # 
-- (\bin2bcd|Div0|auto_generated|divider|divider|StageOut[43]~88_combout\)))) # (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\bin2bcd|Div0|auto_generated|divider|divider|StageOut[43]~71_combout\ & 
-- (!\bin2bcd|Div0|auto_generated|divider|divider|StageOut[43]~88_combout\)))
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\bin2bcd|Div0|auto_generated|divider|divider|StageOut[43]~71_combout\ & (!\bin2bcd|Div0|auto_generated|divider|divider|StageOut[43]~88_combout\ & 
-- !\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[43]~71_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[43]~88_combout\,
	datad => VCC,
	cin => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X110_Y33_N16
\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[44]~70_combout\) # 
-- (\bin2bcd|Div0|auto_generated|divider|divider|StageOut[44]~87_combout\))))) # (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[44]~70_combout\) # 
-- ((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[44]~87_combout\) # (GND))))
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[44]~70_combout\) # ((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[44]~87_combout\) # 
-- (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[44]~70_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[44]~87_combout\,
	datad => VCC,
	cin => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X110_Y33_N18
\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[45]~69_combout\) # 
-- (\bin2bcd|Div0|auto_generated|divider|divider|StageOut[45]~86_combout\)))) # (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\bin2bcd|Div0|auto_generated|divider|divider|StageOut[45]~69_combout\ & 
-- (!\bin2bcd|Div0|auto_generated|divider|divider|StageOut[45]~86_combout\)))
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\bin2bcd|Div0|auto_generated|divider|divider|StageOut[45]~69_combout\ & (!\bin2bcd|Div0|auto_generated|divider|divider|StageOut[45]~86_combout\ & 
-- !\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[45]~69_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[45]~86_combout\,
	datad => VCC,
	cin => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X110_Y33_N20
\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X110_Y33_N0
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[54]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[54]~89_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[45]~86_combout\) # 
-- ((\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[45]~86_combout\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[54]~89_combout\);

-- Location: LCCOMB_X111_Y33_N4
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[54]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[54]~77_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[54]~77_combout\);

-- Location: LCCOMB_X111_Y33_N10
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[53]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[53]~78_combout\ = (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[53]~78_combout\);

-- Location: LCCOMB_X110_Y33_N22
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[53]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[53]~90_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[44]~87_combout\) # 
-- ((!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[44]~87_combout\,
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[53]~90_combout\);

-- Location: LCCOMB_X112_Y33_N2
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[52]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[52]~79_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[52]~79_combout\);

-- Location: LCCOMB_X110_Y33_N4
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[52]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[52]~91_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[43]~88_combout\) # 
-- ((\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[43]~88_combout\,
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[52]~91_combout\);

-- Location: LCCOMB_X110_Y33_N26
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[51]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[51]~92_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[42]~96_combout\) # 
-- ((\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[42]~96_combout\,
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[51]~92_combout\);

-- Location: LCCOMB_X111_Y33_N8
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[51]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[51]~80_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[51]~80_combout\);

-- Location: LCCOMB_X111_Y33_N30
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[50]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[50]~97_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((!\timeraux_fsm|s_counter\(3)))) # (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \timeraux_fsm|s_counter\(3),
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[50]~97_combout\);

-- Location: LCCOMB_X111_Y33_N2
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[50]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[50]~81_combout\ = (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[50]~81_combout\);

-- Location: LCCOMB_X111_Y33_N12
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[49]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[49]~83_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[49]~83_combout\);

-- Location: LCCOMB_X112_Y33_N24
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[49]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[49]~82_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & !\timeraux_fsm|s_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \timeraux_fsm|s_counter\(2),
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[49]~82_combout\);

-- Location: LCCOMB_X110_Y37_N12
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[48]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[48]~85_combout\ = (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & !\timeraux_fsm|s_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \timeraux_fsm|s_counter\(1),
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[48]~85_combout\);

-- Location: LCCOMB_X110_Y37_N6
\bin2bcd|Div0|auto_generated|divider|divider|StageOut[48]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|StageOut[48]~84_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & !\timeraux_fsm|s_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \timeraux_fsm|s_counter\(1),
	combout => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[48]~84_combout\);

-- Location: LCCOMB_X111_Y33_N14
\bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[48]~85_combout\) # (\bin2bcd|Div0|auto_generated|divider|divider|StageOut[48]~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[48]~85_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[48]~84_combout\,
	datad => VCC,
	cout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X111_Y33_N16
\bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\bin2bcd|Div0|auto_generated|divider|divider|StageOut[49]~83_combout\ & (!\bin2bcd|Div0|auto_generated|divider|divider|StageOut[49]~82_combout\ & 
-- !\bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[49]~83_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[49]~82_combout\,
	datad => VCC,
	cin => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X111_Y33_N18
\bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[50]~97_combout\) # 
-- (\bin2bcd|Div0|auto_generated|divider|divider|StageOut[50]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[50]~97_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[50]~81_combout\,
	datad => VCC,
	cin => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X111_Y33_N20
\bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\bin2bcd|Div0|auto_generated|divider|divider|StageOut[51]~92_combout\ & (!\bin2bcd|Div0|auto_generated|divider|divider|StageOut[51]~80_combout\ & 
-- !\bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[51]~92_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[51]~80_combout\,
	datad => VCC,
	cin => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X111_Y33_N22
\bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[52]~79_combout\) # ((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[52]~91_combout\) # 
-- (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[52]~79_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[52]~91_combout\,
	datad => VCC,
	cin => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X111_Y33_N24
\bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\bin2bcd|Div0|auto_generated|divider|divider|StageOut[53]~78_combout\ & (!\bin2bcd|Div0|auto_generated|divider|divider|StageOut[53]~90_combout\ & 
-- !\bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[53]~78_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[53]~90_combout\,
	datad => VCC,
	cin => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X111_Y33_N26
\bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[54]~89_combout\) # ((\bin2bcd|Div0|auto_generated|divider|divider|StageOut[54]~77_combout\) # 
-- (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[54]~89_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|StageOut[54]~77_combout\,
	datad => VCC,
	cin => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X111_Y33_N28
\bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X111_Y30_N12
\displayL|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayL|Mux6~0_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)))) # (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ 
-- & (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \displayL|Mux6~0_combout\);

-- Location: LCCOMB_X111_Y30_N6
\displayL|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayL|Mux6~1_combout\ = (\displayL|Mux6~0_combout\) # (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \displayL|Mux6~0_combout\,
	combout => \displayL|Mux6~1_combout\);

-- Location: LCCOMB_X111_Y30_N28
\displayL|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayL|Mux5~0_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ $ (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)))) # (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)) # (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ 
-- & ((!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \displayL|Mux5~0_combout\);

-- Location: LCCOMB_X111_Y30_N14
\displayL|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayL|Mux5~1_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \displayL|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \displayL|Mux5~0_combout\,
	combout => \displayL|Mux5~1_combout\);

-- Location: LCCOMB_X111_Y30_N8
\displayL|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayL|Mux4~0_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))) # (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\) # 
-- (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \displayL|Mux4~0_combout\);

-- Location: LCCOMB_X111_Y30_N30
\displayL|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayL|Mux4~1_combout\ = (\displayL|Mux4~0_combout\ & \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayL|Mux4~0_combout\,
	datad => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \displayL|Mux4~1_combout\);

-- Location: LCCOMB_X111_Y30_N4
\displayL|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayL|Mux3~0_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ $ (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)))) # (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ 
-- & ((\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)) # 
-- (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \displayL|Mux3~0_combout\);

-- Location: LCCOMB_X111_Y30_N22
\displayL|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayL|Mux3~1_combout\ = (\displayL|Mux3~0_combout\ & \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayL|Mux3~0_combout\,
	datad => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \displayL|Mux3~1_combout\);

-- Location: LCCOMB_X111_Y30_N16
\displayL|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayL|Mux2~0_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))) # (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))) # (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ 
-- & !\bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \displayL|Mux2~0_combout\);

-- Location: LCCOMB_X111_Y30_N26
\displayL|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayL|Mux2~1_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \displayL|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \displayL|Mux2~0_combout\,
	combout => \displayL|Mux2~1_combout\);

-- Location: LCCOMB_X111_Y30_N20
\displayL|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayL|Mux1~0_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\) # (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)))) # 
-- (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ 
-- (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \displayL|Mux1~0_combout\);

-- Location: LCCOMB_X111_Y30_N10
\displayL|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayL|Mux1~1_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \displayL|Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \displayL|Mux1~0_combout\,
	combout => \displayL|Mux1~1_combout\);

-- Location: LCCOMB_X111_Y30_N24
\displayL|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayL|Mux0~0_combout\ = (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ $ 
-- (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))) # (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ 
-- & ((\bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ $ (\bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)) # 
-- (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \displayL|Mux0~0_combout\);

-- Location: LCCOMB_X111_Y30_N18
\displayL|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayL|Mux0~1_combout\ = (!\displayL|Mux0~0_combout\) # (!\bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \displayL|Mux0~0_combout\,
	combout => \displayL|Mux0~1_combout\);

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

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

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


