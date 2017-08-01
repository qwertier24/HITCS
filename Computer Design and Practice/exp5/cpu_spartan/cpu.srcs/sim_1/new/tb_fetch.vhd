library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity tb_fetch is
--  Port ( );
end tb_fetch;

architecture Behavioral of tb_fetch is

  component fetch is
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
  end component;

  signal I_PC_new, I_IR : std_logic_vector(15 downto 0) := (others => '0');
  signal I_rst : std_logic := '1';
  signal I_t1, I_PC_update, I_t3 : std_logic := '0';
  signal clk : std_logic := '0';
  signal O_IR, O_PC : std_logic_vector(15 downto 0);
  signal O_PC_read : std_logic;

begin

  uut_fetch : fetch
    port map(
      I_PC_new => I_PC_new,
      I_PC_update => I_PC_update,
      I_IR => I_IR,
      I_rst => I_rst,
      I_t1 => I_t1,
      I_t3 => I_t3,
      O_IR => O_IR,
      O_PC => O_PC,
      O_PC_read => O_PC_read
      );

  clk <= not clk after 5 ns;

  process
  begin
    I_rst <= '1';
    wait for 10 ns;
    I_rst <= '0';
    wait;
  end process;

  process(O_PC_read)
  begin
    if O_PC_read = '1' then
      I_IR <= O_PC;
    end if;
  end process;

  process
  begin
    I_t1 <= '0';
    wait for 10 ns;
    I_t1 <= '1';
    wait for 10 ns;
    I_t1 <= '0';
    wait for 20 ns;
  end process;

  process
  begin
    I_t3 <= '0';
    wait for 30 ns;
    I_t3 <= '1';
    wait for 10 ns;
  end process;

  process
  begin
    wait for 10 ns; -- wait for reset
    
    I_PC_update <= '0';
    wait for 30 ns;
    I_PC_update <= '1';
    I_PC_new <= "0000000000000101";
    wait for 10 ns;
    
    I_PC_update <= '0';
    wait for 30 ns;
    I_PC_update <= '0';
    I_PC_new <= "0000000000000001";
    wait for 10 ns;

    I_PC_update <= '0';
    wait for 10 ns;
    wait;
  end process;

end Behavioral;
