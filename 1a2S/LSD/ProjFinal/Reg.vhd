library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Reg is
	port (
		clk                     	: in  std_logic;
      bread_type                	: in  std_logic;
      time_amassar           		: out std_logic_vector(7 downto 0);
      time_levedura           	: out std_logic_vector(7 downto 0);
      time_cozedura          		: out std_logic_vector(7 downto 0);
		time_total						: out std_logic_vector(7 downto 0);
      time_wait            		: out std_logic_vector(7 downto 0)
	);	
end entity Reg;

architecture Behavioral of Reg is
	 -- constantes que representam os tempos necessarios para o funcionamento correto da maquina
	 constant TOTAL_TIME_CASEIRO				: std_logic_vector(7 downto 0) 			:= "00011000"; -- 33 s
	 constant TOTAL_TIME_RUSTICO				: std_logic_vector(7 downto 0) 			:= "00100001"; -- 24 s
    constant AMASSAR_TIME_CASEIRO 			: std_logic_vector(7 downto 0)     		:= "00001010"; -- 10 s
    constant AMASSAR_TIME_RUSTICO 			: std_logic_vector(7 downto 0)     		:= "00001111"; -- 15 s
    constant LEVEDAR_TIME_CASEIRO 			: std_logic_vector(7 downto 0)     		:= "00000100"; -- 4  s 
    constant LEVEDAR_TIME_RUSTICO 			: std_logic_vector(7 downto 0)     		:= "00001000"; -- 8  s
    constant COZEDURA_TIME      				: std_logic_vector(7 downto 0)     		:= "00001010"; -- 10 s
    constant WAIT_TIME        				: std_logic_vector(7 downto 0)     		:= "00000010"; -- 2  s
     
begin
    process(clk)
    begin
        if rising_edge(clk) then			-- devolver output com os tempos correspondentes ao tipo de pao selecionado
            if bread_type = '0' then
					 time_total		  	<= std_logic_vector(TOTAL_TIME_CASEIRO);
                time_amassar   	<= std_logic_vector(AMASSAR_TIME_CASEIRO);
                time_levedura   	<= std_logic_vector(LEVEDAR_TIME_CASEIRO);
                time_levedura  	<= std_logic_vector(COZEDURA_TIME);
                time_wait    		<= std_logic_vector(WAIT_TIME);
            else
					 time_total		  	<= std_logic_vector(TOTAL_TIME_RUSTICO);
                time_amassar   	<= std_logic_vector(AMASSAR_TIME_RUSTICO);
                time_levedura   	<= std_logic_vector(LEVEDAR_TIME_RUSTICO);
                time_levedura  	<= std_logic_vector(COZEDURA_TIME);
                time_wait    		<= std_logic_vector(WAIT_TIME);
				
            end if;
        end if;
    end process;
end architecture Behavioral;
