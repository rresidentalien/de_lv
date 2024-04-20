library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and3_n1 is
    port(
        i1, i2, i3 : in STD_LOGIC;
        o : out STD_LOGIC
    );
end and3_n1;

architecture Behavioral of and3_n1 is
begin
    o <= i1 and i2 and not i3;
end Behavioral;