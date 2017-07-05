----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2017/05/03 01:35:06
-- Design Name: 
-- Module Name: sim_ram - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sim_ram is
--  Port ( );
end sim_ram;

architecture Behavioral of sim_ram is

  component perform
    port (
      led : out STD_LOGIC_VECTOR(15 downto 0);
      clk : in STD_LOGIC;
      seg : out STD_LOGIC_VECTOR(6 downto 0);
      an : out STD_LOGIC_VECTOR(7 downto 0);
      swt : in STD_LOGIC_VECTOR(15 downto 0);
      btn : in STD_LOGIC_VECTOR(4 downto 0)
    );
  end component;


  signal led : STD_LOGIC_VECTOR(15 downto 0);
  signal clk : STD_LOGIC := '0';
  signal seg : STD_LOGIC_VECTOR(6 downto 0);
  signal an : STD_LOGIC_VECTOR(7 downto 0);
  signal swt : STD_LOGIC_VECTOR(15 downto 0);
  signal btn : STD_LOGIC_VECTOR(4 downto 0);

  component ram
    PORT (
      WE : in STD_LOGIC;
      CS : in STD_LOGIC;
      A : in STD_LOGIC_VECTOR(9 downto 0);
      IO : inout STD_LOGIC_VECTOR(3 downto 0);
      CLK : in STD_LOGIC
    );
  end component;

  signal tWE : STD_LOGIC := '0';
  signal tCS : STD_LOGIC := '1';
  signal tA : STD_LOGIC_VECTOR(9 downto 0);
  signal tIO : STD_LOGIC_VECTOR(3 downto 0);

begin

  uu : perform
    port map(
      led => led,
      clk => clk,
      seg => seg,
      an => an,
      swt => swt,
      btn => btn
      );

  m_ram: ram
    port map(
      WE => tWE,
      CS => tCS,
      A => tA,
      IO => tIO,
      CLK => clk
    );


  clk_gen: process
  begin
    clk <= not clk;
    wait for 5 ns;
  end process;
  
  work : process
  begin      
    wait for 100 ns;
    btn <= "10000";
    swt(15 downto 12) <= "0001";
    swt(11 downto 0) <= "000000000001";
    
    wait for 100ns;
    btn <= "00000";
    
--    wait for 100 ns;
--    btn <= "10000";
--    swt(15 downto 12) <= "0110";
--    swt(11 downto 0) <= "000000000001";
    
    wait for 100 ns;
    btn <= "00010";
    swt(11 downto 0) <= "000000000001";
    wait for 100ns;
    btn <= "00000";
    
    wait for 100 ns;
    btn <= "10000";
    swt(15 downto 12) <= "0011";
    swt(11 downto 0) <= "000000000000";   
    wait for 100ns;
    btn <= "00000";
    
    wait for 100 ns;
    btn <= "00010";
    swt(11 downto 0) <= "000000000001";
    wait for 100ns;
    btn <= "00000";
--    tCS <= '0';
--    tWE <= '0';
--    tA <= "0000000000";
--    if tCS = '0' and tWE = '0' then
--      tIO <= "0001";
--    end if;
--    wait for 100 ns;

--    tCS <= '0';
--    tWE <= '0';
--    tA <= "0000000001";
--    if tCS = '0' and tWE = '0' then
--      tIO <= "0011";
--    end if;
--    wait for 100 ns;

--    tCS <= '0';
--    tWE <= '1';
--    tA <= "0000000000";
--    wait for 100 ns;

--    tCS <= '0';
--    tWE <= '1';
--    tA <= "0000000001";
--    wait for 100 ns;

  end process;
end Behavioral;
