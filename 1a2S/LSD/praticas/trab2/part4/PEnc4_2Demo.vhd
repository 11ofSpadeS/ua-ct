library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity PrioEnc4_2 is
    port (
        SW : in std_logic_vector(3 downto 0);
        LEDR : out std_logic_vector(1 downto 0));
end PrioEnc4_2;

architecture behavioral of PrioEnc4_2 is
    signal decodIn : std_logic_vector(3 downto 0);
    signal validOut : std_logic;
    signal encodOut : std_logic_vector(1 downto 0);
	 
begin
    decodIn <= SW;
    process(decodIn)
	 
    begin
        if (decodIn(3) = '1') then
            validOut <= '1';
            encodOut <= "11";
        elsif (decodIn(2) = '1') then
            validOut <= '1';
            encodOut <= "10";
        elsif (decodIn(1) = '1') then
            validOut <= '1';
            encodOut <= "01";
        elsif (decodIn(0) = '1') then
            validOut <= '1';
            encodOut <= "00";
        else
            validOut <= '0';
            encodOut <= "--";
        end if;
    end process;

    LEDR <= encodOut;
	 
end behavioral;

	
	
	 