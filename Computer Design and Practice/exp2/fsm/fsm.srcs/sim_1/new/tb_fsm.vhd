library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.numeric_std.all;
library UNISIM;
use UNISIM.VComponents.all;

entity tb_fsm is
--  Port ( );
end tb_fsm;

architecture Behavioral of tb_fsm is

  component fsm
    port ( read_ins : in STD_LOGIC;
           read_data : in STD_LOGIC;
           write_data : in STD_LOGIC;
           reset : in STD_LOGIC;
           clk : in STD_LOGIC;
           oe : out STD_LOGIC;
           we : out STD_LOGIC);
  end component;

  signal clk: STD_LOGIC:= '0';
  signal oe,we: STD_LOGIC;
  signal reset: STD_LOGIC:= '0';
  signal CNT: STD_LOGIC_VECTOR(2 downto 0):= (others => '0');
begin

  u_fsm: fsm port map(
    read_ins => CNT(0),
    read_data => CNT(1),
    write_data => CNT(2),
    reset => reset,
    clk => clk,
    oe => oe,
    we => we
  );

  clk <= not clk after 5 ns;

  process
  begin
    wait for 2 ns;
    if CNT = "111" then
      CNT <= (others => '0');
    else
      CNT <= CNT + 1;
    end if;
    if CNT = "010" then
      reset <= '1';
    else
      reset <= '0';
    end if;
    wait for 8 ns;
  end process;

end Behavioral;
