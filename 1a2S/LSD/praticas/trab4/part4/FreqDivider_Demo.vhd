library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity FreqDivider_Demo is
port ( CLOCK_S0 : in std_logic;
		 SW       : in std_logic_vector ( 0 downto 0);
		 LEDR     : out std_logic_vector( 0 downto 0));
end FreqDivider_Demo;

architecture Structural of FreqDivider_Demo is

begin
	divisor : entity work.FreqDivider(Behavioral)
	port map (clkin => CLOCK_S0,
				 reset => SW(0),
				 clkout => LEDR(0),
				 k => x"02FAF080");
end Structural;