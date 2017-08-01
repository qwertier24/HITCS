library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity tb_alu is
--  Port ( );
end tb_alu;

architecture Behavioral of tb_alu is

  component alu is
    port (
      I_IR: in std_logic_vector(15 downto 0);
      I_t2: in std_logic;
      I_REG_addr : in std_logic_vector(3 downto 0);
      I_REG_new : in std_logic_vector(7 downto 0);
      O_ALU : out std_logic_vector(7 downto 0);
      O_ADDR : out std_logic_vector(15 downto 0)
      );
  end component;

  signal IR : std_logic_vector(15 downto 0);
  signal t2 : std_logic;
  signal REG_addr : std_logic_vector(3 downto 0);
  signal REG_new : std_logic_vector(7 downto 0);
  signal O_ALU : std_logic_vector(7 downto 0);
  signal ADDR : std_logic_vector(15 downto 0);

begin

  uut_alu : alu
    port map(
      I_IR => IR,
      I_t2 => t2,
      I_REG_addr => REG_addr,
      I_REG_new => REG_new,
      O_ALU => O_ALU,
      O_ADDR => ADDR
      );

  process
  begin
  end process;

  process
  begin

    REG_addr <= "0000";
    REG_new <= x"01";
    wait for 0.01 ns;
    REG_addr <= "0001";
    REG_new <= x"02";
    wait for 0.01 ns;
    REG_addr <= "0111";
    REG_new <= x"05";
    wait for 0.01 ns;
    REG_new <= x"00";

    -- JMP
    REG_addr <= "1000";
    IR <= x"00ac";
    t2 <= '1';
    wait for 10 ns;
    t2 <= '0';
    wait for 10 ns;
    wait for 10 ns;

    -- JZ
    REG_addr <= "1000";
    IR <= x"10db";
    t2 <= '0';
    wait for 10 ns;
    t2 <= '1';
    wait for 10 ns;
    t2 <= '0';
    wait for 10 ns;
    wait for 10 ns;

    -- ADD
    REG_addr <= "1000";
    IR <= x"2001";
    t2 <= '0';
    wait for 10 ns;
    t2 <= '1';
    wait for 10 ns;
    t2 <= '0';
    wait for 10 ns;
    REG_addr <= "0000";
    REG_new <= x"03";
    wait for 10 ns;

    -- SUB
    REG_addr <= "1000";
    IR <= x"3001";
    t2 <= '0';
    wait for 10 ns;
    t2 <= '1';
    wait for 10 ns;
    t2 <= '0';
    wait for 10 ns;
    REG_addr <= "0000";
    REG_new <= x"01";
    wait for 10 ns;

    -- MVI
    REG_addr <= "1000";
    IR <= x"40db";
    t2 <= '0';
    wait for 10 ns;
    t2 <= '1';
    wait for 10 ns;
    t2 <= '0';
    wait for 10 ns;
    REG_addr <= "0000";
    REG_new <= x"db";
    wait for 10 ns;

    -- MOV
    REG_addr <= "1000";
    IR <= x"5200";
    t2 <= '0';
    wait for 10 ns;
    t2 <= '1';
    wait for 10 ns;
    t2 <= '0';
    wait for 10 ns;
    REG_addr <= "0010";
    REG_new <= x"db";
    wait for 10 ns;

    -- STA
    REG_addr <= "1000";
    IR <= x"6100";
    t2 <= '0';
    wait for 10 ns;
    t2 <= '1';
    wait for 10 ns;
    t2 <= '0';
    wait for 10 ns;
    wait for 10 ns;

    -- LDA
    REG_addr <= "1000";
    IR <= x"7000";
    t2 <= '0';
    wait for 10 ns;
    t2 <= '1';
    wait for 10 ns;
    t2 <= '0';
    wait for 10 ns;
    REG_addr <= "0000";
    REG_new <= x"02";
    wait for 10 ns;

    -- OUT
    REG_addr <= "1000";
    IR <= x"8000";
    t2 <= '0';
    wait for 10 ns;
    t2 <= '1';
    wait for 10 ns;
    t2 <= '0';
    wait for 10 ns;
    wait for 10 ns;

    -- IN
    REG_addr <= "1000";
    IR <= x"9100";
    t2 <= '0';
    wait for 10 ns;
    t2 <= '1';
    wait for 10 ns;
    t2 <= '0';
    wait for 10 ns;
    wait for 10 ns;

    wait;
  end process;

end Behavioral;
