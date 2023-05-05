library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mini_projeto is
	port
	(
		CLOCK_50 : in  std_logic;
		LEDR     : buffer std_logic_vector(1 downto 0);
		KEY      : in  std_logic_vector(1  downto 0);
		HEX0     : out std_logic_vector(6  downto 0);
		HEX1     : out std_logic_vector(6  downto 0)
		
	);
end mini_projeto;

architecture Shell of mini_projeto is
	signal s_clk_div : std_logic;
	
	signal s_clk_fn : std_logic;

	signal s_reset : std_logic;
	
	signal s_stop : std_logic;
	
	signal s_ledr : std_logic;

	signal s_count : std_logic_vector(7 downto 0);
	
	signal s_display0, s_display1 : std_logic_vector(7 downto 0);
begin
	s_clk_div <= CLOCK_50;
	s_reset   <= KEY(0);
	s_stop <= KEY(1);
	LEDR(0) <= s_stop;
	
	
	pulsegen : entity work.PulseGen(Behavioral)
	port map
	(
	clk => s_clk_div,
	pulse => s_clk_fn
	);
	
	
	counter : entity work.CounterDown59(Behavioral)
	port map
	(
		clk   => s_clk_fn,
		reset => s_reset,
		count => s_count,
		stop => s_stop
	);
	


	bin_2_bcd : entity work.Bin2BCD(Behavioral)
	port map
	(
		bindata   => s_count,
		dec_out_h => s_display0,
		dec_out_l => s_display1
	);
	
	
	display0 : entity work.BCD2Dec(Behavioral)
	port map
	(
		enable   => '1',
		binInput => s_display0,
		decOut_n => HEX1
	);
	
	
	display1 : entity work.BCD2Dec(Behavioral)
	port map
	(
		enable   => '1',
		binInput => s_display1,
		decOut_n => HEX0
	);
	
end Shell;