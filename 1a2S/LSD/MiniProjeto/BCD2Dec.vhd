library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity BCD2Dec is
    port(binInput : in std_logic_vector(7 downto 0);
    decOut_n : out std_logic_vector(6 downto 0);
    enable    : in std_logic);
    end BCD2Dec;

    architecture Behavioral of BCD2Dec is
begin
	decOut_n <="1111111" when enable = '0' else
                "1111001" when (binInput = "00000001") else --1
                "0100100" when (binInput = "00000010") else --2
                "0110000" when (binInput = "00000011") else --3
                "0011001" when (binInput = "00000100") else --4
                "0010010" when (binInput = "00000101") else --5
                "0000010" when (binInput = "00000110") else --6
                "1111000" when (binInput = "00000111") else --7
                "0000000" when (binInput = "00001000") else --8
                "0010000" when (binInput = "00001001") else --9
                "1000000"; --0
					 

end Behavioral;