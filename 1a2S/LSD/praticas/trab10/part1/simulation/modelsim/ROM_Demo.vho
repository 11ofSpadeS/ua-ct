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

-- DATE "05/23/2023 13:49:19"

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

ENTITY 	ROM_Demo IS
    PORT (
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(0 DOWNTO 0)
	);
END ROM_Demo;

-- Design Ports Information
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ROM_Demo IS
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
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \inst3|s_divCounter[0]~26_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[18]~63\ : std_logic;
SIGNAL \inst3|s_divCounter[19]~64_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[19]~65\ : std_logic;
SIGNAL \inst3|s_divCounter[20]~66_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[20]~67\ : std_logic;
SIGNAL \inst3|s_divCounter[21]~68_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[21]~69\ : std_logic;
SIGNAL \inst3|s_divCounter[22]~70_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[22]~71\ : std_logic;
SIGNAL \inst3|s_divCounter[23]~72_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[23]~73\ : std_logic;
SIGNAL \inst3|s_divCounter[24]~74_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[24]~75\ : std_logic;
SIGNAL \inst3|s_divCounter[25]~76_combout\ : std_logic;
SIGNAL \inst3|clkOut~4_combout\ : std_logic;
SIGNAL \inst3|LessThan0~4_combout\ : std_logic;
SIGNAL \inst3|LessThan0~5_combout\ : std_logic;
SIGNAL \inst3|clkOut~3_combout\ : std_logic;
SIGNAL \inst3|clkOut~0_combout\ : std_logic;
SIGNAL \inst3|clkOut~1_combout\ : std_logic;
SIGNAL \inst3|LessThan0~0_combout\ : std_logic;
SIGNAL \inst3|LessThan0~1_combout\ : std_logic;
SIGNAL \inst3|LessThan0~6_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[0]~27\ : std_logic;
SIGNAL \inst3|s_divCounter[1]~28_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[1]~29\ : std_logic;
SIGNAL \inst3|s_divCounter[2]~30_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[2]~31\ : std_logic;
SIGNAL \inst3|s_divCounter[3]~32_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[3]~33\ : std_logic;
SIGNAL \inst3|s_divCounter[4]~34_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[4]~35\ : std_logic;
SIGNAL \inst3|s_divCounter[5]~36_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[5]~37\ : std_logic;
SIGNAL \inst3|s_divCounter[6]~38_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[6]~39\ : std_logic;
SIGNAL \inst3|s_divCounter[7]~40_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[7]~41\ : std_logic;
SIGNAL \inst3|s_divCounter[8]~42_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[8]~43\ : std_logic;
SIGNAL \inst3|s_divCounter[9]~44_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[9]~45\ : std_logic;
SIGNAL \inst3|s_divCounter[10]~46_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[10]~47\ : std_logic;
SIGNAL \inst3|s_divCounter[11]~48_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[11]~49\ : std_logic;
SIGNAL \inst3|s_divCounter[12]~50_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[12]~51\ : std_logic;
SIGNAL \inst3|s_divCounter[13]~52_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[13]~53\ : std_logic;
SIGNAL \inst3|s_divCounter[14]~54_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[14]~55\ : std_logic;
SIGNAL \inst3|s_divCounter[15]~56_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[15]~57\ : std_logic;
SIGNAL \inst3|s_divCounter[16]~58_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[16]~59\ : std_logic;
SIGNAL \inst3|s_divCounter[17]~60_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[17]~61\ : std_logic;
SIGNAL \inst3|s_divCounter[18]~62_combout\ : std_logic;
SIGNAL \inst3|LessThan0~2_combout\ : std_logic;
SIGNAL \inst3|LessThan0~3_combout\ : std_logic;
SIGNAL \inst3|clkOut~2_combout\ : std_logic;
SIGNAL \inst3|clkOut~5_combout\ : std_logic;
SIGNAL \inst3|clkOut~6_combout\ : std_logic;
SIGNAL \inst3|clkOut~7_combout\ : std_logic;
SIGNAL \inst3|clkOut~8_combout\ : std_logic;
SIGNAL \inst3|clkOut~9_combout\ : std_logic;
SIGNAL \inst3|clkOut~q\ : std_logic;
SIGNAL \inst3|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst2|s_count~4_combout\ : std_logic;
SIGNAL \inst2|s_count~3_combout\ : std_logic;
SIGNAL \inst2|s_count~2_combout\ : std_logic;
SIGNAL \inst2|s_count~0_combout\ : std_logic;
SIGNAL \inst2|s_count~1_combout\ : std_logic;
SIGNAL \inst3|s_divCounter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst2|s_count\ : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDR <= ww_LEDR;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\inst3|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|clkOut~q\);
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => \inst2|s_count\(3),
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
	i => \inst2|s_count\(2),
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
	i => \inst2|s_count\(1),
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
	i => \inst2|s_count\(0),
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

-- Location: LCCOMB_X54_Y9_N6
\inst3|s_divCounter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[0]~26_combout\ = \inst3|s_divCounter\(0) $ (VCC)
-- \inst3|s_divCounter[0]~27\ = CARRY(\inst3|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(0),
	datad => VCC,
	combout => \inst3|s_divCounter[0]~26_combout\,
	cout => \inst3|s_divCounter[0]~27\);

-- Location: LCCOMB_X54_Y8_N10
\inst3|s_divCounter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[18]~62_combout\ = (\inst3|s_divCounter\(18) & (\inst3|s_divCounter[17]~61\ $ (GND))) # (!\inst3|s_divCounter\(18) & (!\inst3|s_divCounter[17]~61\ & VCC))
-- \inst3|s_divCounter[18]~63\ = CARRY((\inst3|s_divCounter\(18) & !\inst3|s_divCounter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(18),
	datad => VCC,
	cin => \inst3|s_divCounter[17]~61\,
	combout => \inst3|s_divCounter[18]~62_combout\,
	cout => \inst3|s_divCounter[18]~63\);

-- Location: LCCOMB_X54_Y8_N12
\inst3|s_divCounter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[19]~64_combout\ = (\inst3|s_divCounter\(19) & (!\inst3|s_divCounter[18]~63\)) # (!\inst3|s_divCounter\(19) & ((\inst3|s_divCounter[18]~63\) # (GND)))
-- \inst3|s_divCounter[19]~65\ = CARRY((!\inst3|s_divCounter[18]~63\) # (!\inst3|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(19),
	datad => VCC,
	cin => \inst3|s_divCounter[18]~63\,
	combout => \inst3|s_divCounter[19]~64_combout\,
	cout => \inst3|s_divCounter[19]~65\);

-- Location: FF_X54_Y8_N13
\inst3|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[19]~64_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(19));

-- Location: LCCOMB_X54_Y8_N14
\inst3|s_divCounter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[20]~66_combout\ = (\inst3|s_divCounter\(20) & (\inst3|s_divCounter[19]~65\ $ (GND))) # (!\inst3|s_divCounter\(20) & (!\inst3|s_divCounter[19]~65\ & VCC))
-- \inst3|s_divCounter[20]~67\ = CARRY((\inst3|s_divCounter\(20) & !\inst3|s_divCounter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(20),
	datad => VCC,
	cin => \inst3|s_divCounter[19]~65\,
	combout => \inst3|s_divCounter[20]~66_combout\,
	cout => \inst3|s_divCounter[20]~67\);

-- Location: FF_X54_Y8_N15
\inst3|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[20]~66_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(20));

-- Location: LCCOMB_X54_Y8_N16
\inst3|s_divCounter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[21]~68_combout\ = (\inst3|s_divCounter\(21) & (!\inst3|s_divCounter[20]~67\)) # (!\inst3|s_divCounter\(21) & ((\inst3|s_divCounter[20]~67\) # (GND)))
-- \inst3|s_divCounter[21]~69\ = CARRY((!\inst3|s_divCounter[20]~67\) # (!\inst3|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(21),
	datad => VCC,
	cin => \inst3|s_divCounter[20]~67\,
	combout => \inst3|s_divCounter[21]~68_combout\,
	cout => \inst3|s_divCounter[21]~69\);

-- Location: FF_X54_Y8_N17
\inst3|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[21]~68_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(21));

-- Location: LCCOMB_X54_Y8_N18
\inst3|s_divCounter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[22]~70_combout\ = (\inst3|s_divCounter\(22) & (\inst3|s_divCounter[21]~69\ $ (GND))) # (!\inst3|s_divCounter\(22) & (!\inst3|s_divCounter[21]~69\ & VCC))
-- \inst3|s_divCounter[22]~71\ = CARRY((\inst3|s_divCounter\(22) & !\inst3|s_divCounter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(22),
	datad => VCC,
	cin => \inst3|s_divCounter[21]~69\,
	combout => \inst3|s_divCounter[22]~70_combout\,
	cout => \inst3|s_divCounter[22]~71\);

-- Location: FF_X54_Y8_N19
\inst3|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[22]~70_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(22));

-- Location: LCCOMB_X54_Y8_N20
\inst3|s_divCounter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[23]~72_combout\ = (\inst3|s_divCounter\(23) & (!\inst3|s_divCounter[22]~71\)) # (!\inst3|s_divCounter\(23) & ((\inst3|s_divCounter[22]~71\) # (GND)))
-- \inst3|s_divCounter[23]~73\ = CARRY((!\inst3|s_divCounter[22]~71\) # (!\inst3|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(23),
	datad => VCC,
	cin => \inst3|s_divCounter[22]~71\,
	combout => \inst3|s_divCounter[23]~72_combout\,
	cout => \inst3|s_divCounter[23]~73\);

-- Location: FF_X54_Y8_N21
\inst3|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[23]~72_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(23));

-- Location: LCCOMB_X54_Y8_N22
\inst3|s_divCounter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[24]~74_combout\ = (\inst3|s_divCounter\(24) & (\inst3|s_divCounter[23]~73\ $ (GND))) # (!\inst3|s_divCounter\(24) & (!\inst3|s_divCounter[23]~73\ & VCC))
-- \inst3|s_divCounter[24]~75\ = CARRY((\inst3|s_divCounter\(24) & !\inst3|s_divCounter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(24),
	datad => VCC,
	cin => \inst3|s_divCounter[23]~73\,
	combout => \inst3|s_divCounter[24]~74_combout\,
	cout => \inst3|s_divCounter[24]~75\);

-- Location: FF_X54_Y8_N23
\inst3|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[24]~74_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(24));

-- Location: LCCOMB_X54_Y8_N24
\inst3|s_divCounter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[25]~76_combout\ = \inst3|s_divCounter[24]~75\ $ (\inst3|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|s_divCounter\(25),
	cin => \inst3|s_divCounter[24]~75\,
	combout => \inst3|s_divCounter[25]~76_combout\);

-- Location: FF_X54_Y8_N25
\inst3|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[25]~76_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(25));

-- Location: LCCOMB_X54_Y8_N26
\inst3|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~4_combout\ = (\inst3|s_divCounter\(19) & (\inst3|s_divCounter\(22) & (\inst3|s_divCounter\(20) & \inst3|s_divCounter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(19),
	datab => \inst3|s_divCounter\(22),
	datac => \inst3|s_divCounter\(20),
	datad => \inst3|s_divCounter\(21),
	combout => \inst3|clkOut~4_combout\);

-- Location: LCCOMB_X54_Y8_N28
\inst3|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~4_combout\ = ((!\inst3|s_divCounter\(18) & !\inst3|s_divCounter\(17))) # (!\inst3|s_divCounter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(18),
	datac => \inst3|s_divCounter\(17),
	datad => \inst3|s_divCounter\(23),
	combout => \inst3|LessThan0~4_combout\);

-- Location: LCCOMB_X55_Y9_N14
\inst3|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~5_combout\ = ((!\inst3|s_divCounter\(24) & ((\inst3|LessThan0~4_combout\) # (!\inst3|clkOut~4_combout\)))) # (!\inst3|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(24),
	datab => \inst3|s_divCounter\(25),
	datac => \inst3|clkOut~4_combout\,
	datad => \inst3|LessThan0~4_combout\,
	combout => \inst3|LessThan0~5_combout\);

-- Location: LCCOMB_X54_Y9_N4
\inst3|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~3_combout\ = (!\inst3|s_divCounter\(8) & (!\inst3|s_divCounter\(7) & (!\inst3|s_divCounter\(10) & !\inst3|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(8),
	datab => \inst3|s_divCounter\(7),
	datac => \inst3|s_divCounter\(10),
	datad => \inst3|s_divCounter\(9),
	combout => \inst3|clkOut~3_combout\);

-- Location: LCCOMB_X54_Y9_N0
\inst3|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~0_combout\ = (\inst3|s_divCounter\(3) & (\inst3|s_divCounter\(1) & (\inst3|s_divCounter\(0) & \inst3|s_divCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(3),
	datab => \inst3|s_divCounter\(1),
	datac => \inst3|s_divCounter\(0),
	datad => \inst3|s_divCounter\(2),
	combout => \inst3|clkOut~0_combout\);

-- Location: LCCOMB_X54_Y9_N2
\inst3|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~1_combout\ = (\inst3|s_divCounter\(5) & (\inst3|s_divCounter\(4) & \inst3|clkOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(5),
	datac => \inst3|s_divCounter\(4),
	datad => \inst3|clkOut~0_combout\,
	combout => \inst3|clkOut~1_combout\);

-- Location: LCCOMB_X55_Y9_N6
\inst3|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~0_combout\ = (!\inst3|s_divCounter\(18) & (!\inst3|s_divCounter\(11) & (!\inst3|s_divCounter\(16) & !\inst3|s_divCounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(18),
	datab => \inst3|s_divCounter\(11),
	datac => \inst3|s_divCounter\(16),
	datad => \inst3|s_divCounter\(24),
	combout => \inst3|LessThan0~0_combout\);

-- Location: LCCOMB_X55_Y9_N24
\inst3|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~1_combout\ = (\inst3|clkOut~3_combout\ & (\inst3|LessThan0~0_combout\ & ((!\inst3|clkOut~1_combout\) # (!\inst3|s_divCounter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(6),
	datab => \inst3|clkOut~3_combout\,
	datac => \inst3|clkOut~1_combout\,
	datad => \inst3|LessThan0~0_combout\,
	combout => \inst3|LessThan0~1_combout\);

-- Location: LCCOMB_X55_Y9_N28
\inst3|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~6_combout\ = (!\inst3|LessThan0~3_combout\ & (!\inst3|LessThan0~5_combout\ & !\inst3|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan0~3_combout\,
	datac => \inst3|LessThan0~5_combout\,
	datad => \inst3|LessThan0~1_combout\,
	combout => \inst3|LessThan0~6_combout\);

-- Location: FF_X54_Y9_N7
\inst3|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[0]~26_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(0));

-- Location: LCCOMB_X54_Y9_N8
\inst3|s_divCounter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[1]~28_combout\ = (\inst3|s_divCounter\(1) & (!\inst3|s_divCounter[0]~27\)) # (!\inst3|s_divCounter\(1) & ((\inst3|s_divCounter[0]~27\) # (GND)))
-- \inst3|s_divCounter[1]~29\ = CARRY((!\inst3|s_divCounter[0]~27\) # (!\inst3|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(1),
	datad => VCC,
	cin => \inst3|s_divCounter[0]~27\,
	combout => \inst3|s_divCounter[1]~28_combout\,
	cout => \inst3|s_divCounter[1]~29\);

-- Location: FF_X54_Y9_N9
\inst3|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[1]~28_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(1));

-- Location: LCCOMB_X54_Y9_N10
\inst3|s_divCounter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[2]~30_combout\ = (\inst3|s_divCounter\(2) & (\inst3|s_divCounter[1]~29\ $ (GND))) # (!\inst3|s_divCounter\(2) & (!\inst3|s_divCounter[1]~29\ & VCC))
-- \inst3|s_divCounter[2]~31\ = CARRY((\inst3|s_divCounter\(2) & !\inst3|s_divCounter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(2),
	datad => VCC,
	cin => \inst3|s_divCounter[1]~29\,
	combout => \inst3|s_divCounter[2]~30_combout\,
	cout => \inst3|s_divCounter[2]~31\);

-- Location: FF_X54_Y9_N11
\inst3|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[2]~30_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(2));

-- Location: LCCOMB_X54_Y9_N12
\inst3|s_divCounter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[3]~32_combout\ = (\inst3|s_divCounter\(3) & (!\inst3|s_divCounter[2]~31\)) # (!\inst3|s_divCounter\(3) & ((\inst3|s_divCounter[2]~31\) # (GND)))
-- \inst3|s_divCounter[3]~33\ = CARRY((!\inst3|s_divCounter[2]~31\) # (!\inst3|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(3),
	datad => VCC,
	cin => \inst3|s_divCounter[2]~31\,
	combout => \inst3|s_divCounter[3]~32_combout\,
	cout => \inst3|s_divCounter[3]~33\);

-- Location: FF_X54_Y9_N13
\inst3|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[3]~32_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(3));

-- Location: LCCOMB_X54_Y9_N14
\inst3|s_divCounter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[4]~34_combout\ = (\inst3|s_divCounter\(4) & (\inst3|s_divCounter[3]~33\ $ (GND))) # (!\inst3|s_divCounter\(4) & (!\inst3|s_divCounter[3]~33\ & VCC))
-- \inst3|s_divCounter[4]~35\ = CARRY((\inst3|s_divCounter\(4) & !\inst3|s_divCounter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(4),
	datad => VCC,
	cin => \inst3|s_divCounter[3]~33\,
	combout => \inst3|s_divCounter[4]~34_combout\,
	cout => \inst3|s_divCounter[4]~35\);

-- Location: FF_X54_Y9_N15
\inst3|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[4]~34_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(4));

-- Location: LCCOMB_X54_Y9_N16
\inst3|s_divCounter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[5]~36_combout\ = (\inst3|s_divCounter\(5) & (!\inst3|s_divCounter[4]~35\)) # (!\inst3|s_divCounter\(5) & ((\inst3|s_divCounter[4]~35\) # (GND)))
-- \inst3|s_divCounter[5]~37\ = CARRY((!\inst3|s_divCounter[4]~35\) # (!\inst3|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(5),
	datad => VCC,
	cin => \inst3|s_divCounter[4]~35\,
	combout => \inst3|s_divCounter[5]~36_combout\,
	cout => \inst3|s_divCounter[5]~37\);

-- Location: FF_X54_Y9_N17
\inst3|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[5]~36_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(5));

-- Location: LCCOMB_X54_Y9_N18
\inst3|s_divCounter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[6]~38_combout\ = (\inst3|s_divCounter\(6) & (\inst3|s_divCounter[5]~37\ $ (GND))) # (!\inst3|s_divCounter\(6) & (!\inst3|s_divCounter[5]~37\ & VCC))
-- \inst3|s_divCounter[6]~39\ = CARRY((\inst3|s_divCounter\(6) & !\inst3|s_divCounter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(6),
	datad => VCC,
	cin => \inst3|s_divCounter[5]~37\,
	combout => \inst3|s_divCounter[6]~38_combout\,
	cout => \inst3|s_divCounter[6]~39\);

-- Location: FF_X54_Y9_N19
\inst3|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[6]~38_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(6));

-- Location: LCCOMB_X54_Y9_N20
\inst3|s_divCounter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[7]~40_combout\ = (\inst3|s_divCounter\(7) & (!\inst3|s_divCounter[6]~39\)) # (!\inst3|s_divCounter\(7) & ((\inst3|s_divCounter[6]~39\) # (GND)))
-- \inst3|s_divCounter[7]~41\ = CARRY((!\inst3|s_divCounter[6]~39\) # (!\inst3|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(7),
	datad => VCC,
	cin => \inst3|s_divCounter[6]~39\,
	combout => \inst3|s_divCounter[7]~40_combout\,
	cout => \inst3|s_divCounter[7]~41\);

-- Location: FF_X54_Y9_N21
\inst3|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[7]~40_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(7));

-- Location: LCCOMB_X54_Y9_N22
\inst3|s_divCounter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[8]~42_combout\ = (\inst3|s_divCounter\(8) & (\inst3|s_divCounter[7]~41\ $ (GND))) # (!\inst3|s_divCounter\(8) & (!\inst3|s_divCounter[7]~41\ & VCC))
-- \inst3|s_divCounter[8]~43\ = CARRY((\inst3|s_divCounter\(8) & !\inst3|s_divCounter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(8),
	datad => VCC,
	cin => \inst3|s_divCounter[7]~41\,
	combout => \inst3|s_divCounter[8]~42_combout\,
	cout => \inst3|s_divCounter[8]~43\);

-- Location: FF_X54_Y9_N23
\inst3|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[8]~42_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(8));

-- Location: LCCOMB_X54_Y9_N24
\inst3|s_divCounter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[9]~44_combout\ = (\inst3|s_divCounter\(9) & (!\inst3|s_divCounter[8]~43\)) # (!\inst3|s_divCounter\(9) & ((\inst3|s_divCounter[8]~43\) # (GND)))
-- \inst3|s_divCounter[9]~45\ = CARRY((!\inst3|s_divCounter[8]~43\) # (!\inst3|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(9),
	datad => VCC,
	cin => \inst3|s_divCounter[8]~43\,
	combout => \inst3|s_divCounter[9]~44_combout\,
	cout => \inst3|s_divCounter[9]~45\);

-- Location: FF_X54_Y9_N25
\inst3|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[9]~44_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(9));

-- Location: LCCOMB_X54_Y9_N26
\inst3|s_divCounter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[10]~46_combout\ = (\inst3|s_divCounter\(10) & (\inst3|s_divCounter[9]~45\ $ (GND))) # (!\inst3|s_divCounter\(10) & (!\inst3|s_divCounter[9]~45\ & VCC))
-- \inst3|s_divCounter[10]~47\ = CARRY((\inst3|s_divCounter\(10) & !\inst3|s_divCounter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(10),
	datad => VCC,
	cin => \inst3|s_divCounter[9]~45\,
	combout => \inst3|s_divCounter[10]~46_combout\,
	cout => \inst3|s_divCounter[10]~47\);

-- Location: FF_X54_Y9_N27
\inst3|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[10]~46_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(10));

-- Location: LCCOMB_X54_Y9_N28
\inst3|s_divCounter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[11]~48_combout\ = (\inst3|s_divCounter\(11) & (!\inst3|s_divCounter[10]~47\)) # (!\inst3|s_divCounter\(11) & ((\inst3|s_divCounter[10]~47\) # (GND)))
-- \inst3|s_divCounter[11]~49\ = CARRY((!\inst3|s_divCounter[10]~47\) # (!\inst3|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(11),
	datad => VCC,
	cin => \inst3|s_divCounter[10]~47\,
	combout => \inst3|s_divCounter[11]~48_combout\,
	cout => \inst3|s_divCounter[11]~49\);

-- Location: FF_X54_Y9_N29
\inst3|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[11]~48_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(11));

-- Location: LCCOMB_X54_Y9_N30
\inst3|s_divCounter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[12]~50_combout\ = (\inst3|s_divCounter\(12) & (\inst3|s_divCounter[11]~49\ $ (GND))) # (!\inst3|s_divCounter\(12) & (!\inst3|s_divCounter[11]~49\ & VCC))
-- \inst3|s_divCounter[12]~51\ = CARRY((\inst3|s_divCounter\(12) & !\inst3|s_divCounter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(12),
	datad => VCC,
	cin => \inst3|s_divCounter[11]~49\,
	combout => \inst3|s_divCounter[12]~50_combout\,
	cout => \inst3|s_divCounter[12]~51\);

-- Location: FF_X54_Y9_N31
\inst3|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[12]~50_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(12));

-- Location: LCCOMB_X54_Y8_N0
\inst3|s_divCounter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[13]~52_combout\ = (\inst3|s_divCounter\(13) & (!\inst3|s_divCounter[12]~51\)) # (!\inst3|s_divCounter\(13) & ((\inst3|s_divCounter[12]~51\) # (GND)))
-- \inst3|s_divCounter[13]~53\ = CARRY((!\inst3|s_divCounter[12]~51\) # (!\inst3|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(13),
	datad => VCC,
	cin => \inst3|s_divCounter[12]~51\,
	combout => \inst3|s_divCounter[13]~52_combout\,
	cout => \inst3|s_divCounter[13]~53\);

-- Location: FF_X55_Y9_N9
\inst3|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst3|s_divCounter[13]~52_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(13));

-- Location: LCCOMB_X54_Y8_N2
\inst3|s_divCounter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[14]~54_combout\ = (\inst3|s_divCounter\(14) & (\inst3|s_divCounter[13]~53\ $ (GND))) # (!\inst3|s_divCounter\(14) & (!\inst3|s_divCounter[13]~53\ & VCC))
-- \inst3|s_divCounter[14]~55\ = CARRY((\inst3|s_divCounter\(14) & !\inst3|s_divCounter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(14),
	datad => VCC,
	cin => \inst3|s_divCounter[13]~53\,
	combout => \inst3|s_divCounter[14]~54_combout\,
	cout => \inst3|s_divCounter[14]~55\);

-- Location: FF_X55_Y9_N21
\inst3|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst3|s_divCounter[14]~54_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(14));

-- Location: LCCOMB_X54_Y8_N4
\inst3|s_divCounter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[15]~56_combout\ = (\inst3|s_divCounter\(15) & (!\inst3|s_divCounter[14]~55\)) # (!\inst3|s_divCounter\(15) & ((\inst3|s_divCounter[14]~55\) # (GND)))
-- \inst3|s_divCounter[15]~57\ = CARRY((!\inst3|s_divCounter[14]~55\) # (!\inst3|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(15),
	datad => VCC,
	cin => \inst3|s_divCounter[14]~55\,
	combout => \inst3|s_divCounter[15]~56_combout\,
	cout => \inst3|s_divCounter[15]~57\);

-- Location: FF_X55_Y9_N27
\inst3|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst3|s_divCounter[15]~56_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(15));

-- Location: LCCOMB_X54_Y8_N6
\inst3|s_divCounter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[16]~58_combout\ = (\inst3|s_divCounter\(16) & (\inst3|s_divCounter[15]~57\ $ (GND))) # (!\inst3|s_divCounter\(16) & (!\inst3|s_divCounter[15]~57\ & VCC))
-- \inst3|s_divCounter[16]~59\ = CARRY((\inst3|s_divCounter\(16) & !\inst3|s_divCounter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(16),
	datad => VCC,
	cin => \inst3|s_divCounter[15]~57\,
	combout => \inst3|s_divCounter[16]~58_combout\,
	cout => \inst3|s_divCounter[16]~59\);

-- Location: FF_X54_Y8_N7
\inst3|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[16]~58_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(16));

-- Location: LCCOMB_X54_Y8_N8
\inst3|s_divCounter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[17]~60_combout\ = (\inst3|s_divCounter\(17) & (!\inst3|s_divCounter[16]~59\)) # (!\inst3|s_divCounter\(17) & ((\inst3|s_divCounter[16]~59\) # (GND)))
-- \inst3|s_divCounter[17]~61\ = CARRY((!\inst3|s_divCounter[16]~59\) # (!\inst3|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(17),
	datad => VCC,
	cin => \inst3|s_divCounter[16]~59\,
	combout => \inst3|s_divCounter[17]~60_combout\,
	cout => \inst3|s_divCounter[17]~61\);

-- Location: FF_X54_Y8_N9
\inst3|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[17]~60_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(17));

-- Location: FF_X54_Y8_N11
\inst3|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[18]~62_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(18));

-- Location: LCCOMB_X55_Y9_N18
\inst3|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~2_combout\ = (((!\inst3|s_divCounter\(12)) # (!\inst3|s_divCounter\(13))) # (!\inst3|s_divCounter\(14))) # (!\inst3|s_divCounter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(15),
	datab => \inst3|s_divCounter\(14),
	datac => \inst3|s_divCounter\(13),
	datad => \inst3|s_divCounter\(12),
	combout => \inst3|LessThan0~2_combout\);

-- Location: LCCOMB_X55_Y9_N10
\inst3|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~3_combout\ = (!\inst3|s_divCounter\(18) & (\inst3|LessThan0~2_combout\ & (!\inst3|s_divCounter\(16) & !\inst3|s_divCounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(18),
	datab => \inst3|LessThan0~2_combout\,
	datac => \inst3|s_divCounter\(16),
	datad => \inst3|s_divCounter\(24),
	combout => \inst3|LessThan0~3_combout\);

-- Location: LCCOMB_X55_Y9_N22
\inst3|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~2_combout\ = (!\inst3|s_divCounter\(15) & (\inst3|s_divCounter\(11) & (\inst3|s_divCounter\(16) & !\inst3|s_divCounter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(15),
	datab => \inst3|s_divCounter\(11),
	datac => \inst3|s_divCounter\(16),
	datad => \inst3|s_divCounter\(17),
	combout => \inst3|clkOut~2_combout\);

-- Location: LCCOMB_X55_Y9_N2
\inst3|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~5_combout\ = (\inst3|s_divCounter\(13) & (!\inst3|s_divCounter\(6) & (\inst3|s_divCounter\(14) & \inst3|s_divCounter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(13),
	datab => \inst3|s_divCounter\(6),
	datac => \inst3|s_divCounter\(14),
	datad => \inst3|s_divCounter\(12),
	combout => \inst3|clkOut~5_combout\);

-- Location: LCCOMB_X55_Y9_N4
\inst3|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~6_combout\ = (\inst3|s_divCounter\(24) & (!\inst3|s_divCounter\(25) & (!\inst3|s_divCounter\(23) & \inst3|clkOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(24),
	datab => \inst3|s_divCounter\(25),
	datac => \inst3|s_divCounter\(23),
	datad => \inst3|clkOut~5_combout\,
	combout => \inst3|clkOut~6_combout\);

-- Location: LCCOMB_X55_Y9_N12
\inst3|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~7_combout\ = (\inst3|s_divCounter\(18) & (\inst3|clkOut~3_combout\ & (\inst3|clkOut~6_combout\ & \inst3|clkOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(18),
	datab => \inst3|clkOut~3_combout\,
	datac => \inst3|clkOut~6_combout\,
	datad => \inst3|clkOut~4_combout\,
	combout => \inst3|clkOut~7_combout\);

-- Location: LCCOMB_X55_Y9_N16
\inst3|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~8_combout\ = (\inst3|clkOut~q\) # ((\inst3|clkOut~2_combout\ & (\inst3|clkOut~1_combout\ & \inst3|clkOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clkOut~2_combout\,
	datab => \inst3|clkOut~1_combout\,
	datac => \inst3|clkOut~q\,
	datad => \inst3|clkOut~7_combout\,
	combout => \inst3|clkOut~8_combout\);

-- Location: LCCOMB_X55_Y9_N30
\inst3|clkOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~9_combout\ = (\inst3|clkOut~8_combout\ & ((\inst3|LessThan0~3_combout\) # ((\inst3|LessThan0~5_combout\) # (\inst3|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan0~3_combout\,
	datab => \inst3|LessThan0~5_combout\,
	datac => \inst3|clkOut~8_combout\,
	datad => \inst3|LessThan0~1_combout\,
	combout => \inst3|clkOut~9_combout\);

-- Location: FF_X55_Y9_N31
\inst3|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|clkOut~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clkOut~q\);

-- Location: CLKCTRL_G15
\inst3|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|clkOut~clkctrl_outclk\);

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

-- Location: LCCOMB_X96_Y72_N18
\inst2|s_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count~4_combout\ = (!\KEY[0]~input_o\ & !\inst2|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \inst2|s_count\(0),
	combout => \inst2|s_count~4_combout\);

-- Location: FF_X96_Y72_N19
\inst2|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clkOut~clkctrl_outclk\,
	d => \inst2|s_count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(0));

-- Location: LCCOMB_X96_Y72_N28
\inst2|s_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count~3_combout\ = (!\KEY[0]~input_o\ & (\inst2|s_count\(1) $ (\inst2|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \inst2|s_count\(1),
	datad => \inst2|s_count\(0),
	combout => \inst2|s_count~3_combout\);

-- Location: FF_X96_Y72_N29
\inst2|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clkOut~clkctrl_outclk\,
	d => \inst2|s_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(1));

-- Location: LCCOMB_X96_Y72_N26
\inst2|s_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count~2_combout\ = (!\KEY[0]~input_o\ & (\inst2|s_count\(2) $ (((\inst2|s_count\(1) & \inst2|s_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \inst2|s_count\(1),
	datac => \inst2|s_count\(2),
	datad => \inst2|s_count\(0),
	combout => \inst2|s_count~2_combout\);

-- Location: FF_X96_Y72_N27
\inst2|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clkOut~clkctrl_outclk\,
	d => \inst2|s_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(2));

-- Location: LCCOMB_X96_Y72_N16
\inst2|s_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count~0_combout\ = (!\inst2|s_count\(0)) # (!\inst2|s_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_count\(2),
	datad => \inst2|s_count\(0),
	combout => \inst2|s_count~0_combout\);

-- Location: LCCOMB_X96_Y72_N24
\inst2|s_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count~1_combout\ = (!\KEY[0]~input_o\ & (\inst2|s_count\(3) $ (((\inst2|s_count\(1) & !\inst2|s_count~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \inst2|s_count\(1),
	datac => \inst2|s_count\(3),
	datad => \inst2|s_count~0_combout\,
	combout => \inst2|s_count~1_combout\);

-- Location: FF_X96_Y72_N25
\inst2|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clkOut~clkctrl_outclk\,
	d => \inst2|s_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(3));

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


