library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity top is
  port (
    I_CLK_100MHZ : in std_logic;

    seg : out std_logic_vector(6 downto 0);
    an : out std_logic_vector(7 downto 0);
    led : out std_logic_vector(2 downto 0);
    swt : in std_logic_vector(2 downto 0);

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
end top;
architecture Behavioral of top is
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

  signal ram_dq_o, ram_dq_i: std_logic_vector (15 downto 0);
  signal ram_a : std_logic_vector(26 downto 0);
  signal ram_csn, ram_rdn, ram_wrn : std_logic := '1';


  signal total_1khz : integer := 100000;
  signal count_1khz : integer := 0;
  signal clk_1khz : std_logic := '0';

  type INT_ARRAY is array (integer range <>) of integer;
  signal digits : INT_ARRAY(0 to 7) := (0, 1, 2, 3, 4, 5, 6, 7);
  signal an_t : std_logic_vector(7 downto 0) := "11111110";

  type DATA_ARRAY is array(0 to 15) of std_logic_vector(15 downto 0);

  signal led_t : std_logic_vector(2 downto 0) := "000";
  signal clk_200mhz : std_logic;
begin

  clkgen: clk_wiz_0
    port map(
      clk_in1 => I_CLK_100MHZ,
      clk_out1 => clk_200mhz
      );

  uut_ram2ddr: ram2ddr
    port map(
      clk_200MHz_i=>clk_200mhz,
      rst_i => '0',
      device_temp_i=>"000000000000",

      ram_a => ram_a,
      ram_dq_i => ram_dq_i,
      ram_dq_o=>ram_dq_o,
      ram_cen => ram_csn,
      ram_oen => ram_rdn,
      ram_wen => ram_wrn,
      ram_ub => '0',
      ram_lb => '0',

      ddr2_addr=>ddr2_addr,
      ddr2_ba=>ddr2_ba,
      ddr2_ras_n=>ddr2_ras_n,
      ddr2_cas_n=>ddr2_cas_n,
      ddr2_we_n=>ddr2_we_n,
      ddr2_ck_p=>ddr2_ck_p,
      ddr2_ck_n=>ddr2_ck_n,
      ddr2_cke=>ddr2_cke,
      ddr2_cs_n=>ddr2_cs_n,
      ddr2_dm=>ddr2_dm,
      ddr2_odt=>ddr2_odt,
      ddr2_dq=>ddr2_dq,
      ddr2_dqs_p=>ddr2_dqs_p,
      ddr2_dqs_n=>ddr2_dqs_n
      );

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


  led <= led_t;
  digits(7) <= to_integer(unsigned(ram_dq_o(15 downto 12))) when ram_csn = '0' and ram_rdn = '0';
  digits(6) <= to_integer(unsigned(ram_dq_o(11 downto 8))) when ram_csn = '0' and ram_rdn = '0';
  digits(5) <= to_integer(unsigned(ram_dq_o(7 downto 4))) when ram_csn = '0' and ram_rdn = '0';
  digits(4) <= to_integer(unsigned(ram_dq_o(3 downto 0))) when ram_csn = '0' and ram_rdn = '0';
  led_t(0) <= '1' when ram_csn = '0' and ram_rdn = '0' else
              '0';
  led_t(1) <= '1' when ram_csn = '0' and ram_wrn = '0' else
              '0';
  led_t(2) <= '1' when ram_csn = '1' else
              '0';
  -- ram_csn <= swt(0);
  -- ram_rdn <= '0';
  -- ram_a <= "0000000001" & x"0004" & "0" when swt(1) = '0' else
  --          "0000000001" & x"070c" & "0" when swt(2) = '0';
  process(clk_1khz)
    variable count : integer := 0;
    variable bfr_mem : integer := 0;
    variable ad : DATA_ARRAY := (x"0000", x"0001", x"0003", x"0004", x"0005", x"0006", x"0007", x"0008", x"0009", x"000a", x"000b", x"000c", x"000d", others => (others => '0'));
    variable db : DATA_ARRAY := (x"0001", x"1003", x"4001", x"1002", x"4707", x"2007", x"8001", x"670c", x"710c", x"3100", x"8101", x"9201", x"8201", others => (others => '0'));
    -- variable ad : DATA_ARRAY := (x"0000", x"0001", x"0002", x"0003", x"0004", others => (others => '0'));
    -- variable db : DATA_ARRAY := (x"4002", x"4707", x"600c", x"710c", x"8101", others => (others => '0'));
    variable t : std_logic := '0';
  begin
    if rising_edge(clk_1khz) then
      bfr_mem := bfr_mem + 1;
      if bfr_mem > 10000 then
        bfr_mem := 10000;
      end if;
    end if;
    if rising_edge(clk_1khz) and bfr_mem > 1000 then
      t := not t;
      if t = '0' and count <= 12 then
        ram_csn <= '0';
        ram_rdn <= '1';
        ram_wrn <= '0';
        ram_dq_i <= db(count);
        -- digits(5) <= count;
        ram_a <= "0000000001" & ad(count) & "0";
        count := count + 1;
      elsif t = '0' and count > 12 and count <= 20 then
        ram_csn <= '0';
        ram_rdn <= '0';
        ram_wrn <= '1';
        ram_a <= "0000000001" & x"000d" & "0";
        count := count + 1;
      else
        ram_csn <= '1';
        ram_rdn <= '1';
        ram_wrn <= '1';
        ram_dq_i <= (others => 'Z');
      end if;
    end if;
  end process;

  an <= an_t;
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
