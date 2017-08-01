library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity dff is
    Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           q : out STD_LOGIC);
end dff;


architecture Behavioral of dff is

signal d0: std_logic := '0';

begin

  q <= d0;
  
  process(clk, d)
  begin
    if rising_edge(clk) then
      d0 <= d;
    end if;
  end process;

end Behavioral;
