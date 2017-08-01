library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;
use IEEE.std_logic_arith.all;

entity count4 is
  port(
    clk : in std_logic;
    clrn : in std_logic;
    q : out std_logic_vector(3 downto 0)
    );
end count4 ;

architecture main of count4 is
begin
  process( clk, clrn )
    variable num : integer;
  begin
    if clrn = '0' then
      q <= "0000";
      num := 0;
    elsif falling_edge(clk) then
      num := num + 1;
      q <= conv_std_logic_vector(num, 4);
    end if;
  end process;
end main;
