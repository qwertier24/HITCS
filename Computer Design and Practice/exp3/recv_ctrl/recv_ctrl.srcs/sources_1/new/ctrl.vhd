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
