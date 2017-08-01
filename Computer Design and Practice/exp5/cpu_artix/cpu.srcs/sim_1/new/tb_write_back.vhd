library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity tb_write_back is
end tb_write_back;

architecture Behavioral of tb_write_back is

  component write_back is
    port (
      I_t4 : in std_logic;
      I_IR : in std_logic_vector(15 downto 0);
      I_RTEMP : in std_logic_vector(7 downto 0);

      I_ALU : in std_logic_vector(7 downto 0);
      I_PC : in std_logic_vector(15 downto 0);

      O_REG_addr : out std_logic_vector(3 downto 0);
      O_REG_new : out std_logic_vector(7 downto 0);

      O_PC_new : out std_logic_vector(15 downto 0);
      O_PC_update : out std_logic
      );
  end component;

  signal IR : std_logic_vector(15 downto 0);
  signal t4 : std_logic;
  signal RTEMP : std_logic_vector(7 downto 0);
  signal ALU : std_logic_vector(7 downto 0);
  signal PC : std_logic_vector(15 downto 0);
  
begin

  uut_write_back: write_back
    port map(
      I_t4 => t4,
      I_IR => IR,
      I_RTEMP => RTEMP,
      I_ALU => ALU,
      I_PC => PC
      );


  process
  begin
    t4 <= '0';
    wait for 30 ns;
    t4 <= '1';
    wait for 10 ns;
  end process;

  process
  begin
    RTEMP <= x"db";
    PC <= x"0010";
    IR <= x"0000";
    ALU <= x"ac";
    wait for 40 ns;
    IR <= x"1000";
    ALU <= x"01";
    wait for 40 ns;
    IR <= x"1000";
    ALU <= x"00";
    wait for 40 ns;
    ALU <= x"ac";
    IR <= x"2000";
    wait for 40 ns;
    IR <= x"7000";
    wait for 40 ns;
  end process;

end Behavioral;
