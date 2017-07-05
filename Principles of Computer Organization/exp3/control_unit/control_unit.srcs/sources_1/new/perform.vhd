----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 2017/06/16 21:56:33
-- Design Name:
-- Module Name: perform - Behavioral
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

entity perform is
  port (
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
end perform;

architecture Behavioral of perform is

  component control_unit
    PORT (
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
  end component;

  procedure show_digit(signal num : in INTEGER range 0 to 16;
                       signal seg : out STD_LOGIC_VECTOR(6 downto 0)) is
  begin
    case num is
      when 1 =>
        seg <= "1111001";
      when 2 =>
        seg <= "0100100";
      when 3 =>
        seg <= "0110000";
      when 4 =>
        seg <= "0011001";
      when 5 =>
        seg <= "0010010";
      when 6 =>
        seg <= "0000010";
      when 7 =>
        seg <= "1111000";
      when 8 =>
        seg <= "0000000";
      when 9 =>
        seg <= "0011000";
      when 10 =>
        seg <= "0001000";
      when 11 =>
        seg <= "0000011";
      when 12 =>
        seg <= "1000110";
      when 13 =>
        seg <= "0100001";
      when 14 =>
        seg <= "0000110";
      when 15 =>
        seg <= "0001110";
      when 0 =>
        seg <= "1000000";
      when others =>
        seg <= "1111111";
    end case;
  end;

  signal M0: STD_LOGIC := '0';
  signal M1: STD_LOGIC := '0';
  signal M2: STD_LOGIC := '0';
  signal T0: STD_LOGIC := '0';
  signal T1: STD_LOGIC := '0';
  signal T2: STD_LOGIC := '0';
  signal I: STD_LOGIC := '0';
  signal IND: STD_LOGIC := '0';
  signal A0: STD_LOGIC := '0';
  signal INS: STD_LOGIC_VECTOR(9 downto 0) := (others => '0');
  signal MI: STD_LOGIC_VECTOR(20 downto 0) := (others => '0');

  signal M: integer range 0 to 2 := 0;
  signal T: integer range 0 to 2 := 0;

  signal manual_clk: STD_LOGIC := '0';
  signal clr: STD_LOGIC := '0';
  signal first16: STD_LOGIC := '1';

  signal clk1khz_n : STD_LOGIC_VECTOR(16 downto 0) := "11000011010100000";
  signal clk1khz_i : STD_LOGIC_VECTOR(16 downto 0) := (others => '0');
  signal clk1khz : STD_LOGIC := '0';
  signal mark_q_d : STD_LOGIC := '0';

begin

  m_cu: control_unit
  port map(
    M0 => M0,
    M1 => M1,
    M2 => M2,
    T0 => T0,
    T1 => T1,
    T2 => T2,
    I => I,
    IND => IND,
    A0 => A0,
    INS => INS,
    MI => MI
  );

  IND <= swt(15);
  I <= swt(14);
  A0 <= swt(13);

  process(swt)
    variable x: integer range 0 to 9;
  begin
    x := to_integer(unsigned(swt(3 downto 0)));
    for I in 0 to 9 loop
      if x = I then
        INS(I) <= '1';
      else
        INS(I) <= '0';
      end if;
    end loop;
  end process;

  process(M)
  begin
    case M is
      when 0 =>
        M0 <= '1';
        M1 <= '0';
        M2 <= '0';
      when 1 =>
        M0 <= '0';
        M1 <= '1';
        M2 <= '0';
      when 2 =>
        M0 <= '0';
        M1 <= '0';
        M2 <= '1';
    end case;
  end process;

  process(T)
  begin
    case T is
      when 0 =>
        T0 <= '1';
        T1 <= '0';
        T2 <= '0';
      when 1 =>
        T0 <= '0';
        T1 <= '1';
        T2 <= '0';
      when 2 =>
        T0 <= '0';
        T1 <= '0';
        T2 <= '1';
    end case;
  end process;

  process(CLK)
  begin
    if rising_edge(CLK) then
      clk1khz_i <= clk1khz_i + 1;
      if clk1khz_i = clk1khz_n then
        clk1khz <= not clk1khz;
        clk1khz_i <= (others => '0');
      end if;
    end if;
  end process;

  process(clk1khz)
  begin
    if rising_edge(clk1khz) then
      mark_q_d <= not mark_q_d;
      if mark_q_d = '1' then
        an <= "11111110";
        show_digit(T, seg);
      else
        an <= "11101111";
        show_digit(M, seg);
      end if;
    end if;
  end process;

  process(first16, MI)
  begin
    if first16 = '1' then
      led <= MI(15 downto 0);
    else
      led(4 downto 0) <= MI(20 downto 16);
      led(15 downto 5) <= (others => '0');
    end if;
  end process;

  clr <= btnd;

  process(btnl, btnr)
  begin
    if rising_edge(btnl) or rising_edge(btnr) then
      first16 <= not first16;
    end if;
  end process;

  manual_clk <= btnu;

  process(manual_clk)
  begin
    if rising_edge(manual_clk) then
      if T = 2 then
        T <= 0;
        if M = 1 and IND = '1' then
          M <= 1;
        elsif M = 2 then
          M <= 0;
        else
          M <= M + 1;
        end if;
      else
        T <= T + 1;
      end if;
    end if;
  end process;

end Behavioral;

