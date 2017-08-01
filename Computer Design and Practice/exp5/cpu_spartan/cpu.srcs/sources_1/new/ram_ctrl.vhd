library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;
use ieee.std_logic_unsigned.all;

entity ram_ctrl is
  port (
    I_PC : in std_logic_vector(15 downto 0);
    I_PC_read : in std_logic;
    O_IR : out std_logic_vector(15 downto 0);

    I_CS : in std_logic;
    I_WR : in std_logic;
    I_RD : in std_logic;
    I_ADDR : in std_logic_vector(15 downto 0);
    I_DATA : in std_logic_vector(7 downto 0);
    O_RTEMP : out std_logic_vector(7 downto 0);

    O_ADDR : out std_logic_vector(15 downto 0);
    IO_DATA : inout std_logic_vector(15 downto 0);
    O_NCS : out std_logic;
    O_NRD : out std_logic;
    O_NWR : out std_logic;
    O_NBH : out std_logic;
    O_NBL : out std_logic
    );
end ram_ctrl;

architecture Behavioral of ram_ctrl is

begin

  O_IR <= IO_DATA when I_PC_read = '1';

  O_RTEMP <= IO_DATA(7 downto 0) when I_CS = '1' and I_RD = '1' and I_WR = '0';

  O_ADDR <= I_PC when I_PC_read = '1' else
            I_ADDR when I_PC_read = '0' and I_CS = '1';

  IO_DATA(7 downto 0) <= I_DATA when I_CS = '1' and I_WR = '1' and I_RD = '0' else
                         (others => 'Z');
  IO_DATA(15 downto 8) <= (others => 'Z');

  O_NCS <= '0' when I_PC_read = '1' or I_CS = '1' else
           '1';
  O_NRD <= '0' when I_PC_read = '1' or (I_CS = '1' and I_RD = '1' and I_WR = '0') else
           '1';
  O_NWR <= '0' when I_CS = '1' and I_WR = '1' and I_RD = '0' else
           '1';
  O_NBH <= '0' when I_PC_read = '1' else
           '1' when I_CS = '1';
  O_NBL <= '0';

end Behavioral;
