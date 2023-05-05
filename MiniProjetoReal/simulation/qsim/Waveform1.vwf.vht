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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/18/2023 14:07:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Bin2BCD
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Bin2BCD_vhd_vec_tst IS
END Bin2BCD_vhd_vec_tst;
ARCHITECTURE Bin2BCD_arch OF Bin2BCD_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bindata : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL dec_out_h : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL dec_out_l : STD_LOGIC_VECTOR(5 DOWNTO 0);
COMPONENT Bin2BCD
	PORT (
	bindata : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	dec_out_h : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	dec_out_l : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Bin2BCD
	PORT MAP (
-- list connections between master ports and signals
	bindata => bindata,
	dec_out_h => dec_out_h,
	dec_out_l => dec_out_l
	);
-- bindata[5]
t_prcs_bindata_5: PROCESS
BEGIN
	bindata(5) <= '1';
WAIT;
END PROCESS t_prcs_bindata_5;
-- bindata[4]
t_prcs_bindata_4: PROCESS
BEGIN
	bindata(4) <= '1';
WAIT;
END PROCESS t_prcs_bindata_4;
-- bindata[3]
t_prcs_bindata_3: PROCESS
BEGIN
	bindata(3) <= '1';
WAIT;
END PROCESS t_prcs_bindata_3;
-- bindata[2]
t_prcs_bindata_2: PROCESS
BEGIN
	bindata(2) <= '0';
WAIT;
END PROCESS t_prcs_bindata_2;
-- bindata[1]
t_prcs_bindata_1: PROCESS
BEGIN
	bindata(1) <= '1';
WAIT;
END PROCESS t_prcs_bindata_1;
-- bindata[0]
t_prcs_bindata_0: PROCESS
BEGIN
	bindata(0) <= '1';
WAIT;
END PROCESS t_prcs_bindata_0;
END Bin2BCD_arch;
