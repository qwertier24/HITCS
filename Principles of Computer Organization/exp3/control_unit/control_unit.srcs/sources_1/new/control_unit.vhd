----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 2017/06/16 21:56:33
-- Design Name:
-- Module Name: control_unit - Behavioral
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

entity control_unit is
  port (
    M0: in STD_LOGIC;
    M1: in STD_LOGIC;
    M2: in STD_LOGIC;
    T0: in STD_LOGIC;
    T1: in STD_LOGIC;
    T2: in STD_LOGIC;
    I: in STD_LOGIC;
    IND: in STD_LOGIC;
    A0: in STD_LOGIC;
    INS: in STD_LOGIC_VECTOR(9 downto 0);
    MI: out STD_LOGIC_VECTOR(20 downto 0)
  );
end control_unit;

architecture Behavioral of control_unit is

begin

  process(M1, M0, M2, T0, T1, T2, I, IND, A0)
    variable suf5: STD_LOGIC := '0';
    variable pre5: STD_LOGIC := '0';
  begin
    pre5 := INS(0) or INS(1) or INS(2) or INS(3) or INS(4);
    suf5 := INS(5) or INS(6) or INS(7) or INS(8) or INS(9);

    MI(0) <= M0 and T0 and (pre5 or suf5);
    MI(1) <= (M0 and T0 and (pre5 or suf5)) 
             or (M1 and T0 and (suf5)) 
             or (M2 and T0 and (INS(5) or INS(7)));
    MI(2) <= (M0 and T1 and (pre5 or suf5)) 
             or (M1 and T1 and (suf5)) 
             or (M2 and T1 and (INS(5) or INS(7)));
    MI(3) <= M0 and T1 and (pre5 or suf5);
    MI(4) <= M0 and T2 and (pre5 or suf5);
    MI(5) <= M0 and T2 and (pre5 or suf5);
    MI(6) <= M0 and T2 and I and (suf5);
    MI(7) <= (M0 and T2 and (not I) and (pre5 or suf5)) 
             or (M1 and T2 and (not IND) and suf5);

    MI(8) <= ((M1 and T0) and suf5) 
             or (M2 and T0 and (INS(5) or INS(6) or INS(7)));
    MI(9) <= (M1 and T2) and suf5;

    MI(10) <= M2 and T0 and INS(6);
    MI(11) <= M2 and T1 and INS(6);
    MI(12) <= M2 and T2 and INS(5);
    MI(13) <= M2 and T2 and INS(6);
    MI(14) <= M2 and T2 and INS(7);
    MI(15) <= M2 and T2 and INS(0);
    MI(16) <= M2 and T2 and INS(1);
    MI(17) <= M2 and T2 and INS(2);
    MI(18) <= M2 and T2 and INS(3);
    MI(19) <= (M2 and T2 and INS(8)) or (M2 and T2 and A0 and INS(9));
    MI(20) <= M2 and T2 and INS(4);

  end process;
end Behavioral;
