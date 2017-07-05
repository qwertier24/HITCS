----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 2017/05/01 14:44:24
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity perform is
Port (
    led : out STD_LOGIC_VECTOR(15 downto 0);
    clk : in STD_LOGIC;
    seg : out STD_LOGIC_VECTOR(6 downto 0);
    an : out STD_LOGIC_VECTOR(7 downto 0);
    swt : in STD_LOGIC_VECTOR(15 downto 0);
    btn : in STD_LOGIC_VECTOR(4 downto 0)
);
end perform;

architecture Behavioral of perform is

  component ram
    PORT (
      WE : in STD_LOGIC;
      CS : in STD_LOGIC;
      A : in STD_LOGIC_VECTOR(9 downto 0);
      IO : inout STD_LOGIC_VECTOR(3 downto 0);
      CLK : in STD_LOGIC
    );
  end component;

  signal tWE : STD_LOGIC := '0';
  signal tCS : STD_LOGIC := '1';
  signal tA : STD_LOGIC_VECTOR(9 downto 0);
  signal tIO : STD_LOGIC_VECTOR(3 downto 0);
  signal num : integer range 0 to 16;
  
  signal cur_t : integer range 0 to 100 := 0;
  signal max_t : integer range 0 to 100 := 100;

  signal clk1mhz_n : STD_LOGIC_VECTOR(6 downto 0) := "1100100";
  signal clk1mhz_i : STD_LOGIC_VECTOR(6 downto 0) := (others => '0');
  signal clk1mhz : STD_LOGIC := '0';

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

begin

  m_ram: ram
    port map(
      WE => tWE,
      CS => tCS,
      A => tA,
      IO => tIO,
      CLK => clk
    );

  led(0) <= tWE;
  led(1) <= tCS;
--  led(5 downto 2) <= tIO;

  process(tIO, CLK)
  begin
    if rising_edge(CLK) then
      if tIO = "0000" then
        num <= 0;
      elsif tIO = "ZZZZ" then
        num <= 16;
      else
        num <= to_integer(unsigned(tIO));
      end if;
      an <= "11111110";
      show_digit(num, seg);
    end if;
  end process;

  tA <= swt(9 downto 0);

  process(CLK)
  begin
    if rising_edge(CLK) then
      clk1mhz_i <= clk1mhz_i + 1;
      if clk1mhz_i = clk1mhz_n then
        clk1mhz <= not clk1mhz;
        clk1mhz_i <= (others => '0');
      end if;
    end if;
  end process;

  process(btn, swt, clk)
  begin
    if btn = "00010" then -- output
      tWE <= '1';
      tCS <= '0';
      cur_t <= 0;
    elsif btn = "10000" then -- input
      tWE <= '0';
      tCS <= '0';
      if rising_edge(clk) then
        cur_t <= cur_t + 1;
        if cur_t = max_t then
            cur_t <= 10;
        end if;
      end if;
      if cur_t > 2 then
        if (tCS = '0' and tWE = '0') then
          tIO <= swt(15 downto 12);
        else
          tIO <= "ZZZZ";
        end if;
      end if;
    else
      cur_t <= 0;
      tCS <= '1';
      tIO <= "ZZZZ";
    end if;
  end process;

end Behavioral;