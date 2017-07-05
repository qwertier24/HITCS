----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 2017/04/10 11:36:07
-- Design Name:
-- Module Name: bus_controller - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity bus_controller is
port (
    led : out STD_LOGIC_VECTOR(15 downto 0);
    clk : in STD_LOGIC;
    seg : out STD_LOGIC_VECTOR(6 downto 0);
    AN : out STD_LOGIC_VECTOR(7 downto 0);
    swt : in STD_LOGIC_VECTOR(15 downto 0);
    btn : in STD_LOGIC_VECTOR(4 downto 0)
);
end bus_controller;


architecture Behavioral of bus_controller is


  procedure show_digit(signal clk : in STD_LOGIC;
                       signal num : INTEGER range 0 to 15;
                       signal an : out STD_LOGIC_VECTOR(7 downto 0);
                       signal seg : out STD_LOGIC_VECTOR(6 downto 0)) is
  begin
    an <= "11111110";
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
      when others =>
        seg <= "1000000";
    end case;
  end;

  procedure inc_digit(signal num : inout INTEGER range 0 to 15) is
  begin
    if num = 15 then
      num <= 0;
    else
      num <= num + 1;
    end if;
  end;

  procedure dec_digit(signal num : inout INTEGER range 0 to 15) is
  begin
    if num = 0 then
      num <= 15;
    else
      num <= num - 1;
    end if;
  end;

  signal led_int : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
  signal sseg_i : STD_LOGIC_VECTOR(2 downto 0) := (others=>'0');

  signal clk1hz : std_logic := '0';
  signal clk1hz_n: STD_LOGIC_VECTOR(25 downto 0) := "10011000100101101000000000";
  signal clk1hz_i : STD_LOGIC_VECTOR(25 downto 0) := (others => '0');

  signal clk1khz : std_logic := '0';
  signal clk1khz_n : std_logic_vector(16 downto 0) := "11000011010100000";
  signal clk1khz_i : std_logic_vector(16 downto 0) := "11000011010100000";

  signal clk4hz : STD_LOGIC := '0';
  signal clk4hz_n : STD_LOGIC_VECTOR(23 downto 0) := "100110001001011010000000";
  signal clk4hz_i : STD_LOGIC_VECTOR(23 downto 0) := (others => '0');

  signal count : INTEGER range 0 to 15 := 0;

  signal BS : STD_LOGIC := '0';
  signal BS_num : INTEGER range 0 to 15 := 0;
  signal BR : STD_LOGIC := '0';

  signal cnt_4hz : STD_LOGIC_VECTOR(1 downto 0) := "00";

begin
  led <= led_int;

  process(clk, clk1hz) begin
    if rising_edge(clk) then
      clk1hz_i <= clk1hz_i + 1;
      if (clk1hz_i >= clk1hz_n) then
        clk1hz <= not clk1hz;
        clk1hz_i <= (others => '0');
      end if;

      clk1khz_i <= clk1khz_i + 1;
      if (clk1khz_i >= clk1khz_n) then
        clk1khz <= not clk1khz;
        clk1khz_i <= (others => '0');
      end if;

      clk4hz_i <= clk4hz_i + 1;
      if (clk4hz_i >= clk4hz_n) then
        clk4hz <= not clk4hz;
        clk4hz_i <= (others => '0');
      end if;
    end if;
  end process;

  process(clk1hz, count, clk1khz, BS, BS_num)
  begin
    if rising_edge(clk4hz) then
      cnt_4hz <= cnt_4hz + 1;
      if swt = "0000000000000000" then
        BR <= '0';
      else
        BR <= '1';
      end if;
      case cnt_4hz is
        when "00" =>
          if bs = '0' and swt(count) = '0' and BR = '1' then
            inc_digit(count);
          end if;
        when "01" =>
          if bs = '0' and swt(count) = '1' then
            bs <= '1';
            BS_num <= count;
            led_int(count) <= '1';
          end if;
        when "10" =>
          if bs = '1' and swt(BS_num) = '0' then
            bs <= '0';
            led_int(BS_num) <= '0';
          end if;
        when "11" =>
          if bs = '0' and BR = '0' then
            if btn = "00010" then
              inc_digit(count);
            elsif btn = "10000" then
              dec_digit(count);
            end if;
          end if;
      end case;
    end if;
    --if rising_edge(clk1hz) then
    --  if bs = '0' and swt(count) = '0' then
    --    inc_digit(count);
    --  elsif bs = '0' and swt(count) = '1' then
    --    bs <= '1';
    --    BS_num <= count;
    --    led_int(count) <= '1';
    --  elsif bs = '1' and swt(BS_num) = '0' then
    --    bs <= '0';
    --    led_int(BS_num) <= '0';
    --  elsif bs = '1' and swt(BS_num) = '1' then
    --    if btn = "00010" then
    --      inc_digit(count);
    --    elsif btn = "10000" then
    --      dec_digit(count);
    --    end if;
    --  end if;
    --end if;
    show_digit(clk1khz, count, AN, seg);
  end process;

end Behavioral;
