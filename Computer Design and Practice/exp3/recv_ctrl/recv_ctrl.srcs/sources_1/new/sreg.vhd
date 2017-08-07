library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;
use IEEE.std_logic_arith.all;

entity sreg is
  port(
    clk, clrn, serial : in std_logic;
    q : out std_logic_vector(7 downto 0)
    );
end sreg ;

architecture main of sreg is
  signal t : std_logic_vector(7 downto 0);
begin
  process(clk, clrn)
  begin
    if clrn = '0' then
      t <= "00000000";
    elsif rising_edge(clk) then
      t(7 downto 1) <= t(6 downto 0);
      t(0) <= serial;
    end if;
    q <= t;
  end process;
end main;
