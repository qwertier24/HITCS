library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity tb_cpu is
end tb_cpu;

architecture Behavioral of tb_cpu is
  component cpu is
    port(
      I_CLK : in std_logic;
      I_RST : in std_logic;

      I_K0 : in std_logic_vector(7 downto 0);
      I_K1 : in std_logic_vector(7 downto 0);
      I_K2 : in std_logic_vector(7 downto 0);
      I_K3 : in std_logic_vector(7 downto 0);

      O_S0 : out std_logic_vector(7 downto 0);
      O_S1 : out std_logic_vector(7 downto 0);
      O_S2 : out std_logic_vector(7 downto 0);
      O_S3 : out std_logic_vector(7 downto 0);

      O_ram_ADDR : out std_logic_vector(15 downto 0);
      IO_ram_DATA : inout std_logic_vector(15 downto 0);
      O_ram_NCS : out std_logic;
      O_ram_NRD : out std_logic;
      O_ram_NWR : out std_logic;
      O_ram_NBH : out std_logic;
      O_ram_NBL : out std_logic
      );
  end component;

  signal CLK, RST : std_logic := '0';
  signal K0, K1, K2, K3 : std_logic_vector(7 downto 0);
  signal ram_DATA : std_logic_vector(15 downto 0);

begin

  uut_cpu : cpu
    port map(
      I_CLK => CLK,
      I_RST => RST,
      I_K0 => K0,
      I_K1 => K1,
      I_K2 => K2,
      I_K3 => K3,
      IO_ram_DATA => ram_DATA
      );

  clk <= not clk after 5 ns;

  process
  begin
    RST <= '1';
    wait for 10 ns;
    RST <= '0';
    wait;
  end process;

  process
  begin
    K0 <= x"00";
    K1 <= x"00";
    K2 <= x"00";
    K3 <= x"00";
    wait for 10 ns;
    wait for 5 ns;

    ram_DATA <= x"0002"; -- JMP
    wait for 10 ns;
    ram_DATA <= (others => 'Z');
    wait for 30 ns;

    ram_DATA <= x"1005"; -- JZ
    wait for 10 ns;
    ram_DATA <= (others => 'Z');
    wait for 30 ns;

    ram_DATA <= x"4001"; -- MVI
    wait for 10 ns;
    ram_DATA <= (others => 'Z');
    wait for 30 ns;

    ram_DATA <= x"1002"; -- JZ
    wait for 10 ns;
    ram_DATA <= (others => 'Z');
    wait for 30 ns;

    ram_DATA <= x"4707"; -- MVI
    wait for 10 ns;
    ram_DATA <= (others => 'Z');
    wait for 30 ns;

    ram_DATA <= x"2007"; -- ADD
    wait for 10 ns;
    ram_DATA <= (others => 'Z');
    wait for 30 ns;

    ram_DATA <= x"3007"; -- SUB
    wait for 10 ns;
    ram_DATA <= (others => 'Z');
    wait for 30 ns;

    ram_DATA <= x"5100"; -- MOV
    wait for 10 ns;
    ram_DATA <= (others => 'Z');
    wait for 30 ns;

    ram_DATA <= x"600c"; -- STA
    wait for 10 ns;
    ram_DATA <= (others => 'Z');
    wait for 30 ns;

    ram_DATA <= x"720c"; -- LDA
    wait for 10 ns;
    ram_DATA <= (others => 'Z');
    wait for 10 ns;
    ram_DATA <= x"0001";
    wait for 10 ns;
    ram_DATA <= (others => 'Z');
    wait for 10 ns;

    ram_DATA <= x"8201"; -- OUT
    wait for 10 ns;
    ram_DATA <= (others => 'Z');
    wait for 30 ns;

    ram_DATA <= x"9301"; -- IN
    wait for 10 ns;
    ram_DATA <= (others => 'Z');
    wait for 10 ns;
    K1 <= x"db";
    wait for 20 ns;

    wait;
  end process;

end Behavioral;
