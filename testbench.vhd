--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:39:42 04/30/2024
-- Design Name:   
-- Module Name:   /home/ise/test/zadataktb.vhd
-- Project Name:  test
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: zadatak_33
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY zadataktb IS
END zadataktb;
 
ARCHITECTURE behavior OF zadataktb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT zadatak_33
    PORT(
         clk : IN  std_logic;
         intenzitet : IN  std_logic_vector(3 downto 0);
         led : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal intenzitet : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal led : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: zadatak_33 PORT MAP (
          clk => clk,
          intenzitet => intenzitet,
          led => led
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
    begin
        -- hold reset state for 100 ns.
        wait for 100 ns;  

        -- loop through all possible values of intenzitet
        for i in 0 to 15 loop
            intenzitet <= std_logic_vector(to_unsigned(i, 4));
            wait for clk_period * 16;  -- wait for one full PWM period
        end loop;

        wait;
    end process;

END;