library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity write_back is
  port (
    I_t4 : in std_logic;
    I_IR : in std_logic_vector(15 downto 0);
    I_RTEMP : in std_logic_vector(7 downto 0);

    I_ALU : in std_logic_vector(7 downto 0);
    I_PC : in std_logic_vector(15 downto 0);

    O_REG_addr : out std_logic_vector(3 downto 0);
    O_REG_new : out std_logic_vector(7 downto 0);

    O_PC_new : out std_logic_vector(15 downto 0);
    O_PC_update : out std_logic
    );
end write_back;

architecture Behavioral of write_back is

begin

  O_REG_addr <= '0' & I_IR(10 downto 8) when I_t4 = '1' and (I_IR(15 downto 12) = "0010" or
                                                       I_IR(15 downto 12) = "0011" or
                                                       I_IR(15 downto 12) = "0100" or
                                                       I_IR(15 downto 12) = "0101" or
                                                       I_IR(15 downto 12) = "0111" or
                                                       I_IR(15 downto 12) = "1001") else
                "1000";
  O_REG_new <= I_ALU when (I_IR(15 downto 12) = x"2" or
                           I_IR(15 downto 12) = x"3" or
                           I_IR(15 downto 12) = x"5" or
                           I_IR(15 downto 12) = x"4") else
               I_RTEMP when (I_IR(15 downto 12) = x"7" or
                             I_IR(15 downto 12) = x"9");

  O_PC_update <= '1' when I_t4 = '1' and (I_IR(15 downto 12) = "0000" or
                                          (I_IR(15 downto 12) = "0001" and I_ALU = x"00")) else
                 '0';
  O_PC_new <= I_PC;

end Behavioral;
