library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ledUpravljac is
    port(
        clk : in STD_LOGIC;
        intenzitet : in STD_LOGIC_VECTOR (3 downto 0);
        led : out STD_LOGIC
    );
end ledUpravljac;

architecture Behavioral of ledUpravljac is
    signal brojac : INTEGER range 0 to 15 := 0;
    signal izlaz : STD_LOGIC := '0';
begin
    process(clk)
    begin
        if (clk'event and clk = '1') then
            if brojac < 16 then
                brojac <= brojac + 1;
            else
                brojac <= 0;
            end if;

            if brojac < to_integer(unsigned(intenzitet)) then
                izlaz <= '1';
            else
                izlaz <= '0';
            end if;
        end if;
    end process;
    
    led <= izlaz;
end Behavioral;