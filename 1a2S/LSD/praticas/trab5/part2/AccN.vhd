library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity AccN is
    generic ( N : positive := 8 );
    port ( clk     : in std_logic;
           reset   : in std_logic;
           enable  : in std_logic;
           d       : in STD_LOGIC_VECTOR(N-1 downto 0);
           q       : out std_logic_vector(N-1 downto 0)
         );
end AccN;

architecture Behav of AccN is

    signal s_AdderOut, s_RegOut : std_logic_vector(N-1 downto 0);
	 
begin
    
    Somador : entity work.AdderN(Behavioral)
        generic map (N => N)
        port map ( operand0 => d,
                   operand1 => s_RegOut,
                   S   => s_AdderOut);
    
  
    Registo : entity work.RegN(Behav)
        generic map (N => N)
        port map ( clk    => clk,
                   reset  => reset,
                   enable => enable,
                   d      => s_AdderOut,
                   q      => s_RegOut);
    
    
    q <= s_RegOut;
end Behav;