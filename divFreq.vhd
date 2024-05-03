library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity divFreq is
	port (
		clk : in STD_LOGIC := '0';
		clk_o : buffer STD_LOGIC := '0'
	);
end divFreq;

architecture Behavioral of divFreq is
begin
	process(clk)
		variable temp : INTEGER range 0 to 50_000 := 0;
		begin
			if (clk'event and clk = '1') then
				temp := temp + 1;
				if (temp >= 50_000) then
					clk_o <= not clk_o;
					temp := 0;
				end if;
			end if;
	end process;
end Behavioral;