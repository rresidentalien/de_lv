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
    signal pwm_counter : INTEGER range 0 to 15 := 0;
    signal pwm_out : STD_LOGIC := '0';
begin
    process(clk)
    begin
        if (clk'event and clk = '1') then
            if pwm_counter < 16 then
                pwm_counter <= pwm_counter + 1;
            else
                pwm_counter <= 0;
            end if;

            if pwm_counter < to_integer(unsigned(intenzitet)) then
                pwm_out <= '1';
            else
                pwm_out <= '0';
            end if;
        end if;
    end process;
    
    led <= pwm_out;
end Behavioral;