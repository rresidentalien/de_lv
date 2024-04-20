library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_2 is
    port ( i1, i2 : in  STD_LOGIC;
           o1 : out  STD_LOGIC);
end and_2;

architecture Behavioral of and_2 is
begin
	o1 <= i1 and i2;
end Behavioral;