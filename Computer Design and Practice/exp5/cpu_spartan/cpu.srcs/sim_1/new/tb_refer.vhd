library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity tb_refer is
end tb_refer;

architecture Behavioral of tb_refer is

  component refer is
    port (
    I_t3 : in std_logic;

    I_IR : in std_logic_vector(15 downto 0);

    I_ALU : in std_logic_vector(7 downto 0);
    I_addr : in std_logic_vector(15 downto 0);

    O_CS_ram : out std_logic;
    O_WR_ram : out std_logic;
    O_RD_ram : out std_logic;
    I_data_ram : in std_logic_vector(7 downto 0);
    O_data_ram : out std_logic_vector(7 downto 0);
    O_addr_ram : out std_logic_vector(15 downto 0);
    O_RTEMP : out std_logic_vector(7 downto 0);

    O_CS_io : out std_logic;
    O_WR_io : out std_logic;
    O_RD_io : out std_logic;
    I_data_io : in std_logic_vector(7 downto 0);
    O_data_io : out std_logic_vector(7 downto 0);
    O_addr_io : out std_logic_vector(1 downto 0)
      );
  end component;

  signal t3 : std_logic;
  signal IR : std_logic_vector(15 downto 0);
  signal ALU : std_logic_vector(7 downto 0);
  signal addr : std_logic_vector(15 downto 0);
  signal data_ram, data_io : std_logic_vector(7 downto 0);

begin

  uut_refer : refer
    port map(
      I_t3 => t3,
      I_IR => IR,
      I_ALU => ALU,
      I_addr => addr,
      I_data_ram => data_ram,
      I_data_io => data_io
      );

  process
  begin
    t3 <= '0';
    wait for 20 ns;
    t3 <= '1';
    wait for 10 ns;
    t3 <= '0';
    wait for 10 ns;
  end process;

  process
  begin
    IR <= x"0000";
    data_ram <= x"12";
    data_io <= x"34";
    wait for 40 ns;
    
    ALU <= x"bd";
    IR <= x"60ac"; -- STA
    addr <= x"00ac";
    wait for 40 ns;
    
    ALU <= x"97";
    IR <= x"70db"; -- LDA
    addr <= x"00db";
    wait for 40 ns;
    
    ALU <= x"35";
    IR <= x"8003"; -- OUT
    wait for 40 ns;

    ALU <= x"24";
    IR <= x"9001"; -- IN
    wait for 40 ns;
  end process;

end Behavioral;
