library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Counter_Up_DownTb is 
end Counter_Up_DownTb;

architecture Stimulus of Counter_Up_DownTb is

	-- Sinais para ligar às entradas da uut
	signal s_reset, s_clk : std_logic; 
	signal s_enable, s_upDown_n : std_logic;
	
	-- Sinal para ligar às saídas da uut
	signal s_cntOut : std_logic_vector(3 downto 0);
begin

	-- Instanciação da Unit Under Test (UUT)
	uut : entity work.Counter_Up_Down(Behavioral)
		port map(reset => s_reset,
					clk => s_clk,
					enable => s_enable,
					upDown_n => s_upDown_n,
					cntOut => s_cntOut);

-- Process clock
clock_proc : process
	begin
		s_clk <= '0'; wait for 100 ns;
		s_clk <= '1'; wait for 100 ns;
end process;

stim_proc : process
begin
		s_reset <= '1';
		s_enable <= '0';
		s_upDown_n <= '1';
		wait for 325 ns;
		s_reset <= '0';
		wait for 25 ns;
		s_enable <= '1';
		wait for 925 ns;
		s_enable <= '0';
		wait for 375 ns;
		s_upDown_n <= '0';
		s_enable <= '1';
		wait for 975 ns;
		s_enable <= '0';
		wait for 125 ns;
	end process;
end Stimulus;