library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity tb_shift_rgt is
--  Port ( );
end tb_shift_rgt;

architecture Behavioral of tb_shift_rgt is
  component shift_rgt
    port (A, clk: in STD_LOGIC;
          B: out STD_LOGIC);
  end component;

  signal clk: STD_LOGIC:= '0';
  signal A: STD_LOGIC:= '0';
  signal B: STD_LOGIC:='0';

begin

  u_shift_rgt:shift_rgt port map(
    A => A,
    clk => clk,
    B => B);

  clk <= not clk after 5 ns;

  process
  begin
    wait for 2 ns;
    A <= '1';
    wait for 10 ns;
    A <= '0';
    wait for 10 ns;
    A <= '1';
    wait for 10 ns;
    A <= '1';
    wait for 8 ns;
  end process;

end Behavioral;
