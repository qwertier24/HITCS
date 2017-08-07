library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity tb is
--  Port ( );
end tb;

architecture Behavioral of tb is

  type DATA_ARRAY is array(10 downto 0) of std_logic_vector(15 downto 0);
  signal clk : std_logic := '0';
  signal ram_csn, ram_rdn, ram_wrn : std_logic;
  signal ram_a : std_logic_vector(26 downto 0);
  signal ram_dq_i : std_logic_vector(15 downto 0);
begin

  clk <= not clk after 5 ns;

  process(clk)
    variable count : integer := 0;
    variable ad : DATA_ARRAY := (x"0101", x"0103", x"0104", others => (others => '0'));
    variable db : DATA_ARRAY := (x"0101", x"0102", x"0105", others => (others => '0'));
  begin
    if rising_edge(clk) then
      if count <= 10 then
        ram_csn <= '0';
        ram_rdn <= '1';
        ram_wrn <= '0';
        ram_a <= "00000000000" & ad(count);
        ram_dq_i <= db(count);
        count := count + 1;
      else
        ram_csn <= '0';
        ram_rdn <= '0';
        ram_wrn <= '1';
        ram_a <= "00000000000" & ad(10);
      end if;
    end if;
    if falling_edge(clk) then
      ram_csn <= '1';
      ram_rdn <= '1';
      ram_wrn <= '1';
    end if;
  end process;

end Behavioral;
