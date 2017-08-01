library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;
use ieee.std_logic_unsigned.all;

entity mod4 is
  Port (
    I_rst: in std_logic;
    I_clk: in std_logic;
    O_t1, O_t2, O_t3, O_t4: out std_logic
    );
end mod4;

architecture Behavioral of mod4 is
  signal tt1 : std_logic := '1';
  signal tt2 : std_logic := '0';
  signal tt3 : std_logic := '0';
  signal tt4 : std_logic := '0';
begin

  O_t1 <= tt1;
  O_t2 <= tt2;
  O_t3 <= tt3;
  O_t4 <= tt4;

  process(I_clk, I_rst)
  begin
    if I_rst = '1' then
      tt1 <= '0';
      tt2 <= '0';
      tt3 <= '0';
      tt4 <= '0';
    elsif I_rst = '0' and rising_edge(I_clk) then
      if tt1 = '0' and  tt2 = '0' and tt3 = '0' and tt4 = '0' then
        tt1 <= '1';
        tt2 <= '0';
        tt3 <= '0';
        tt4 <= '0';
      else
        tt1 <= tt4;
        tt2 <= tt1;
        tt3 <= tt2;
        tt4 <= tt3;
      end if;
    end if;
  end process;

end Behavioral;
