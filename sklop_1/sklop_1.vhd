library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sklop_1 is
    port(
        A, B : in STD_LOGIC;
        C : out STD_LOGIC
    );
end sklop_1;

architecture Structural of sklop_1 is
    signal D : STD_LOGIC;
    signal E : STD_LOGIC;

begin
    S1: entity work.and_2bl port map(i1 => A, i2 => B, o1 => D);
    S2: entity work.xor_2 port map(i1 => A, i2 => B, o1 => E);
    S3: entity work.and_2 port map(i1 => D, i2 => E, o1 => C);
end Structural;