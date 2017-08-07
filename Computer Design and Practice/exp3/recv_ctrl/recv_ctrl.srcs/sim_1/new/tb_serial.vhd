--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:43:26 07/07/2017
-- Design Name:   
-- Module Name:   D:/Codes/ISE/sjysj/SerialContrl/test_top.vhd
-- Project Name:  SerialContrl
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: top
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
--USE ieee.numeric_std.ALL;

ENTITY test_top IS
END test_top;

ARCHITECTURE behavior OF test_top IS 
  
  -- Component Declaration for the Unit Under Test (UUT)
  
  COMPONENT serial
    PORT(
      DATA : IN  std_logic;
      CLK : IN  std_logic;
      CSN : IN  std_logic;
      WRN : IN  std_logic;
      RDN : IN  std_logic;
      A : IN  std_logic_vector(1 downto 0);
      INTN : OUT  std_logic;
      D : INOUT  std_logic_vector(7 downto 0)
      );
  END COMPONENT;
  

  --Inputs
  signal DATA : std_logic := '1';
  signal CLK : std_logic := '0';
  signal CSN : std_logic := '0';
  signal WRN : std_logic := '1';
  signal RDN : std_logic := '0';
  signal A : std_logic_vector(1 downto 0) := (others => '0');

  --BiDirs
  signal D : std_logic_vector(7 downto 0);

  --Outputs
  signal INTN : std_logic;

  -- Clock period definitions
  constant clkj : time := 10 ns;
  
BEGIN
  
  -- Instantiate the Unit Under Test (UUT)
  uut: serial PORT MAP (
    DATA => DATA,
    CLK => CLK,
    CSN => CSN,
    WRN => WRN,
    RDN => RDN,
    A => A,
    INTN => INTN,
    D => D
    );

  -- Clock process definitions
  CLK_process :process
  begin
    CLK <= '0';
    wait for clkj/2;
    CLK <= '1';
    wait for clkj/2;
  end process;
  

  -- Stimulus process
  stim_proc: process
  begin		
    -- hold reset state for 100 ns.
    wait for 20 ns;	
    wrn<='0';
    rdn<='1';
    wait for clkj;
    wrn<='1';
    rdn<='0';
    a<="01";
    wait for clkj;
    data<='0';--start
    wait for clkj;
    data<='1';
    wait for clkj;
    data<='0';
    wait for clkj;
    data<='1';
    wait for clkj;
    data<='0';
    wait for clkj;
    data<='1';
    wait for clkj;
    data<='0';
    wait for clkj;
    data<='1';
    wait for clkj;
    data<='0';
    wait for clkj;
    data<='0';
    wait for clkj;
    data<='1';
    wait for clkj*3;
    a<="00";
    
    wait for clkj;
    a<="01";
    
    wait for clkj;
    data<='0';
    wait for clkj;
    data<='1';
    wait for clkj*8;
    data<='0';
    wait for clkj;
    data<='1';
    wait for clkj*3;
    a<="00";
    wait for clkj;
    a<="01";
    
    wait for clkj;
    rdn<='1';
    wrn<='0';
    
    wait for clkj;
    a<="11";
    
    wait for clkj;
    rdn<='0';
    wrn<='1';
    
    wait for clkj;
    a<="01";
    data<='0';
    wait for clkj*5;
    data<='1';
    wait for clkj*5;
    a<="00";
    
    wait for clkj;
    a<="10";
    wait for clkj;
    rdn<='1';
    wrn<='0';
    wait for clkj*10;

    a<="00";
    wrn<='0';
    rdn<='1';
    wait for clkj;
    wrn<='1';
    rdn<='0';
    
    wait for clkj;--------------------------------Ƭѡ
    csn<='1';
    
    
    wait for clkj;
    
    
    wrn<='1';
    rdn<='0';
    a<="01";
    wait for clkj;
    data<='0';--start
    wait for clkj;
    data<='1';
    wait for clkj;
    data<='0';
    wait for clkj;
    data<='1';
    wait for clkj;
    data<='0';
    wait for clkj;
    data<='1';
    wait for clkj;
    data<='0';
    wait for clkj;
    data<='1';
    wait for clkj;
    data<='0';
    wait for clkj;
    data<='0';
    wait for clkj;
    data<='1';
    wait for clkj*3;
    a<="00";
    
    wait for clkj;
    a<="01";
    
    wait for clkj;
    data<='0';
    wait for clkj;
    data<='1';
    wait for clkj*8;
    data<='0';
    wait for clkj;
    data<='1';
    wait for clkj*3;
    a<="00";
    wait for clkj;
    a<="01";
    
    wait for clkj;
    rdn<='1';
    wrn<='0';
    
    wait for clkj;
    a<="11";
    
    wait for clkj;
    rdn<='0';
    wrn<='1';
    
    wait for clkj;
    a<="00";
    data<='0';
    wait for clkj*5;
    data<='1';
    wait for clkj*5;
    a<="01";
    
    wait for clkj;
    a<="10";
    wait for clkj;
    rdn<='1';
    wrn<='0';
    wait for clkj*10;

    a<="00";
    wrn<='0';
    rdn<='1';
    wait for clkj;
    wrn<='1';
    rdn<='0';
    -- insert stimulus here 

    wait;
  end process;

END;
