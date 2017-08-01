library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity cpu is
  port(
    I_CLK : in std_logic;
    I_RST : in std_logic;

    I_K0 : in std_logic_vector(7 downto 0);
    I_K1 : in std_logic_vector(7 downto 0);
    I_K2 : in std_logic_vector(7 downto 0);
    I_K3 : in std_logic_vector(7 downto 0);

    O_S0 : out std_logic_vector(7 downto 0);
    O_S1 : out std_logic_vector(7 downto 0);
    O_S2 : out std_logic_vector(7 downto 0);
    O_S3 : out std_logic_vector(7 downto 0);

    O_ram_ADDR : out std_logic_vector(15 downto 0);
    IO_ram_DATA : inout std_logic_vector(15 downto 0);
    O_ram_NCS : out std_logic;
    O_ram_NRD : out std_logic;
    O_ram_NWR : out std_logic;
    O_ram_NBH : out std_logic;
    O_ram_NBL : out std_logic
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
      O_ALU : out std_logic_vector(7 downto 0);
      O_ADDR : out std_logic_vector(15 downto 0)
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
      O_RTEMP : out std_logic_vector(7 downto 0);

      O_CS_io : out std_logic;
      O_WR_io : out std_logic;
      O_RD_io : out std_logic;
      I_data_io : in std_logic_vector(7 downto 0);
      O_data_io : out std_logic_vector(7 downto 0);
      O_addr_io : out std_logic_vector(1 downto 0)
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
      O_RTEMP : out std_logic_vector(7 downto 0);

      O_ADDR : out std_logic_vector(15 downto 0);
      IO_DATA : inout std_logic_vector(15 downto 0);
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

      O_ADDR => O_ram_ADDR,
      IO_DATA => IO_ram_DATA,
      O_NCS => O_ram_NCS,
      O_NRD => O_ram_NRD,
      O_NWR => O_ram_NWR,
      O_NBH => O_ram_NBH,
      O_NBL => O_ram_NBL
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

      O_S0 => O_S0,
      O_S1 => O_S1,
      O_S2 => O_S2,
      O_S3 => O_S3,

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

end Behavioral;
