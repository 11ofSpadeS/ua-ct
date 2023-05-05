library IEEE; 
use IEEE.STD_LOGIC_1164.all; 
use IEEE.NUMERIC_STD.all; 

entity CounterDown59 is 
	port(clk : in std_logic; 
		  stop : in std_logic;
		  reset : in std_logic;
		  led : out std_logic;
		  count : out std_logic_vector(7 downto 0)); 
end CounterDown59; 

architecture Behavioral of CounterDown59 is 
		signal s_count : unsigned(7 downto 0) := "00111011";
		signal s_led : std_logic;
	begin 
		process(clk) 
			begin 
				if (rising_edge(clk)) then 
				if (stop = '1') then
					if (reset = '0') then
						s_count <= "00111011";
					elsif( s_count = "00000000") then
						s_count <="00111011";
					else
						s_count <= s_count - 1;
						end if;
					end if;
				end if; 
		end process; 
	count <= std_logic_vector(s_count);
end Behavioral;