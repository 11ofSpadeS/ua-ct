library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity RAM_1P_Demo is

	port( KEY 	: in std_logic_vector(0 downto 0);
			SW  	: in std_logic_vector (13 downto 0);
			LEDR 	: out std_logic_vector(7 downto 0)
		  );

end RAM_1P_Demo;

architecture shell of RAM_1P_Demo is
	
begin
	
	ram : entity work.RAM_1_SWR_ARD(Behavioral)
		port map(writeClk 	=> KEY(0),
					writeEnable => SW(5),
					writeData 	=> SW (13 downto 6),
					readData 	=> LEDR(7 downto 0),
					address 		=> SW(3 downto 0));

end shell;

			