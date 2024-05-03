LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY z33_testbench IS
END z33_testbench;

ARCHITECTURE behavior OF z33_testbench IS 
    COMPONENT z33
    PORT(
         clk_i : IN  std_logic;
         intenzitet : IN  std_logic_vector(3 downto 0);
         led : OUT  std_logic
        );
    END COMPONENT;

   --Inputs
   signal clk_i : std_logic := '0';
   signal intenzitet : std_logic_vector(3 downto 0) := (others => '0');

   --Outputs
   signal led : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;

BEGIN
   -- Instantiate the Unit Under Test (UUT)
   uut: z33 PORT MAP (
          clk_i => clk_i,
          intenzitet => intenzitet,
          led => led
        );

   -- Clock process definitions
   clk_process :process
   begin
        clk_i <= '0';
        wait for clk_period/2;
        clk_i <= '1';
        wait for clk_period/2;
   end process;

   -- Stimulus process
   stim_proc: process
   begin	
      intenzitet <= "0000";
        wait for 16 ms;
        intenzitet <= "0001";
        wait for 16 ms;
        intenzitet <= "0010";
        wait for 16 ms;
        intenzitet <= "0011";
        wait for 16 ms;
        intenzitet <= "0100";
        wait for 16 ms;
        intenzitet <= "0101";
        wait for 16 ms;
        intenzitet <= "0110";
        wait for 16 ms;
        intenzitet <= "0111";
        wait for 16 ms;
        intenzitet <= "1000";
        wait for 16 ms;
        intenzitet <= "1001";
        wait for 16 ms;
        intenzitet <= "1010";
        wait for 16 ms;
        intenzitet <= "1011";
        wait for 16 ms;
        intenzitet <= "1100";
        wait for 16 ms;
        intenzitet <= "1101";
        wait for 16 ms;
        intenzitet <= "1110";
        wait for 16 ms;
        intenzitet <= "1111";
        wait;
   end process;
END;