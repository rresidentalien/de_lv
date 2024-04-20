library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multi_4 is
    port(
        A, B, C, D, A1, A0 : in STD_LOGIC;
        Y : out STD_LOGIC
    );
end multi_4;

architecture Structural of multi_4 is
    signal E : STD_LOGIC;
    signal F : STD_LOGIC;
    signal G : STD_LOGIC;
    signal H : STD_LOGIC;

begin
    S1: entity work.and3_n2 port map(A, A1, A0, E);
    S2: entity work.and3_n1 port map(B, A0, A1, F);
    S3: entity work.and3_n1 port map(C, A1, A0, G);
    S4: entity work.and3 port map(D, A1, A0, H);
    S5: entity work.or4 port map(E, F, G, H, Y);
end Structural;