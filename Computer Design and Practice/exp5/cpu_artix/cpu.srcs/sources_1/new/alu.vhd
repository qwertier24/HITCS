library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;
use ieee.std_logic_unsigned.all;

entity alu is
  port (
    I_IR: in std_logic_vector(15 downto 0);
    I_t2: in std_logic;
    I_REG_addr : in std_logic_vector(3 downto 0);
    I_REG_new : in std_logic_vector(7 downto 0);
    O_ALU : buffer std_logic_vector(7 downto 0);
    O_ADDR : buffer std_logic_vector(15 downto 0)
  );
end alu;

architecture Behavioral of alu is
  type T_REG is array (0 to 7) of std_logic_vector(7 downto 0);
  signal R : T_REG := (others => (others=>'0'));

  signal ri, rj : integer range 0 to 7;

begin

  ri <= to_integer(unsigned(I_IR(10 downto 8)));
  rj <= to_integer(unsigned(I_IR(2 downto 0)));

  -- with I_IR(15 downto 12) & t2 select O_ALU <=
  --   R(ri) when "00011",
  --   R(ri) + R(rj) when "00101",
  --   R(ri) - R(rj) when "00111",
  --   I_IR(7 downto 0) when "01001",
  --   R(rj) when "01011",
  --   R(ri) when "01101",
  --   R(ri) when "10001",
  --   (others => 'Z') when others;


  O_ALU <= R(ri) when I_IR(15 downto 12) = "0001" and I_t2 = '1' else
           R(ri) + R(rj) when I_IR(15 downto 12) = "0010" and I_t2 = '1' else
           R(ri) - R(rj) when I_IR(15 downto 12) = "0011" and I_t2 = '1' else
           I_IR(7 downto 0) when I_IR(15 downto 12) = "0100" and I_t2 = '1' else
           R(ri) when I_IR(15 downto 12) = "0110" and I_t2 = '1' else
           R(ri) when I_IR(15 downto 12) = "1000" and I_t2 = '1' else
           O_ALU;

  O_ADDR <= R(7) & I_IR(7 downto 0) when I_t2 = '1' and(I_IR(15 downto 12) = "0000" or
                                                        I_IR(15 downto 12) = "0001" or
                                                        I_IR(15 downto 12) = "0110" or
                                                        I_IR(15 downto 12) = "0111") else
            O_ADDR;

  -- with I_IR(15 downto 12) & I_t2 select O_ADDR <=
  --   R(7) & I_IR(7 downto 0) when "00001",
  --   R(7) & I_IR(7 downto 0) when "00011",
  --   R(7) & I_IR(7 downto 0) when "01101",
  --   R(7) & I_IR(7 downto 0) when "01111",
  --   (others => 'Z') when others;

  R(to_integer(unsigned(I_REG_addr(2 downto 0)))) <= I_REG_new when I_REG_addr < "1000";

end Behavioral;
