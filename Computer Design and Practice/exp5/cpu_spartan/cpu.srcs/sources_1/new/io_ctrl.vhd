library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;
use ieee.std_logic_unsigned.all;

entity io_ctrl is
  port (
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
end io_ctrl;

architecture Behavioral of io_ctrl is

begin

  O_S0 <= I_DATA when I_WR = '1' and I_RD = '0' and I_ADDR = "00";
  O_S1 <= I_DATA when I_WR = '0' and I_RD = '1' and I_ADDR = "01";
  O_S2 <= I_DATA when I_WR = '0' and I_RD = '1' and I_ADDR = "10";
  O_S3 <= I_DATA when I_WR = '0' and I_RD = '1' and I_ADDR = "11";

  O_RTEMP <= I_K0 when I_WR = '0' and I_RD = '1' and I_ADDR = "00" else
             I_K1 when I_WR = '0' and I_RD = '1' and I_ADDR = "01" else
             I_K2 when I_WR = '0' and I_RD = '1' and I_ADDR = "10" else
             I_K3 when I_WR = '0' and I_RD = '1' and I_ADDR = "11";

  -- process(I_DATA, I_ADDR, I_K0, I_K1, I_K2, I_K3, I_CS, I_RD, I_WR)
  -- begin
  --   O_RTEMP <= (others => 'Z');
  --   O_S0 <= (others => 'Z');
  --   O_S1 <= (others => 'Z');
  --   O_S2 <= (others => 'Z');
  --   O_S3 <= (others => 'Z');
  --   if I_CS = '1' then
  --     if I_WR = '1' and I_RD = '0' then
  --       case I_ADDR is
  --         when "00" =>
  --           O_S0 <= I_DATA;
  --         when "01" =>
  --           O_S1 <= I_DATA;
  --         when "10" =>
  --           O_S2 <= I_DATA;
  --         when "11" =>
  --           O_S3 <= I_DATA;
  --         when others =>
  --           null;
  --       end case;
  --     elsif I_WR = '0' and I_RD = '1' then
  --       case I_ADDR is
  --         when "00" =>
  --           O_RTEMP <= I_K0;
  --         when "01" =>
  --           O_RTEMP <= I_K1;
  --         when "10" =>
  --           O_RTEMP <= I_K2;
  --         when "11" =>
  --           O_RTEMP <= I_K3;
  --         when others =>
  --           null;
  --       end case;
  --     end if;
  --   end if;
  -- end process;

end Behavioral;
