library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity cpu is
  port(
    I_CLK_100MHZ : in std_logic;

    I_CLK : in std_logic;
    I_RST : in std_logic;

    I_K0 : in std_logic_vector(7 downto 0);
    I_K1 : in std_logic_vector(7 downto 0);
    -- I_K2 : in std_logic_vector(7 downto 0);
    -- I_K3 : in std_logic_vector(7 downto 0);

    O_S1 : out std_logic_vector(7 downto 0);
    led : out std_logic_vector(7 downto 0);
    -- O_S1 : out std_logic_vector(7 downto 0);
    -- O_S2 : out std_logic_vector(7 downto 0);
    -- O_S3 : out std_logic_vector(7 downto 0);

    seg : out std_logic_vector(6 downto 0);
    an : out std_logic_vector(7 downto 0);

    ddr2_addr : out STD_LOGIC_VECTOR (12 downto 0);
    ddr2_ba : out STD_LOGIC_VECTOR (2 downto 0);
    ddr2_ras_n : out STD_LOGIC;
    ddr2_cas_n : out STD_LOGIC;
    ddr2_we_n : out STD_LOGIC;
    ddr2_ck_p : out std_logic_vector(0 downto 0);
    ddr2_ck_n : out std_logic_vector(0 downto 0);
    ddr2_cke : out std_logic_vector(0 downto 0);
    ddr2_cs_n : out std_logic_vector(0 downto 0);
    ddr2_dm : out STD_LOGIC_VECTOR (1 downto 0);
    ddr2_odt : out std_logic_vector(0 downto 0);
    ddr2_dq : inout STD_LOGIC_VECTOR (15 downto 0);
    ddr2_dqs_p : inout STD_LOGIC_VECTOR (1 downto 0);
    ddr2_dqs_n : inout STD_LOGIC_VECTOR (1 downto 0)
    );
end cpu;

architecture Behavioral of cpu is

  component mod4 is
    Port (
      I_rst: in std_logic;
      I_clk: in std_logic;
      O_t1, O_t2, O_t3, O_t4: out std_logic
      );
  end component;

  component fetch is
    Port (
      I_PC_new : in std_logic_vector(15 downto 0);
      I_PC_update : in std_logic;
      I_IR : in std_logic_vector(15 downto 0);
      I_rst : in std_logic;
      I_t1 : in std_logic;
      I_t3 : in std_logic;
      O_IR : out std_logic_vector(15 downto 0);
      O_PC : out std_logic_vector(15 downto 0);
      O_PC_read : out std_logic
      );
  end component;

  component alu is
    port (
      I_IR: in std_logic_vector(15 downto 0);
      I_t2: in std_logic;
      I_REG_addr : in std_logic_vector(3 downto 0);
      I_REG_new : in std_logic_vector(7 downto 0);
      O_ALU : buffer std_logic_vector(7 downto 0);
      O_ADDR : buffer std_logic_vector(15 downto 0)
      );
  end component;

  component refer is
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
  end component;

  component write_back is
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
  end component;

  component ram_ctrl is
    port (
      I_PC : in std_logic_vector(15 downto 0);
      I_PC_read : in std_logic;
      O_IR : out std_logic_vector(15 downto 0);

      I_CS : in std_logic;
      I_WR : in std_logic;
      I_RD : in std_logic;
      I_ADDR : in std_logic_vector(15 downto 0);
      I_DATA : in std_logic_vector(7 downto 0);
      O_RTEMP : buffer std_logic_vector(7 downto 0);

      O_ABUS : out std_logic_vector(15 downto 0);
      I_DBUS : in std_logic_vector(15 downto 0);
      O_DBUS : out std_logic_vector(15 downto 0);
      O_NCS : out std_logic;
      O_NRD : out std_logic;
      O_NWR : out std_logic;
      O_NBH : out std_logic;
      O_NBL : out std_logic
      );
  end component;

  component io_ctrl is
    port (
      I_CS : in std_logic;
      I_WR : in std_logic;
      I_RD : in std_logic;
      I_ADDR : in std_logic_vector(1 downto 0);
      I_DATA : in std_logic_vector(7 downto 0);
      O_RTEMP : buffer std_logic_vector(7 downto 0);

      O_S0 : out std_logic_vector(7 downto 0);
      O_S1 : out std_logic_vector(7 downto 0);
      O_S2 : out std_logic_vector(7 downto 0);
      O_S3 : out std_logic_vector(7 downto 0);

      I_K0 : in std_logic_vector(7 downto 0);
      I_K1 : in std_logic_vector(7 downto 0);
      I_K2 : in std_logic_vector(7 downto 0);
      I_K3 : in std_logic_vector(7 downto 0)
      );
  end component;

  component ram2ddr is
    port (
      -- Common
      clk_200MHz_i         : in    std_logic; -- 200 MHz system clock
      rst_i                : in    std_logic; -- active high system reset
      device_temp_i        : in    std_logic_vector(11 downto 0);

      -- RAM interface
      ram_a                : in    std_logic_vector(26 downto 0);
      ram_dq_i             : in    std_logic_vector(15 downto 0);
      ram_dq_o             : out   std_logic_vector(15 downto 0);
      ram_cen              : in    std_logic;
      ram_oen              : in    std_logic;
      ram_wen              : in    std_logic;
      ram_ub               : in    std_logic;
      ram_lb               : in    std_logic;

      -- DDR2 interface
      ddr2_addr            : out   std_logic_vector(12 downto 0);
      ddr2_ba              : out   std_logic_vector(2 downto 0);
      ddr2_ras_n           : out   std_logic;
      ddr2_cas_n           : out   std_logic;
      ddr2_we_n            : out   std_logic;
      ddr2_ck_p            : out   std_logic_vector(0 downto 0);
      ddr2_ck_n            : out   std_logic_vector(0 downto 0);
      ddr2_cke             : out   std_logic_vector(0 downto 0);
      ddr2_cs_n            : out   std_logic_vector(0 downto 0);
      ddr2_dm              : out   std_logic_vector(1 downto 0);
      ddr2_odt             : out   std_logic_vector(0 downto 0);
      ddr2_dq              : inout std_logic_vector(15 downto 0);
      ddr2_dqs_p           : inout std_logic_vector(1 downto 0);
      ddr2_dqs_n           : inout std_logic_vector(1 downto 0)
      );
  end component;

  component clk_wiz_0 is
    port (
      clk_in1 : in std_logic;
      clk_out1 : out std_logic
      );
  end component;


  signal PC_new : std_logic_vector(15 downto 0) := (others => '0');
  signal PC_update : std_logic := '0';
  signal ram_IR, global_IR : std_logic_vector(15 downto 0) := (others => '0');
  signal t1, t2, t3, t4 : std_logic := '0';
  signal PC : std_logic_vector(15 downto 0) := (others => '0');
  signal PC_read : std_logic := '0';

  signal ram_ctrl_CS, ram_ctrl_WR, ram_ctrl_RD : std_logic := '0';
  signal ram_ctrl_ADDR : std_logic_vector(15 downto 0) := (others => '0');
  signal ram_ctrl_DATA, ram_RTEMP : std_logic_vector(7 downto 0) := (others => '0');

  signal io_ctrl_CS, io_ctrl_WR, io_ctrl_RD : std_logic := '0';
  signal io_ctrl_ADDR : std_logic_vector(1 downto 0) := "00";
  signal io_ctrl_DATA, io_RTEMP : std_logic_vector(7 downto 0) := x"00";

  signal REG_addr : std_logic_vector(3 downto 0) := x"8";
  signal REG_new : std_logic_vector(7 downto 0) := x"00";
  signal alu_data : std_logic_vector(7 downto 0) := x"00";
  signal refer_addr : std_logic_vector(15 downto 0) := x"0000";

  signal refer_RTEMP : std_logic_vector(7 downto 0) := x"00";

  signal DBUSi, DBUSo, ABUS : std_logic_vector(15 downto 0) := (others => '0');
  signal ram_NCS, ram_NWR, ram_NRD, ram_NBL, ram_NBH : std_logic := '1';
  signal ABUS2 : std_logic_vector(26 downto 0) := "0000000001" & x"0000" & "0";

  type INT_ARRAY is array (integer range <>) of integer;
  signal digits : INT_ARRAY(0 to 7) := (0, 1, 2, 3, 4, 5, 6, 7);
  signal an_t : std_logic_vector(7 downto 0) := "11111110";

  signal total_1khz : integer := 100000;
  signal count_1khz : integer := 0;
  signal clk_1khz : std_logic := '0';

  signal clk_200mhz : std_logic;
  signal I_K2, I_K3 : std_logic_vector(7 downto 0) := (others => '0');
begin

  uut_mod4 : mod4
    port map(
      I_rst => I_RST,
      I_clk => I_CLK,
      O_t1 => t1,
      O_t2 => t2,
      O_t3 => t3,
      O_t4 => t4
      );

  uut_fetch : fetch
    port map(
      I_PC_new => PC_new,
      I_PC_update => PC_update,
      I_IR => ram_IR,
      I_rst => I_RST,
      I_t1 => t1,
      I_t3 => t3,
      O_IR => global_IR,
      O_PC => PC,
      O_PC_read => PC_read
      );

  uut_ram_ctrl : ram_ctrl
    port map(
      I_PC => PC,
      I_PC_read => PC_read,
      O_IR => ram_IR,
      I_CS => ram_ctrl_CS,
      I_WR => ram_ctrl_WR,
      I_RD => ram_ctrl_RD,
      I_ADDR => ram_ctrl_ADDR,
      I_DATA => ram_ctrl_DATA,
      O_RTEMP => ram_RTEMP,

      O_ABUS => ABUS,
      I_DBUS => DBUSi,
      O_DBUS => DBUSo,
      O_NCS => ram_NCS,
      O_NRD => ram_NRD,
      O_NWR => ram_NWR,
      O_NBH => ram_NBH,
      O_NBL => ram_NBL
      );

  uut_alu : alu
    port map(
      I_IR => global_IR,
      I_t2 => t2,
      I_REG_addr => REG_addr,
      I_REG_new => REG_new,
      O_ALU => alu_data,
      O_ADDR => refer_addr
      );

  uut_refer : refer
    port map(
      I_t3 => t3,
      I_IR => global_IR,
      I_ALU => alu_data,
      I_addr => refer_addr,

      O_CS_ram => ram_ctrl_CS,
      O_WR_ram => ram_ctrl_WR,
      O_RD_ram => ram_ctrl_RD,
      I_data_ram => ram_RTEMP,
      O_data_ram => ram_ctrL_data,
      O_addr_ram => ram_ctrl_addr,

      O_CS_io => io_ctrl_CS,
      O_WR_io => io_ctrl_WR,
      O_RD_io => io_ctrl_RD,
      I_data_io => io_RTEMP,
      O_data_io => io_ctrl_data,
      O_addr_io => io_ctrl_addr,

      O_RTEMP => refer_RTEMP
      );

  uut_io_ctrl : io_ctrl
    port map(
      I_CS => io_ctrl_CS,
      I_WR => io_ctrl_WR,
      I_RD => io_ctrl_RD,
      I_ADDR => io_ctrl_addr,
      I_DATA => io_ctrl_data,
      O_RTEMP => io_RTEMP,

      -- O_S0 => O_S0,
      O_S1 => O_S1,
      -- O_S2 => O_S2,
      -- O_S3 => O_S3,

      I_K0 => I_K0,
      I_K1 => I_K1,
      I_K2 => I_K2,
      I_K3 => I_K3
      );

  uut_write_back : write_back
    port map(
      I_t4 => t4,
      I_IR => global_IR,
      I_RTEMP => refer_RTEMP,

      I_ALU => alu_data,
      I_PC => refer_ADDR,

      O_REG_addr => REG_addr,
      O_REG_new => REG_new,

      O_PC_new => PC_new,
      O_PC_update => PC_update
      );

  ABUS2 <= "0000000001" & ABUS & "0";
  uut_ram2ddr : ram2ddr
    port map (
      clk_200MHz_i => clk_200mhz,

      rst_i => '0',
      device_temp_i => (others => '0'),

      ram_a => ABUS2,
      ram_dq_i => DBUSo,
      ram_dq_o => DBUSi,
      ram_cen => ram_NCS,
      ram_oen => ram_NRD,
      ram_wen => ram_NWR,
      ram_ub => ram_NBH,
      ram_lb => ram_NBL,

      ddr2_addr => ddr2_addr,
      ddr2_ba => ddr2_ba,
      ddr2_ras_n => ddr2_ras_n,
      ddr2_cas_n => ddr2_cas_n,
      ddr2_we_n => ddr2_we_n,
      ddr2_ck_p => ddr2_ck_p,
      ddr2_ck_n => ddr2_ck_n,
      ddr2_cke => ddr2_cke,
      ddr2_cs_n => ddr2_cs_n,
      ddr2_dm => ddr2_dm,
      ddr2_odt => ddr2_odt,
      ddr2_dq => ddr2_dq,
      ddr2_dqs_p => ddr2_dqs_p,
      ddr2_dqs_n => ddr2_dqs_n
      );

  uut_clk_wiz_0 : clk_wiz_0
    port map(
      clk_in1 => I_CLK_100MHZ,
      clk_out1 => clk_200mhz
      );

  an <= an_t;
  led(0) <= t1;
  led(1) <= t2;
  led(2) <= t3;
  led(3) <= t4;
  led(4) <= PC_update;
  led(5) <= ram_NCS;
  led(6) <= ram_NRD;
  led(7) <= ram_NWR;

  digits(7) <= to_integer(unsigned(alu_data(7 downto 4))) when I_K0(0) = '0' else
               to_integer(unsigned(ABUS(15 downto 12))) when I_K0(0) = '1' else
               digits(7);
  digits(6) <= to_integer(unsigned(alu_data(3 downto 0))) when I_K0(0) = '0' else
               to_integer(unsigned(ABUS(11 downto 8))) when I_K0(0) = '1' else
               digits(6);
  digits(5) <= to_integer(unsigned(PC(7 downto 4))) when I_K0(0) = '0' else
               to_integer(unsigned(ABUS(7 downto 4))) when I_K0(0) = '1' else
               digits(5);
  digits(4) <= to_integer(unsigned(PC(3 downto 0))) when I_K0(0) = '0' else
               to_integer(unsigned(ABUS(3 downto 0))) when I_K0(0) = '1' else
               digits(4);

  digits(3) <= to_integer(unsigned(global_IR(15 downto 12))) when I_K0(0) = '0' else
               to_integer(unsigned(DBUSo(15 downto 12))) when I_K0(0) = '1' else
               digits(3);
  digits(2) <= to_integer(unsigned(global_IR(11 downto 8))) when I_K0(0) = '0' else
               to_integer(unsigned(DBUSo(11 downto 8))) when I_K0(0) = '1' else
               digits(2);
  digits(1) <= to_integer(unsigned(global_IR(7 downto 4))) when I_K0(0) = '0' else
               to_integer(unsigned(DBUSo(7 downto 4))) when I_K0(1) = '1' else
               digits(1);
  digits(0) <= to_integer(unsigned(global_IR(3 downto 0))) when I_K0(0) = '0' else
               to_integer(unsigned(DBUSo(3 downto 0))) when I_K0(0) = '1' else
               digits(0);

  process(I_CLK_100MHZ)
  begin
    if rising_edge(I_CLK_100MHZ) then
      count_1khz <= count_1khz + 1;
      if count_1khz >= total_1khz then
        count_1khz <= 0;
        clk_1khz <= not clk_1khz;
      end if;
    end if;
  end process;

  process(clk_1khz)
    variable cur : integer := 0;
    variable num : integer;
  begin
    if rising_edge(clk_1khz) then
      an_t(7 downto 1) <= an_t(6 downto 0);
      an_t(0) <= an_t(7);
      cur := cur + 1;
      if cur = 8 then
        cur := 0;
      end if;
      num := digits(cur);
      case num is
        when 0 =>
          seg <= "1000000";
        when 1 =>
          seg <= "1111001";
        when 2 =>
          seg <= "0100100";
        when 3 =>
          seg <= "0110000";
        when 4 =>
          seg <= "0011001";
        when 5 =>
          seg <= "0010010";
        when 6 =>
          seg <= "0000010";
        when 7 =>
          seg <= "1111000";
        when 8 =>
          seg <= "0000000";
        when 9 =>
          seg <= "0011000";
        when 10 =>
          seg <= "0001000";
        when 11 =>
          seg <= "0000011";
        when 12 =>
          seg <= "1000110";
        when 13 =>
          seg <= "0100001";
        when 14 =>
          seg <= "0000110";
        when 15 =>
          seg <= "0001110";
        when others =>
          seg <= "1111111";
      end case;
    end if;
  end process;


end Behavioral;
