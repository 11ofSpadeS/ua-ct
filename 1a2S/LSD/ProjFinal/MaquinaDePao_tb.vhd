library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity MaquinaDePao_tb is
end MaquinaDePao_tb;

architecture Behavioral of MaquinaDePao_tb is


  component MaquinaDePao is
    port (
      reset         : in  std_logic;
      clk           : in  std_logic;
      clken         : in  std_logic;
      start_stop    : in  std_logic;
      timeExp       : in  std_logic;
      time_amassar  : in  std_logic_vector(7 downto 0);
      time_levedura : in  std_logic_vector(7 downto 0);
      time_cozedura : in  std_logic_vector(7 downto 0);
      time_extra    : in  std_logic_vector(7 downto 0);
      time_total    : in  std_logic_vector(7 downto 0);
      newTime       : out std_logic;
      timeVal       : out std_logic_vector(7 downto 0);
      ledr0         : out std_logic;
      ledg0         : out std_logic;
      ledg1         : out std_logic;
      ledg2         : out std_logic
    );
  end component;


  signal reset         : std_logic := '1';
  signal clk           : std_logic := '0';
  signal clken         : std_logic := '1';
  signal start_stop    : std_logic := '0';
  signal timeExp       : std_logic := '0';
  signal time_amassar  : std_logic_vector(7 downto 0) := "00000000";
  signal time_levedura : std_logic_vector(7 downto 0) := "00000000";
  signal time_cozedura : std_logic_vector(7 downto 0) := "00000000";
  signal time_extra    : std_logic_vector(7 downto 0) := "00000000";
  signal time_total    : std_logic_vector(7 downto 0) := "00000000";
  signal newTime       : std_logic;
  signal timeVal       : std_logic_vector(7 downto 0);
  signal ledr0         : std_logic;
  signal ledg0         : std_logic;
  signal ledg1         : std_logic;
  signal ledg2         : std_logic;

begin

  uut : MaquinaDePao
    port map (
      reset         => reset,
      clk           => clk,
      clken         => clken,
      start_stop    => start_stop,
      timeExp       => timeExp,
      time_amassar  => time_amassar,
      time_levedura => time_levedura,
      time_cozedura => time_cozedura,
      time_extra    => time_extra,
      time_total    => time_total,
      newTime       => newTime,
      timeVal       => timeVal,
      ledr0         => ledr0,
      ledg0         => ledg0,
      ledg1         => ledg1,
      ledg2         => ledg2
    );


  clk_process : process
  begin
    while true loop
      clk <= '0';
      wait for 10 ns;
      clk <= '1';
      wait for 10 ns;
    end loop;
  end process;


  stimulus_process : process
  begin
    reset 			<= '1';
    start_stop 	<= '0';
    timeExp 		<= '0';
    time_amassar 	<= "00000000";
    time_levedura <= "00000000";
    time_cozedura <= "00000000";
    time_extra 	<= "00000000";
    time_total 	<= "00000000";
    wait for 10 ns;
    reset <= '0';
    wait for 10 ns;
    start_stop <= '1';
    time_amassar <= "00000010";   -- 2 ns
    wait for 20 ns;
    timeExp <= '1';
    wait for 10 ns;
    timeExp <= '0';
    wait for 10 ns;
    time_levedura <= "00000010";  -- 2 ns
    wait for 20 ns;
    timeExp <= '1';
    wait for 10 ns;
    timeExp <= '0';
    wait for 10 ns;
    time_cozedura <= "00000011";  -- 3 ns
    wait for 30 ns;
    timeExp <= '1';
    wait for 10 ns;
    timeExp <= '0';
    time_extra <= "00000100";  	 -- 4 ns
    wait for 40 ns;
    timeExp <= '1';
    wait for 10 ns;
    timeExp <= '0';
    wait for 10 ns;
    start_stop <= '0';
    wait for 10 ns;
    reset <= '1';
    wait for 10 ns;
    reset <= '0';
    wait for 10 ns;
    assert false report "Fim" severity failure;
    wait;
  end process;

end Behavioral;
