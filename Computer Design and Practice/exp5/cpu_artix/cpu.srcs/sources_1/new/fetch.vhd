library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;
use ieee.std_logic_unsigned.all;

entity fetch is
  Port (
    I_PC_new : in std_logic_vector(15 downto 0);
    I_PC_update : in std_logic;
    I_IR : in std_logic_vector(15 downto 0);
    I_rst : in std_logic;
    I_t1 : in std_logic;
    I_t3 : in std_logic;
    O_IR : out std_logic_vector(15 downto 0);
    O_PC : out std_logic_vector(15 downto 0);
    O_PC_read : out std_logic
    );
end fetch;

architecture Behavioral of fetch is

  signal PC : std_logic_vector(15 downto 0) := (others => '0');
  signal IR : std_logic_vector(15 downto 0) := (others => '0');
  signal PC_t : std_logic_vector(15 downto 0) := (others => '0');

begin

  O_IR <= IR;
  O_PC <= PC;
  O_PC_read <= I_t1;

  IR <= I_IR when I_t1 = '1';

  PC_t <= PC + '1' when I_t1 = '1';

  PC <= (others => '0') when I_rst = '1' else
        I_PC_new when I_rst = '0' and I_PC_update = '1' else
        PC_t when I_rst = '0' and I_PC_update = '0' and rising_edge(I_t3) and I_t1 = '0' else
        PC;

end Behavioral;
