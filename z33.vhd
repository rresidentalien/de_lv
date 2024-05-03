library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity z33 is
    port (
        clk_i : in STD_LOGIC;
        intenzitet : in STD_LOGIC_VECTOR (3 downto 0);
        led : out STD_LOGIC
    );
end z33;

architecture Behavioral of z33 is
    signal brojac : INTEGER range 0 to 15 := 0;
    signal izlaz : STD_LOGIC := '0';
    signal clk : STD_LOGIC;
begin
    S1 : entity work.divFreq port map (clk_i, clk);
    process(clk)
    begin
        if (clk'event and clk = '1') then
            if (brojac < 16) then
                brojac <= brojac + 1;
            else
                brojac <= 0;
            end if;
            if (brojac < to_integer(unsigned(intenzitet))) then
                izlaz <= '1';
            else
                izlaz <= '0';
            end if;
        end if;
    end process;
    led <= izlaz;
end Behavioral;