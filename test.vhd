library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity entitet is
	port(
		A, B, C 	: in STD_LOGIC;
		Y 			: out STD_LOGIC);
end entitet;

architecture Behavioral of entitet is
begin
	Y <= (not (A or B) xor (B and C));
end Behavioral;