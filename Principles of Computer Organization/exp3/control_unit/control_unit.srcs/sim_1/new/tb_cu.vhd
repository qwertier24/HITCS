----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2017/06/17 12:08:50
-- Design Name: 
-- Module Name: tb_cu - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.numeric_std.all;

library UNISIM;
use UNISIM.VComponents.all;

entity tb_cu is
--  Port ( );
end tb_cu;

architecture Behavioral of tb_cu is

  component perform
    port(
      clk: in STD_LOGIC;
      led: out STD_LOGIC_VECTOR(15 downto 0);
      seg: out STD_LOGIC_VECTOR(6 downto 0);
      an: out STD_LOGIC_VECTOR(7 downto 0);
      swt: in STD_LOGIC_VECTOR(15 downto 0);
      btnu: in STD_LOGIC;
      btnc: in STD_LOGIC;
      btnl: in STD_LOGIC;
      btnr: in STD_LOGIC;
      btnd: in STD_LOGIC
      );
  end component;
  signal clk: STD_LOGIC:='0';
  signal led: STD_LOGIC_VECTOR(15 downto 0):=(others => '0');
  signal seg: STD_LOGIC_VECTOR(6 downto 0):=(others=>'0');
  signal an: STD_LOGIC_VECTOR(7 downto 0):=(others=>'0');
  signal swt: STD_LOGIC_VECTOR(15 downto 0):=(others=>'0');
  signal btnu,btnc,btnl,btnr,btnd : STD_LOGIC := '0';

begin

  m_perform: perform
    port map(
      clk=>clk,
      led=>led,
      seg=>seg,
      an=>an,
      swt=>swt,
      btnu=>btnu,
      btnc=>btnc,
      btnl=>btnl,
      btnr=>btnr,
      btnd=>btnd
      );

  btnu <= not btnu after 5 ns;
  swt <= swt + 1 after 90 ns;

end Behavioral;
