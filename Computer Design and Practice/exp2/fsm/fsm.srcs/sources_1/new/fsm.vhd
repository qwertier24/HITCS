library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity fsm is
    Port ( read_ins : in STD_LOGIC;
           read_data : in STD_LOGIC;
           write_data : in STD_LOGIC;
           reset : in STD_LOGIC;
           clk : in STD_LOGIC;
           oe : out STD_LOGIC;
           we : out STD_LOGIC);
end fsm;

architecture Behavioral of fsm is
  type state is (state0, state1, state2);
  signal pr_state, nx_state: state;

begin

  process(clk, reset)
  begin
    if rising_edge(clk) then
      if reset = '1' then
        pr_state <= state0;
      else
        pr_state <= nx_state;
      end if;
    end if;
  end process;

  process(pr_state, read_ins, read_data, write_data)
  begin
    case pr_state is
      when state0 =>
        we <= '0';
        oe <= '0';
        if (read_ins = '1' or read_data = '1') and write_data = '0' then
          nx_state <= state1;
        elsif (read_ins = '0' and read_data = '0') and write_data = '1' then
          nx_state <= state2;
        else
          nx_state <= state0;
        end if;
      when state1 =>
        we <= '0';
        oe <= '1';
        if (read_ins = '1' or read_data = '1') and write_data = '0' then
          nx_state <= state1;
        elsif (read_ins = '0' and read_data = '0') and write_data = '1' then
          nx_state <= state2;
        else
          nx_state <= state0;
        end if;
      when state2 =>
        we <= '1';
        oe <= '0';
        if (read_ins = '1' or read_data = '1') and write_data = '0' then
          nx_state <= state1;
        elsif (read_ins = '0' and read_data = '0') and write_data = '1' then
          nx_state <= state2;
        else
          nx_state <= state0;
        end if;
    end case;
  end process;

end Behavioral;
