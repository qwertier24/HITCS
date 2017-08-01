library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity tb_io_ctrl is
end tb_io_ctrl;

architecture Behavioral of tb_io_ctrl is
  component io_ctrl is
    port(
      I_CS : in std_logic;
      I_WR : in std_logic;
      I_RD : in std_logic;
      I_ADDR : in std_logic_vector(1 downto 0);
      I_DATA : in std_logic_vector(7 downto 0);
      O_RTEMP : out std_logic_vector(7 downto 0);

      O_S0 : out std_logic_vector(7 downto 0);
      O_S1 : out std_logic_vector(7 downto 0);
      O_S2 : out std_logic_vector(7 downto 0);
      O_S3 : out std_logic_vector(7 downto 0);

      I_K0 : in std_logic_vector(7 downto 0);
      I_K1 : in std_logic_vector(7 downto 0);
      I_K2 : in std_logic_vector(7 downto 0);
      I_K3 : in std_logic_vector(7 downto 0)
      );
  end component;

  signal CS, WR, RD : std_logic := '0';
  signal ADDR : std_logic_vector(1 downto 0) := (others => '0');
  signal DATA : std_logic_vector(7 downto 0) := (others => '0');
  signal K0, K1, K2, K3 : std_logic_vector(7 downto 0) := (others => '0');

begin

  uut_io_ctrl: io_ctrl
    port map(
      I_CS => CS,
      I_WR => WR,
      I_RD => RD,
      I_ADDR => ADDR,
      I_DATA => DATA,

      I_K0 => K0,
      I_K1 => K1,
      I_K2 => K2,
      I_K3 => K3
      );

  process
  begin
    CS <= '1';
    RD <= '0';
    WR <= '1';
    ADDR <= "00";
    DATA <= x"ac";
    wait for 10 ns;

    CS <= '1';
    RD <= '0';
    WR <= '1';
    ADDR <= "11";
    DATA <= x"db";
    wait for 10 ns;


    K2 <= x"1f";
    CS <= '1';
    RD <= '1';
    WR <= '0';
    ADDR <= "10";
    wait ;
  end process;

end Behavioral;
