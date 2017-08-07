library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity serial is
  Port ( DATA : in  STD_LOGIC;
         CLK : in  STD_LOGIC;
         CSN : in  STD_LOGIC;
         WRN : in  STD_LOGIC;
         RDN : in  STD_LOGIC;
         A : in  STD_LOGIC_VECTOR (1 downto 0);
         INTN : out  STD_LOGIC;
         D : inout  STD_LOGIC_VECTOR (7 downto 0));
end serial;

architecture Behavioral of serial is


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
