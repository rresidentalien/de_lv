library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or4 is
    port(
        i1, i2, i3, i4 : in STD_LOGIC;
        o : out STD_LOGIC
    );
end or4;

architecture Behavioral of or4 is
begin
    o <= i1 or i2 or i3 or i4;
end Behavioral;