library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PaoTop is
   port (CLOCK_50    		: in  std_logic;
        KEY        			: in  std_logic_vector(3 downto 0);
        SW            		: in  std_logic_vector(0 downto 0);
		  
        LEDR        			: out std_logic_vector(1 downto 0);
        LEDG     				: out std_logic_vector(2 downto 0);
		  HEX0 					: out std_logic_vector(6 downto 0);
		  HEX1 					: out std_logic_vector(6 downto 0));
end entity PaoTop;


architecture Shell of PaoTop is

	signal s_newTime					: std_logic;
	signal s_timeExp					: std_logic;
	signal s_startStop 				: std_logic;
	signal s_clk 						: std_logic;
	signal s_debounce					: std_logic;
	
	signal s_displayL					: std_logic_vector(7 downto 0);
	signal s_displayR					: std_logic_vector(7 downto 0);
	signal s_timeVal					: std_logic_vector(7 downto 0);
	signal s_timeAmassar 			: std_logic_vector(7 downto 0);
	signal s_timeLevedura			: std_logic_vector(7 downto 0);
	signal s_timeCozedura 			: std_logic_vector(7 downto 0);
	signal s_timeExtra 				: std_logic_vector(7 downto 0);
	signal s_timeTotal				: std_logic_vector(7 downto 0); 
	signal s_timeOut					: std_logic_vector(7 downto 0);

	
begin

	LEDR(1) <= s_startStop;

	
	
	clkDivider : entity work.ClkDividerN(Behavioral)
		generic map(divFactor => 50000000)  -- fator de divisão necessario para o clock pulsar 1vez por segundo
		port map(clkIn => CLOCK_50,
					pulseOut => s_clk);
					
					
					
	 maquina_pao_fsm : entity work.MaquinaDePao(Behavioral)
		port map ( reset 		 		=> not KEY(3),
					  clk 	  	 		=> CLOCK_50,
					  clkEn				=> s_clk,
					  start_stop 		=>	not KEY(0),
					  time_amassar 	=> s_timeAmassar,
					  time_levedura 	=> s_timeLevedura,
					  time_cozedura 	=> s_timeCozedura,
					  time_extra   	=> s_timeExtra,
					  time_total		=> s_timeTotal,
					  timeExp 			=> s_timeExp,
					  newTime 			=> s_newTime,
					  timeVal 			=> s_timeVal,
					  ledr0 				=> LEDR(0),
					  ledg0 				=> LEDG(0),
					  ledg1 				=> LEDG(1),
					  ledg2 				=> LEDG(2));
					  
					  
					  
	timeraux_fsm: entity work.TimerAuxFSM(Behavioral)
		port map (reset 		 	=> not KEY(3),
					 clk 	  			=> CLOCK_50,
					 clkEn			=> s_clk,
					 timeExp 		=> s_timeExp,
					 newTime 		=> s_newTime,
					 timeVal 		=> s_timeVal,
					 timeOut 		=> s_timeOut);
						 
						 
						 
	reg: entity work.Reg(Behavioral)
		port map (clk 	  	 		=> CLOCK_50,
					 bread_type 	=> SW(0),
					 time_amassar	=> s_timeAmassar,
					 time_levedura	=> s_timeLevedura,	 
					 time_cozedura	=> s_timeCozedura, 
					 time_wait		=> s_timeExtra,
					 time_total 	=> s_timeTotal);
	
	
					 
	bin2bcd : entity work.Bin2BCD(Behavioral)
		port map(bindata 		=> s_timeOut,
					dec_out_l 	=> s_displayR,
					dec_out_h 	=> s_displayL);

					
	displayR : entity work.Bin7SegDecoder(Behavioral)
		port map(binInput => s_displayR,
					decOut_n => HEX0);
					
					
	displayL : entity work.Bin7SegDecoder(Behavioral)
		port map(binInput => s_displayL,
					decOut_n => HEX1);
						 
					  
end architecture Shell;