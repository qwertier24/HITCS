----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 2017/05/04 15:41:05
-- Design Name:
-- Module Name: ram2114 - Behavioral
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity ram2114 is
Port (
    led : out STD_LOGIC_VECTOR(15 downto 0);
    clk : in STD_LOGIC;
    seg : out STD_LOGIC_VECTOR(6 downto 0);
    an : out STD_LOGIC_VECTOR(7 downto 0);
    swt : in STD_LOGIC_VECTOR(15 downto 0);
    btn : in STD_LOGIC_VECTOR(4 downto 0)
);
end ram2114;

architecture Behavioral of ram2114 is

  procedure show_digit(signal num : INTEGER range 0 to 16;
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

  type MATRIX_TYPE is array (63 downto 0) of STD_LOGIC_VECTOR (63 downto 0);
  signal matrix : MATRIX_TYPE;
  signal row_address : integer;
  signal col_address : integer;

  signal WE : STD_LOGIC := '0';
  signal CS : STD_LOGIC := '1';
  signal A : STD_LOGIC_VECTOR(9 downto 0);
  signal data : STD_LOGIC_VECTOR(3 downto 0);
  signal q : STD_LOGIC_VECTOR(3 downto 0);
  signal num : integer;

  signal cur_r : integer range 0 to 100 := 0;
  signal max_r : integer range 0 to 100 := 100;
  signal cur_w : integer range 0 to 100 := 0;
  signal max_w : integer range 0 to 100 := 100;

  signal clk1khz_n : STD_LOGIC_VECTOR(16 downto 0) := "11000011010100000";
  signal clk1khz_i : STD_LOGIC_VECTOR(16 downto 0) := (others => '0');
  signal clk1khz : STD_LOGIC := '0';
  signal mark_q_d : STD_LOGIC := '0';

begin

  A <= swt(9 downto 0);
  data <= swt(15 downto 12);

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
        if q = "0000" then
          num <= 0;
        elsif q = "ZZZZ" then
          num <= 0;
        else
          num <= to_integer(unsigned(q));
        end if;
        an <= "11111110";
        show_digit(num, seg);
      else
        if data = "0000" then
          num <= 0;
        elsif data = "ZZZZ" then
          num <= 16;
        else
          num <= to_integer(unsigned(data));
        end if;
        an <= "11101111";
        show_digit(num, seg);
      end if;
    end if;
  end process;

  process(btn, swt, clk)
  begin
    row_address <= to_integer(unsigned(A(8 downto 3)));
    col_address <= to_integer(unsigned(A(9 downto 9) * "1000")) + to_integer(unsigned(A(2 downto 0)));
    if btn = "00010" then -- read
      WE <= '1';
      CS <= '0';
      for I in 0 to 3 loop
        q(I) <= matrix(row_address)(col_address+I*16);
      end loop;
    elsif btn = "10000" then -- write
      WE <= '0';
      CS <= '0';
      for I in 0 to 3 loop
        matrix(row_address)(col_address+I*16) <= data(I);
      end loop;
    else
      CS <= '1';
      q <= "ZZZZ";
    end if;
  end process;

end Behavioral;
