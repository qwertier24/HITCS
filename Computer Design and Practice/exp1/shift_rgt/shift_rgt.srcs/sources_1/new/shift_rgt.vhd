library IEEE;
use IEEE.std_logic_1164.all;

entity shift_rgt is
    port ( A,CLK: in STD_LOGIC;
               B: out STD_LOGIC);
end shift_rgt;

architecture f_shift_rgt of shift_rgt is
  COMPONENT dff
   port ( d,CLK: in STD_LOGIC;
               q: out STD_LOGIC);
  END COMPONENT;
  SIGNAL x: STD_LOGIC_VECTOR(0 to 4) := (others=>'0');

BEGIN
  x(0)<=A;

  G1:FOR i IN 0 to 3 GENERATE
    U1:dff PORT MAP (x(i), CLK, x(i+1));
  END GENERATE;

  B<=x(4);

END f_shift_rgt ;
