library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.all; 

entity AdderN is
	 generic ( N : positive := 4 );
	 
    Port ( operand0 : in  STD_LOGIC_VECTOR (N-1 downto 0) ;
           operand1 : in  STD_LOGIC_VECTOR (N-1 downto 0) ;
           S : out  STD_LOGIC_VECTOR (N-1 downto 0));
end AdderN;

architecture Behavioral of AdderN is
begin

    S <= std_logic_vector(unsigned(operand0) + unsigned(operand1));

end Behavioral;