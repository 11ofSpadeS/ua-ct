library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity FreqDivider is 
port(clkIn : in std_logic; 
		k : in std_logic_vector(31 downto 0); 
		clkOut : out std_logic); 
end FreqDivider; 

architecture Behavioral of FreqDivider is 
		signal s_counter : unsigned(31 downto 0); 
		signal s_halfWay : unsigned(31 downto 0); 
begin 
	s_halfWay <= (unsigned(k) / 2); 
	s_final <= unsigned(k)
	
	process(clkIn) 
		begin 
			if (rising_edge(clkIn)) then 
				
				if (reset = '1') or (s_counter = s_final-1) then
					clkout <= '0';
					s_counter <= 0;
				else
				
				if (s_counter = s_halfway - 1) then
				end if;
					s_counter <= s_counter + 1;
			end if; 
			end if;
		end process; 
end Behavioral;