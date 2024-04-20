library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor_2 is
    port (
		i1, i2 : in STD_LOGIC;
		o1 : out STD_LOGIC
	 );
end xor_2;

architecture Behavioral of xor_2 is
begin
    o1 <= i1 xor i2;
end Behavioral;