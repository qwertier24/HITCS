----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 2017/04/30 23:02:02
-- Design Name:
-- Module Name: ram - Behavioral
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

entity ram is
port (
    WE : in STD_LOGIC;
    CS : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR(9 downto 0);
    IO : inout STD_LOGIC_VECTOR(3 downto 0);
    CLK : in STD_LOGIC
);
end ram;

architecture Behavioral of ram is

  type MATRIX_TYPE is array (63 downto 0) of STD_LOGIC_VECTOR (63 downto 0);
  signal matrix : MATRIX_TYPE;
  signal row_address : integer;
  signal col_address : integer;
  signal max_c : STD_LOGIC_VECTOR(6 downto 0) := "1100100";
  signal cur_c : STD_LOGIC_VECTOR(6 downto 0) := (others => '0');
  signal max_r : STD_LOGIC_VECTOR(6 downto 0) := "1100100";
  signal cur_r : STD_LOGIC_VECTOR(6 downto 0) := (others => '0');

begin

  process(WE, CS, A, CLK)
  begin
    row_address <= to_integer(unsigned(A(8 downto 3)));
    col_address <= to_integer(unsigned(A(9 downto 9) * "1000")) + to_integer(unsigned(A(2 downto 0)));
    if (CS = '0' and WE = '0') then -- input
      cur_r <= (others => '0');
      if rising_edge(CLK) then
        cur_c <= cur_c + 1;
        if cur_c = max_c then
          cur_c <= "0001011";
        end if;
      end if;
      if rising_edge(CLK) and cur_c = "0000100" then
        for I in 0 to 3 loop
          matrix(row_address)(col_address+I*16) <= IO(I);
        end loop;
      end if;
    elsif (CS = '0' and WE = '1') then -- output
      cur_c <= (others => '0');
      if rising_edge(CLK) then
        cur_r <= cur_r + 1;
        if cur_r = max_r then
          cur_c <= "0001011";
        end if;
      end if;
      if cur_r > "0000100" then
        for I in 0 to 3 loop
          IO(I) <= matrix(row_address)(col_address+I*16);
        end loop;
      end if;
    else
      cur_r <= (others => '0');
      cur_c <= (others => '0');
      IO <= "ZZZZ";
    end if;
  end process;

end Behavioral;
