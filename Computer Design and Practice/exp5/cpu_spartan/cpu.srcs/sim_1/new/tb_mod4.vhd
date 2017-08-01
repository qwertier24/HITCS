library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity tb_mod4 is
--  Port ( );
end tb_mod4;

architecture Behavioral of tb_mod4 is

  signal clk: std_logic := '0';
  signal rst: std_logic := '0';
  component mod4
    port(
      I_rst: in std_logic;
      I_clk: in std_logic;
      O_t1, O_t2, O_t3, O_t4: out std_logic
      );
  end component;

begin

  uut_mod4: mod4
    port map(
      I_clk => clk,
      I_rst => rst
      );

  clk <= not clk after 5 ns;

  process
  begin
    rst <= '1';
    wait for 10 ns;
    rst <= '0';
    wait;
  end process;

end Behavioral;
