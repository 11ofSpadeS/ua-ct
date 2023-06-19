library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Register8 is
	port(reset  : in std_logic;
		  clk    : in std_logic;
		  enable : in std_logic;
		  d      : in std_logic_vector(7 downto 0);
		  q      : out std_logic_vector(7 downto 0));
end Register8;

architecture Behav of Register8 is
	begin
	process(clk)
		begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				q <= (others => '0');
			elsif (enable = '1') then
				q <= d;
			end if;
		end if;
	end process;
end Behav;