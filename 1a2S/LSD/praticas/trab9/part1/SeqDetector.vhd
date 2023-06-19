library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDetector is
	port
	(
		CLOCK_50 : in  std_logic;
		LEDR     : buffer std_logic_vector(0 downto 0);
		LEDG		: out std_logic_vector (0 downto 0);
		SW 		: in std_logic_vector(1 downto 0 ));
		
end SeqDetector;

architecture Shell of SeqDetector is
	signal clock: std_logic;
	
begin
	divisor : entity work.ClkDividerN(Behavioral)
	generic map(divFactor => 250000000)
	port map(clkIn => CLOCK_50,
				clkOut => clock);
	
	
	system_core : entity work.SeqDetFSM(MealyArch)
			port map ( clk => clock,
						  reset => SW(1),
						  xIn => SW(0),
						  zOut => LEDR(0));
						  
			LEDG(0) <= clock;
	

	
end Shell;