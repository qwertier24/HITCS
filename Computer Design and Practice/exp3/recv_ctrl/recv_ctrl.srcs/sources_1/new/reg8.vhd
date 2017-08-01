library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity reg8 is
  port(
    clrn, clk : in std_logic;
    d : in std_logic_vector(7 downto 0);
    q : out std_logic_vector(7 downto 0)
    );
end reg8 ;

architecture main of reg8 is
begin
  process(clk, clrn)
  begin
    if clrn = '0' then
      q <= "00000000";
    elsif rising_edge(clk) then
      q <= d;
    end if;
  end process;
end main;
