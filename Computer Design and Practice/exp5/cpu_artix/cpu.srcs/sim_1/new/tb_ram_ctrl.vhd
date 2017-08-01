library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity tb_ram_ctrl is
end tb_ram_ctrl;

architecture Behavioral of tb_ram_ctrl is

  component ram_ctrl is
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
  end component;

  signal PC : std_logic_vector(15 downto 0);
  signal PC_read : std_logic;
  signal IR : std_logic_vector(15 downto 0);

  signal CS, WR, RD : std_logic := '0';
  signal ADDR : std_logic_vector(15 downto 0) := (others => '0');
  signal DATA : std_logic_vector(7 downto 0) := (others => '0');

  signal IO_DATA : std_logic_vector(15 downto 0);

begin

  uut_ram_ctrl: ram_ctrl
    port map(
      I_PC => PC,
      I_PC_read => PC_read,
     
      I_CS => CS,
      I_WR => WR,
      I_RD => RD,
      I_ADDR => ADDR,
      I_DATA => DATA,

      IO_DATA => IO_DATA
      );

  process
  begin
    PC <= x"00ac";
    PC_read <= '1';
    IO_DATA <= x"00db";
    wait for 10 ns;
    PC_read <= '0';
    IO_DATA <= (others => 'Z');
    wait for 10 ns;
    ADDR <= x"0321";
    CS <= '1';
    WR <= '0';
    RD <= '1';
    IO_DATA <= x"fedc";
    wait for 10 ns;
    IO_DATA <= (others => 'Z');
    ADDR <= x"0102";
    DATA <= x"34";
    CS <= '1';
    WR <= '1';
    RD <= '0';
    wait;
  end process;

end Behavioral;
