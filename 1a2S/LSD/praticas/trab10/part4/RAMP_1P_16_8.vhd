library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity RAMP is
	port(	CLOCK_50 : in std_logic;
			KEY0 		: in std_logic_vector(0 downto 0)
			SW 		: in std_logic_vector
			LEDR     : out std_logic_vector (17 downto 0)
			)
end RAMP;

architecture shell of RAMP is
	signal s_clock : std_logic;
	signal s_writeenable : std_logic;
	signal s_address : std_logic_vector(adressize-1 downto 0)
	signal s_writedata: std_logic_vector(datasize-1 downto 0)