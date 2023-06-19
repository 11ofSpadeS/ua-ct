library IEEE; 
use IEEE.STD_LOGIC_1164.all; 

entity Adder4 is 
		port(a, b : in std_logic_vector(3 downto 0); 
			  cin : in std_logic; 
			  s : out std_logic_vector(3 downto 0); 
			  cout : out std_logic); 
end Adder4; 

architecture Structural of Adder4 is
			  signal carry : std_logic_vector(2 downto 0);

begin 
bit0: entity work.FullAdder(Behavioral) 
port map(a => a(0), 
			b => b(0), 
			cin => cin, 
			s => s(0), 
			cout => carry(0)); 
			
bit1: entity work.FullAdder(Behavioral) 
port map(a => a(1), 
			b => b(1), 
			cin => carry(0), 
			s => s(1), 
			cout => carry(1)); 
			
bit2: entity work.FullAdder(Behavioral) 
port map(a => a(2), 
			b => b(2), 
			cin => carry(1), 
			s => s(2), 
			cout => carry(2)); 
			
bit3: entity work.FullAdder(Behavioral) 
port map(a => a(3), 
			b => b(3), 
			cin => carry(2), 
			s => s(3), 
			cout => cout); 
			
end Structural;