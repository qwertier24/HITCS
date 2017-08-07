----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:12:26 07/06/2017 
-- Design Name: 
-- Module Name:    top - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

------------------------------------count 4---------------------------------------------
entity count4 is
  port(clk: in std_logic;
       clrn: in std_logic;
       q:out std_logic_vector(3 downto 0));
end count4;

architecture main of count4 is
begin
  process(clk,clrn)
    variable num : integer;
  begin
    if clrn = '0' then
      q<="0000";
      num:=0;
    elsif falling_edge(clk) then
      num:=num+1;
      q<=conv_std_logic_vector(num,4);
    end if;
  end process;
end main;

-----------------------------------------decode 4-------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;

entity decode4 is
  port(
    d : in std_logic_vector(3 downto 0);
    enable : in std_logic;
    q8, q9, q11 : out std_logic
    );
end decode4 ;

architecture main of decode4 is
begin
  process( enable, d )
  begin
    if enable = '1' then
      case d is
        when "1000" =>  q8 <= '0'; q9 <= '1'; q11 <= '1';--1~8位锁存
        when "1001" =>  q8 <= '1'; q9 <= '0'; q11 <= '1';--校验
        when "1011" =>  q8 <= '1'; q9 <= '1'; q11 <= '0';--结束
        when others =>   q8 <= '1'; q9 <= '1'; q11 <= '1';--无效
      end case;
    else
      q8 <= '1'; q9 <= '1'; q11 <= '1';--无效
    end if;
  end process;
end main;

-------------------------------------------sreg-----------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;

entity sreg is
  port(
    clk, clrn, serial : in std_logic;
    q : out std_logic_vector(7 downto 0)
    );
end sreg ;

architecture main of sreg is
begin
  process(clk, clrn)
    variable t : std_logic_vector(7 downto 0);
  begin
    if clrn = '0' then
      t := "00000000";
    elsif clk = '0' and clk'event then
      t(7 downto 1):=t(6 downto 0);
      t(0) := serial;
    end if;
    q <= t;--信号有延迟，实际下降沿才把移位结果输出
  end process;
end main;


-------------------------------------------reg8-----------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;

entity reg8 is
  port(
    clrn, clk : in std_logic;
    d : in std_logic_vector(7 downto 0);
    q : out std_logic_vector(7 downto 0)
    );
end reg8 ;

architecture main of reg8 is
begin
  process(clk, clrn)
  begin
    if clrn = '0' then
      q <= "00000000";
    elsif clk = '0' and clk'event then
      q <= d;
    end if;
  end process;
end main;

-------------------------------------------ctrl-----------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;

entity ctrl is
  port(
    d9, d11 : in std_logic;
    sq0, sq1 : in std_logic;
    rq : in std_logic_vector(7 downto 0);

    clrn : inout std_logic;
    start : out std_logic;
    serial, clk : in std_logic;

    csn, wrn, rdn : in std_logic;
    addr : in std_logic_vector(1 downto 0);
    data : inout std_logic_vector(7 downto 0);
    intn : out std_logic
    );
end ctrl;

architecture main of ctrl is
  signal clrint1,clrint2,clrint3,rbuff,rint:std_logic;
  signal startm,odd,endd,perr,oerr,buff: std_logic:='0';
begin

  process(clrn, clk)--检测起始位
  begin
    if clrn = '0' then
      startm <= '0';
    elsif clk = '0' and clk'event then
      startm <= not serial;
    end if;
  end process;

  process(clrn, startm, buff, perr, oerr)--数据开始接收 --不用intn而用三个中断状态来控制，因为intn为out端口，内部不可读
  begin
    if clrn = '0' then
      start <= '0';
    elsif startm = '1' and startm'event then
      start <= '1';
    end if;
    case buff is---------------------------------------------------------add1
      when '1' => start<='0';
      when others => null;
    end case;
    case perr is---------------------------------------------------------add2
      when '1' => start<='0';
      when others => null;
    end case;
    case oerr is---------------------------------------------------------add3
      when '1' => start<='0';
      when others => null;
    end case;
  end process;

  process(sq0, rq)--校验1
  begin
    odd <= sq0 xor rq(0) xor rq(1)
           xor rq(2) xor rq(3) xor rq(4)
           xor rq(5) xor rq(6) xor rq(7);
  end process;

  process(sq0, sq1)--结束1
  begin
    endd <= sq0 and sq1;
  end process;

  process(clrint2, d9)--校验状态控制，设置和清除，1有效
  begin
    if clrint2 = '0' then
      perr <= '0';
    elsif d9 = '0' and d9'event then
      perr <= odd;
    end if;
  end process;

  process(clrint1, d11)--正确传送的状态控制，设置和清除，1有效
  begin
    if clrint1 = '0' then
      buff <= '0';
    elsif d11 = '0' and d11'event then
      buff <= endd;
    end if;
  end process;

  process(clrint3, startm)--溢出的状态控制，设置和清除，1有效
  begin
    if clrint3 = '0' then
      oerr <= '0';
    elsif startm = '1' and startm'event then
      oerr <= buff;
    end if;
  end process;

  process(perr, oerr, buff)--中断状态寄存器
  begin
    intn <= not (perr or oerr or buff);
  end process;

  process(csn, wrn, addr)--向接口传送中断清除信号
  begin
    clrn <= '1';
    clrint1 <= '1';
    clrint2 <= '1';
    clrint3 <= '1';
    if csn = '0' and wrn = '0' then
      case addr is
        when "00" => clrn <= '0';
        when "01" => clrint1 <= '0';
        when "10" => clrint2 <= '0';
        when "11" => clrint3 <= '0';
        when others => null;
      end case;
    end if;
  end process;

  process(csn, rdn, addr)--cpu从总线读有效数据，或中断状态
  begin
    rbuff <= '1';
    rint <= '1';
    if csn = '0' and rdn = '0' then
      case addr is
        when "00" => rbuff <= '0';--读数据
        when "01" => rint <= '0';--读中断状态
        when others => null;
      end case;
    end if;
  end process;

  process(rbuff, rint, perr, oerr, buff, rq)--数据通道
  begin
    if rbuff = '0' then
      data <= rq;
    elsif rint = '0' then
      data(0) <= buff;--结束
      data(1) <= perr;--校验
      data(2) <= oerr;--溢出
      data(7 downto 3) <= "00000";
    else
      data <= "ZZZZZZZZ";
    end if;
  end process;
end main;


-----------------------------------------top---------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top is
  Port ( DATA : in  STD_LOGIC;
         CLK : in  STD_LOGIC;
         CSN : in  STD_LOGIC;
         WRN : in  STD_LOGIC;
         RDN : in  STD_LOGIC;
         A : in  STD_LOGIC_VECTOR (1 downto 0);
         INTN : out  STD_LOGIC;
         D : inout  STD_LOGIC_VECTOR (7 downto 0));
end top;

architecture Behavioral of top is


  signal clrint1,clrint2,clrint3,q8,q9,q11,clrn,start:std_logic;
  signal fromcount4:std_logic_vector(3 downto 0);
  signal fromsreg: std_logic_vector(7 downto 0);
  signal fromreg8: std_logic_vector(7 downto 0);

  component count4 is
    port(clk : in std_logic;
         clrn: in std_logic;
         q:out std_logic_vector(3 downto 0));
  end component;

  COMPONENT ctrl
    PORT(
      d9 : IN std_logic;
      d11 : IN std_logic;
      sq0 : IN std_logic;
      sq1 : IN std_logic;
      rq : IN std_logic_vector(7 downto 0);
      serial : IN std_logic;
      clk : IN std_logic;
      csn : IN std_logic;
      wrn : IN std_logic;
      rdn : IN std_logic;
      addr : IN std_logic_vector(1 downto 0);
      clrn : INOUT std_logic;
      data : INOUT std_logic_vector(7 downto 0);
      start : OUT std_logic;
      intn : OUT std_logic
      );
  END COMPONENT;

  COMPONENT sreg
    PORT(
      clk : IN std_logic;
      clrn : IN std_logic;
      serial : IN std_logic;
      q : OUT std_logic_vector(7 downto 0)
      );
  END COMPONENT;

  COMPONENT reg8
    PORT(
      clrn : IN std_logic;
      clk : IN std_logic;
      d : IN std_logic_vector(7 downto 0);
      q : OUT std_logic_vector(7 downto 0)
      );
  END COMPONENT;

  COMPONENT decode4
    PORT(
      d : IN std_logic_vector(3 downto 0);
      enable : IN std_logic;
      q8 : OUT std_logic;
      q9 : OUT std_logic;
      q11 : OUT std_logic
      );
  END COMPONENT;

begin

  Inst_count4: count4 PORT MAP(
    clk => clk,
    clrn => start,
    q => fromcount4
    );


  Inst_ctrl: ctrl PORT MAP(
    d9 =>q9 ,
    d11 =>q11 ,
    sq0 =>fromsreg(0) ,
    sq1 =>fromsreg(1) ,
    rq =>fromreg8 ,
    clrn =>clrn ,
    start =>start ,
    serial =>data ,
    clk =>clk ,
    csn =>csn ,
    wrn =>wrn ,
    rdn =>rdn ,
    addr =>a ,
    data =>d ,
    intn =>intn
    );

  Inst_sreg: sreg PORT MAP(
    clk => clk,
    clrn => start,
    serial => data,
    q => fromsreg
    );

  Inst_reg8: reg8 PORT MAP(
    clrn => clrn,
    clk => q8,
    d => fromsreg,
    q => fromreg8
    );

  Inst_decode4: decode4 PORT MAP(
    d => fromcount4,
    enable => start,
    q8 => q8,
    q9 => q9,
    q11 => q11
    );


end Behavioral;

