library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all; 

entity RegN is
	 generic ( N : positive := 4 );
	 
	port(reset  : in std_logic;
		  clk    : in std_logic;
		  enable : in std_logic;
		  d      : in std_logic_vector(N-1 downto 0);
		  q      : out std_logic_vector(N-1 downto 0));
end RegN;

architecture Behav of RegN is
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