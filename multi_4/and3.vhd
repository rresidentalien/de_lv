library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and3 is
    port(
        i1, i2, i3 : in STD_LOGIC;
        o : out STD_LOGIC
    );
end and3;

architecture Behavioral of and3 is
begin
    o <= i1 and i2 and i3;
end Behavioral;