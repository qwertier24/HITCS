library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity refer is
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

    O_CS_io : out std_logic;
    O_WR_io : out std_logic;
    O_RD_io : out std_logic;
    I_data_io : in std_logic_vector(7 downto 0);
    O_data_io : out std_logic_vector(7 downto 0);
    O_addr_io : out std_logic_vector(1 downto 0);

    O_RTEMP : buffer std_logic_vector(7 downto 0)
    );
end refer;

architecture Behavioral of refer is

begin

  O_CS_ram <= '1' when I_t3 = '1' and (I_IR(15 downto 12) = "0110" or I_IR(15 downto 12) = "0111") else
              '0';
  O_WR_ram <= '1' when I_t3 = '1' and I_IR(15 downto 12) = "0110" else
              '0';
  O_RD_ram <= '1' when I_t3 = '1' and I_IR(15 downto 12) = "0111" else
              '0';
  O_data_ram <= I_ALU;
  O_addr_ram <= I_addr;

  O_CS_io <= '1' when I_t3 = '1' and (I_IR(15 downto 12) = "1000" or I_IR(15 downto 12) = "1001") else
             '0';
  O_WR_io <= '1' when I_t3 = '1' and I_IR(15 downto 12) = "1000" else
             '0';
  O_RD_io <= '1' when I_t3 = '1' and I_IR(15 downto 12) = "1001" else
             '0';
  O_data_io <= I_ALU;
  O_addr_io <= I_IR(1 downto 0);

  O_RTEMP <= I_data_ram when I_t3 = '1' and I_IR(15 downto 12) = "0111" else
             I_data_io when I_t3 = '1' and I_IR(15 downto 12) = "1001" else
             O_RTEMP;

end Behavioral;
