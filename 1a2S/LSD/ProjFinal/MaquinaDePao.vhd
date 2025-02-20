 library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity MaquinaDePao is
	port(reset				: in  std_logic;
		  clk					: in  std_logic;
		  clken				: in std_logic;
		  start_stop		: in  std_logic;
		  timeExp			: in  std_logic;
		  time_amassar		: in 	std_logic_vector(7 downto 0);
		  time_levedura	: in 	std_logic_vector(7 downto 0);
		  time_cozedura	: in 	std_logic_vector(7 downto 0);
		  time_extra		: in 	std_logic_vector(7 downto 0);
		  time_total		: in  std_logic_vector(7 downto 0);
		  

		  newTime			: out std_logic;
		  timeVal			: out std_logic_vector(7 downto 0);
		  ledr0				: out std_logic;
		  ledg0				: out std_logic;
		  ledg1				: out std_logic;
		  ledg2				: out std_logic);
end MaquinaDePao;

architecture Behavioral of MaquinaDePao is

	type TState is (TInit,       --Estados utilizados na maquina
						 Amassar_Init,
						 Amassar, 
						 Levedura_Init, 
						 Levedura, 
						 Cozedura_Init, 
						 Cozedura, 
						 Extra_Init,
						 Extra); 
	
    signal s_currentState, s_nextState   : TState := TInit;  -- sinais necessarios para o funcionamento da maquina de estados e definiçao do estado inicial

begin

    sync_proc : process(clk)
    begin
        if (rising_edge(clk) and clken = '1') then
            if (reset = '1') then
                s_currentState <= TInit;
            else
                s_currentState  <= s_nextState;
            end if;
        end if;
    end process;

    comb_proc : process(s_currentState, timeExp)
    begin
        case (s_currentState) is
            when TInit =>
					newTime <= '1';
					ledr0 <= '0';
					ledg0 <= '0';
					ledg1 <= '0';
					ledg2 <= '0';
					timeVal <= time_total;
					if start_stop = '1' then
						s_nextState <= amassar_init;
					else 
						s_nextState <= TInit;
					end if;
					 
					 
				when Amassar_Init =>
					newTime <= '1';
					timeVal <= time_amassar;
					s_nextState <= Amassar;
					 
					 
            when Amassar =>
					ledr0 	<= '1';
					newTime 	<= '0';
					ledg0 	<= '1';
					ledg1 	<= '0';
					ledg2 	<= '0';
					if (timeExp = '1') then
						s_nextState <= Levedura_Init;
					else
						s_nextState <= Amassar;
					end if;
					
					
				when Levedura_Init =>
					ledr0 <= '1';
					ledg0 <= '0';
					ledg1 <= '1';
					ledg2 <= '0';
					newTime <= '1';
					s_nextState <= Levedura;
					timeVal <= time_levedura;

					
            when Levedura =>
					newTime <= '0';
					ledr0 <= '1';
					ledg0 <= '0';
					ledg1 <= '1';
					ledg2 <= '0';
					if (timeExp = '1') then
						s_nextState <= Cozedura_Init;
					else
						s_nextState <= Levedura;
					end if;

				  
			  when Cozedura_Init =>
					ledr0 <= '1';
					ledg0 <= '0';
					ledg1 <= '0';
					ledg2 <= '1';
					newTime <= '1';
					s_nextState <= Cozedura;
					timeVal <= time_cozedura;
				  
				  
			  when Cozedura =>
					newTime <= '0';
					ledr0 <= '1';
					ledg0 <= '0';
					ledg1 <= '0';
					ledg2 <= '1';
					if (timeExp = '1') then
						s_nextState <= Extra_Init;
					else
						s_nextState <= Cozedura;
					end if;

									
				when Extra_Init =>
					ledr0 <= '1';
					ledg0 <= '0';
					ledg1 <= '0';
					ledg2 <= '0';
					newTime <= '1';
					s_nextState <= Extra;
					timeVal <= time_extra;
									
					
				when Extra =>
					newTime <= '0';
					ledr0 <= '1';
					ledg0 <= '0';
					ledg1 <= '0';
					ledg2 <= '0';
					if (timeExp = '1') then
						s_nextState <= TInit;
					else
						s_nextState <= Extra;
					end if;
				
        end case;
    end process;
end Behavioral;