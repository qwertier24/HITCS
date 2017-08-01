-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
-- Date        : Sat Jul 22 21:03:04 2017
-- Host        : DESKTOP-IQ9RCDV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               E:/HITCS/exp5/cpu/cpu.sim/sim_1/synth/func/tb_cpu_func_synth.vhd
-- Design      : cpu
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity alu is
  port (
    data1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    data2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \R[0]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \O_ram_ADDR[0]\ : out STD_LOGIC;
    \O_S0[4]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \R[0]__55\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \O_ram_ADDR[13]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    tt2_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    tt2_reg_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tt4_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    tt4_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    tt4_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    tt4_reg_2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    tt4_reg_3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    tt4_reg_4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    tt4_reg_5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    tt4_reg_6 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end alu;

architecture STRUCTURE of alu is
  signal \O_ALU_reg[7]_i_7_n_0\ : STD_LOGIC;
  signal \O_ALU_reg[7]_i_8_n_0\ : STD_LOGIC;
  signal \^o_s0[4]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \PC_reg[15]_i_5_n_0\ : STD_LOGIC;
  signal \^r[0]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^r[0]__55\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \R_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \R_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \R_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \R_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \R_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \R_reg_n_0_[0][5]\ : STD_LOGIC;
  signal \R_reg_n_0_[0][6]\ : STD_LOGIC;
  signal \R_reg_n_0_[0][7]\ : STD_LOGIC;
  signal \R_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \R_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \R_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \R_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \R_reg_n_0_[1][4]\ : STD_LOGIC;
  signal \R_reg_n_0_[1][5]\ : STD_LOGIC;
  signal \R_reg_n_0_[1][6]\ : STD_LOGIC;
  signal \R_reg_n_0_[1][7]\ : STD_LOGIC;
  signal \R_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \R_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \R_reg_n_0_[2][2]\ : STD_LOGIC;
  signal \R_reg_n_0_[2][3]\ : STD_LOGIC;
  signal \R_reg_n_0_[2][4]\ : STD_LOGIC;
  signal \R_reg_n_0_[2][5]\ : STD_LOGIC;
  signal \R_reg_n_0_[2][6]\ : STD_LOGIC;
  signal \R_reg_n_0_[2][7]\ : STD_LOGIC;
  signal \R_reg_n_0_[3][0]\ : STD_LOGIC;
  signal \R_reg_n_0_[3][1]\ : STD_LOGIC;
  signal \R_reg_n_0_[3][2]\ : STD_LOGIC;
  signal \R_reg_n_0_[3][3]\ : STD_LOGIC;
  signal \R_reg_n_0_[3][4]\ : STD_LOGIC;
  signal \R_reg_n_0_[3][5]\ : STD_LOGIC;
  signal \R_reg_n_0_[3][6]\ : STD_LOGIC;
  signal \R_reg_n_0_[3][7]\ : STD_LOGIC;
  signal \R_reg_n_0_[4][0]\ : STD_LOGIC;
  signal \R_reg_n_0_[4][1]\ : STD_LOGIC;
  signal \R_reg_n_0_[4][2]\ : STD_LOGIC;
  signal \R_reg_n_0_[4][3]\ : STD_LOGIC;
  signal \R_reg_n_0_[4][4]\ : STD_LOGIC;
  signal \R_reg_n_0_[4][5]\ : STD_LOGIC;
  signal \R_reg_n_0_[4][6]\ : STD_LOGIC;
  signal \R_reg_n_0_[4][7]\ : STD_LOGIC;
  signal \R_reg_n_0_[5][0]\ : STD_LOGIC;
  signal \R_reg_n_0_[5][1]\ : STD_LOGIC;
  signal \R_reg_n_0_[5][2]\ : STD_LOGIC;
  signal \R_reg_n_0_[5][3]\ : STD_LOGIC;
  signal \R_reg_n_0_[5][4]\ : STD_LOGIC;
  signal \R_reg_n_0_[5][5]\ : STD_LOGIC;
  signal \R_reg_n_0_[5][6]\ : STD_LOGIC;
  signal \R_reg_n_0_[5][7]\ : STD_LOGIC;
  signal \R_reg_n_0_[6][0]\ : STD_LOGIC;
  signal \R_reg_n_0_[6][1]\ : STD_LOGIC;
  signal \R_reg_n_0_[6][2]\ : STD_LOGIC;
  signal \R_reg_n_0_[6][3]\ : STD_LOGIC;
  signal \R_reg_n_0_[6][4]\ : STD_LOGIC;
  signal \R_reg_n_0_[6][5]\ : STD_LOGIC;
  signal \R_reg_n_0_[6][6]\ : STD_LOGIC;
  signal \R_reg_n_0_[6][7]\ : STD_LOGIC;
  signal \R_reg_n_0_[7][0]\ : STD_LOGIC;
  signal \R_reg_n_0_[7][1]\ : STD_LOGIC;
  signal \R_reg_n_0_[7][2]\ : STD_LOGIC;
  signal \R_reg_n_0_[7][3]\ : STD_LOGIC;
  signal \R_reg_n_0_[7][4]\ : STD_LOGIC;
  signal \R_reg_n_0_[7][5]\ : STD_LOGIC;
  signal \R_reg_n_0_[7][6]\ : STD_LOGIC;
  signal \R_reg_n_0_[7][7]\ : STD_LOGIC;
  signal \minusOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_carry__0_n_3\ : STD_LOGIC;
  signal minusOp_carry_i_5_n_0 : STD_LOGIC;
  signal minusOp_carry_i_6_n_0 : STD_LOGIC;
  signal minusOp_carry_i_7_n_0 : STD_LOGIC;
  signal minusOp_carry_i_8_n_0 : STD_LOGIC;
  signal minusOp_carry_n_0 : STD_LOGIC;
  signal minusOp_carry_n_1 : STD_LOGIC;
  signal minusOp_carry_n_2 : STD_LOGIC;
  signal minusOp_carry_n_3 : STD_LOGIC;
  signal \plusOp_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_17_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_18_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_19_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_20_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_21_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal plusOp_carry_i_10_n_0 : STD_LOGIC;
  signal plusOp_carry_i_11_n_0 : STD_LOGIC;
  signal plusOp_carry_i_12_n_0 : STD_LOGIC;
  signal plusOp_carry_i_13_n_0 : STD_LOGIC;
  signal plusOp_carry_i_14_n_0 : STD_LOGIC;
  signal plusOp_carry_i_15_n_0 : STD_LOGIC;
  signal plusOp_carry_i_16_n_0 : STD_LOGIC;
  signal plusOp_carry_i_17_n_0 : STD_LOGIC;
  signal plusOp_carry_i_18_n_0 : STD_LOGIC;
  signal plusOp_carry_i_19_n_0 : STD_LOGIC;
  signal plusOp_carry_i_1_n_0 : STD_LOGIC;
  signal plusOp_carry_i_20_n_0 : STD_LOGIC;
  signal plusOp_carry_i_21_n_0 : STD_LOGIC;
  signal plusOp_carry_i_22_n_0 : STD_LOGIC;
  signal plusOp_carry_i_23_n_0 : STD_LOGIC;
  signal plusOp_carry_i_24_n_0 : STD_LOGIC;
  signal plusOp_carry_i_2_n_0 : STD_LOGIC;
  signal plusOp_carry_i_3_n_0 : STD_LOGIC;
  signal plusOp_carry_i_4_n_0 : STD_LOGIC;
  signal plusOp_carry_i_5_n_0 : STD_LOGIC;
  signal plusOp_carry_i_6_n_0 : STD_LOGIC;
  signal plusOp_carry_i_7_n_0 : STD_LOGIC;
  signal plusOp_carry_i_8_n_0 : STD_LOGIC;
  signal plusOp_carry_i_9_n_0 : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal \NLW_minusOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_plusOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \O_ADDR_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ADDR_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ADDR_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ADDR_reg[12]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ADDR_reg[13]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ADDR_reg[14]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ADDR_reg[15]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ADDR_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ADDR_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ADDR_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ADDR_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ADDR_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ADDR_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ADDR_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ADDR_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ADDR_reg[9]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ALU_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ALU_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ALU_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ALU_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ALU_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ALU_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ALU_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ALU_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[0][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[0][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[0][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[0][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[0][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[0][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[0][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[0][7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[1][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[1][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[1][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[1][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[1][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[1][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[1][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[1][7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[2][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[2][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[2][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[2][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[2][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[2][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[2][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[2][7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[3][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[3][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[3][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[3][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[3][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[3][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[3][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[3][7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[4][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[4][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[4][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[4][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[4][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[4][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[4][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[4][7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[5][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[5][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[5][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[5][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[5][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[5][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[5][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[5][7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[6][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[6][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[6][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[6][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[6][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[6][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[6][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[6][7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[7][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[7][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[7][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[7][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[7][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[7][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[7][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \R_reg[7][7]\ : label is "LD";
begin
  \O_S0[4]\(7 downto 0) <= \^o_s0[4]\(7 downto 0);
  \R[0]_0\(6 downto 0) <= \^r[0]_0\(6 downto 0);
  \R[0]__55\(0) <= \^r[0]__55\(0);
\O_ADDR_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => Q(0),
      G => tt2_reg(0),
      GE => '1',
      Q => \O_ram_ADDR[13]\(0)
    );
\O_ADDR_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \R_reg_n_0_[7][2]\,
      G => tt2_reg(0),
      GE => '1',
      Q => \O_ram_ADDR[13]\(10)
    );
\O_ADDR_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \R_reg_n_0_[7][3]\,
      G => tt2_reg(0),
      GE => '1',
      Q => \O_ram_ADDR[13]\(11)
    );
\O_ADDR_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \R_reg_n_0_[7][4]\,
      G => tt2_reg(0),
      GE => '1',
      Q => \O_ram_ADDR[13]\(12)
    );
\O_ADDR_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \R_reg_n_0_[7][5]\,
      G => tt2_reg(0),
      GE => '1',
      Q => \O_ram_ADDR[13]\(13)
    );
\O_ADDR_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \R_reg_n_0_[7][6]\,
      G => tt2_reg(0),
      GE => '1',
      Q => \O_ram_ADDR[13]\(14)
    );
\O_ADDR_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \R_reg_n_0_[7][7]\,
      G => tt2_reg(0),
      GE => '1',
      Q => \O_ram_ADDR[13]\(15)
    );
\O_ADDR_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => Q(1),
      G => tt2_reg(0),
      GE => '1',
      Q => \O_ram_ADDR[13]\(1)
    );
\O_ADDR_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => Q(2),
      G => tt2_reg(0),
      GE => '1',
      Q => \O_ram_ADDR[13]\(2)
    );
\O_ADDR_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => Q(3),
      G => tt2_reg(0),
      GE => '1',
      Q => \O_ram_ADDR[13]\(3)
    );
\O_ADDR_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => Q(4),
      G => tt2_reg(0),
      GE => '1',
      Q => \O_ram_ADDR[13]\(4)
    );
\O_ADDR_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => Q(5),
      G => tt2_reg(0),
      GE => '1',
      Q => \O_ram_ADDR[13]\(5)
    );
\O_ADDR_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => Q(6),
      G => tt2_reg(0),
      GE => '1',
      Q => \O_ram_ADDR[13]\(6)
    );
\O_ADDR_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => Q(7),
      G => tt2_reg(0),
      GE => '1',
      Q => \O_ram_ADDR[13]\(7)
    );
\O_ADDR_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \R_reg_n_0_[7][0]\,
      G => tt2_reg(0),
      GE => '1',
      Q => \O_ram_ADDR[13]\(8)
    );
\O_ADDR_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \R_reg_n_0_[7][1]\,
      G => tt2_reg(0),
      GE => '1',
      Q => \O_ram_ADDR[13]\(9)
    );
\O_ALU_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(0),
      GE => '1',
      Q => \^o_s0[4]\(0)
    );
\O_ALU_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(1),
      G => E(0),
      GE => '1',
      Q => \^o_s0[4]\(1)
    );
\O_ALU_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(2),
      G => E(0),
      GE => '1',
      Q => \^o_s0[4]\(2)
    );
\O_ALU_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(3),
      G => E(0),
      GE => '1',
      Q => \^o_s0[4]\(3)
    );
\O_ALU_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(4),
      G => E(0),
      GE => '1',
      Q => \^o_s0[4]\(4)
    );
\O_ALU_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(5),
      G => E(0),
      GE => '1',
      Q => \^o_s0[4]\(5)
    );
\O_ALU_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(6),
      G => E(0),
      GE => '1',
      Q => \^o_s0[4]\(6)
    );
\O_ALU_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(7),
      G => E(0),
      GE => '1',
      Q => \^o_s0[4]\(7)
    );
\O_ALU_reg[7]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \O_ALU_reg[7]_i_7_n_0\,
      I1 => \O_ALU_reg[7]_i_8_n_0\,
      O => \^r[0]__55\(0),
      S => Q(10)
    );
\O_ALU_reg[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[3][7]\,
      I1 => \R_reg_n_0_[2][7]\,
      I2 => Q(9),
      I3 => \R_reg_n_0_[1][7]\,
      I4 => Q(8),
      I5 => \R_reg_n_0_[0][7]\,
      O => \O_ALU_reg[7]_i_7_n_0\
    );
\O_ALU_reg[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[7][7]\,
      I1 => \R_reg_n_0_[6][7]\,
      I2 => Q(9),
      I3 => \R_reg_n_0_[5][7]\,
      I4 => Q(8),
      I5 => \R_reg_n_0_[4][7]\,
      O => \O_ALU_reg[7]_i_8_n_0\
    );
\PC_reg[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555557"
    )
        port map (
      I0 => Q(11),
      I1 => \PC_reg[15]_i_5_n_0\,
      I2 => \^o_s0[4]\(7),
      I3 => \^o_s0[4]\(6),
      I4 => \^o_s0[4]\(4),
      I5 => \^o_s0[4]\(5),
      O => \O_ram_ADDR[0]\
    );
\PC_reg[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^o_s0[4]\(2),
      I1 => \^o_s0[4]\(3),
      I2 => \^o_s0[4]\(0),
      I3 => \^o_s0[4]\(1),
      O => \PC_reg[15]_i_5_n_0\
    );
\R_reg[0][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(0),
      G => tt4_reg(0),
      GE => '1',
      Q => \R_reg_n_0_[0][0]\
    );
\R_reg[0][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(1),
      G => tt4_reg(0),
      GE => '1',
      Q => \R_reg_n_0_[0][1]\
    );
\R_reg[0][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(2),
      G => tt4_reg(0),
      GE => '1',
      Q => \R_reg_n_0_[0][2]\
    );
\R_reg[0][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(3),
      G => tt4_reg(0),
      GE => '1',
      Q => \R_reg_n_0_[0][3]\
    );
\R_reg[0][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(4),
      G => tt4_reg(0),
      GE => '1',
      Q => \R_reg_n_0_[0][4]\
    );
\R_reg[0][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(5),
      G => tt4_reg(0),
      GE => '1',
      Q => \R_reg_n_0_[0][5]\
    );
\R_reg[0][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(6),
      G => tt4_reg(0),
      GE => '1',
      Q => \R_reg_n_0_[0][6]\
    );
\R_reg[0][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(7),
      G => tt4_reg(0),
      GE => '1',
      Q => \R_reg_n_0_[0][7]\
    );
\R_reg[1][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(0),
      G => tt4_reg_0(0),
      GE => '1',
      Q => \R_reg_n_0_[1][0]\
    );
\R_reg[1][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(1),
      G => tt4_reg_0(0),
      GE => '1',
      Q => \R_reg_n_0_[1][1]\
    );
\R_reg[1][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(2),
      G => tt4_reg_0(0),
      GE => '1',
      Q => \R_reg_n_0_[1][2]\
    );
\R_reg[1][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(3),
      G => tt4_reg_0(0),
      GE => '1',
      Q => \R_reg_n_0_[1][3]\
    );
\R_reg[1][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(4),
      G => tt4_reg_0(0),
      GE => '1',
      Q => \R_reg_n_0_[1][4]\
    );
\R_reg[1][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(5),
      G => tt4_reg_0(0),
      GE => '1',
      Q => \R_reg_n_0_[1][5]\
    );
\R_reg[1][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(6),
      G => tt4_reg_0(0),
      GE => '1',
      Q => \R_reg_n_0_[1][6]\
    );
\R_reg[1][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(7),
      G => tt4_reg_0(0),
      GE => '1',
      Q => \R_reg_n_0_[1][7]\
    );
\R_reg[2][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(0),
      G => tt4_reg_1(0),
      GE => '1',
      Q => \R_reg_n_0_[2][0]\
    );
\R_reg[2][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(1),
      G => tt4_reg_1(0),
      GE => '1',
      Q => \R_reg_n_0_[2][1]\
    );
\R_reg[2][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(2),
      G => tt4_reg_1(0),
      GE => '1',
      Q => \R_reg_n_0_[2][2]\
    );
\R_reg[2][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(3),
      G => tt4_reg_1(0),
      GE => '1',
      Q => \R_reg_n_0_[2][3]\
    );
\R_reg[2][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(4),
      G => tt4_reg_1(0),
      GE => '1',
      Q => \R_reg_n_0_[2][4]\
    );
\R_reg[2][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(5),
      G => tt4_reg_1(0),
      GE => '1',
      Q => \R_reg_n_0_[2][5]\
    );
\R_reg[2][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(6),
      G => tt4_reg_1(0),
      GE => '1',
      Q => \R_reg_n_0_[2][6]\
    );
\R_reg[2][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(7),
      G => tt4_reg_1(0),
      GE => '1',
      Q => \R_reg_n_0_[2][7]\
    );
\R_reg[3][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(0),
      G => tt4_reg_2(0),
      GE => '1',
      Q => \R_reg_n_0_[3][0]\
    );
\R_reg[3][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(1),
      G => tt4_reg_2(0),
      GE => '1',
      Q => \R_reg_n_0_[3][1]\
    );
\R_reg[3][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(2),
      G => tt4_reg_2(0),
      GE => '1',
      Q => \R_reg_n_0_[3][2]\
    );
\R_reg[3][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(3),
      G => tt4_reg_2(0),
      GE => '1',
      Q => \R_reg_n_0_[3][3]\
    );
\R_reg[3][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(4),
      G => tt4_reg_2(0),
      GE => '1',
      Q => \R_reg_n_0_[3][4]\
    );
\R_reg[3][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(5),
      G => tt4_reg_2(0),
      GE => '1',
      Q => \R_reg_n_0_[3][5]\
    );
\R_reg[3][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(6),
      G => tt4_reg_2(0),
      GE => '1',
      Q => \R_reg_n_0_[3][6]\
    );
\R_reg[3][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(7),
      G => tt4_reg_2(0),
      GE => '1',
      Q => \R_reg_n_0_[3][7]\
    );
\R_reg[4][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(0),
      G => tt4_reg_3(0),
      GE => '1',
      Q => \R_reg_n_0_[4][0]\
    );
\R_reg[4][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(1),
      G => tt4_reg_3(0),
      GE => '1',
      Q => \R_reg_n_0_[4][1]\
    );
\R_reg[4][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(2),
      G => tt4_reg_3(0),
      GE => '1',
      Q => \R_reg_n_0_[4][2]\
    );
\R_reg[4][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(3),
      G => tt4_reg_3(0),
      GE => '1',
      Q => \R_reg_n_0_[4][3]\
    );
\R_reg[4][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(4),
      G => tt4_reg_3(0),
      GE => '1',
      Q => \R_reg_n_0_[4][4]\
    );
\R_reg[4][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(5),
      G => tt4_reg_3(0),
      GE => '1',
      Q => \R_reg_n_0_[4][5]\
    );
\R_reg[4][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(6),
      G => tt4_reg_3(0),
      GE => '1',
      Q => \R_reg_n_0_[4][6]\
    );
\R_reg[4][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(7),
      G => tt4_reg_3(0),
      GE => '1',
      Q => \R_reg_n_0_[4][7]\
    );
\R_reg[5][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(0),
      G => tt4_reg_4(0),
      GE => '1',
      Q => \R_reg_n_0_[5][0]\
    );
\R_reg[5][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(1),
      G => tt4_reg_4(0),
      GE => '1',
      Q => \R_reg_n_0_[5][1]\
    );
\R_reg[5][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(2),
      G => tt4_reg_4(0),
      GE => '1',
      Q => \R_reg_n_0_[5][2]\
    );
\R_reg[5][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(3),
      G => tt4_reg_4(0),
      GE => '1',
      Q => \R_reg_n_0_[5][3]\
    );
\R_reg[5][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(4),
      G => tt4_reg_4(0),
      GE => '1',
      Q => \R_reg_n_0_[5][4]\
    );
\R_reg[5][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(5),
      G => tt4_reg_4(0),
      GE => '1',
      Q => \R_reg_n_0_[5][5]\
    );
\R_reg[5][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(6),
      G => tt4_reg_4(0),
      GE => '1',
      Q => \R_reg_n_0_[5][6]\
    );
\R_reg[5][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(7),
      G => tt4_reg_4(0),
      GE => '1',
      Q => \R_reg_n_0_[5][7]\
    );
\R_reg[6][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(0),
      G => tt4_reg_5(0),
      GE => '1',
      Q => \R_reg_n_0_[6][0]\
    );
\R_reg[6][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(1),
      G => tt4_reg_5(0),
      GE => '1',
      Q => \R_reg_n_0_[6][1]\
    );
\R_reg[6][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(2),
      G => tt4_reg_5(0),
      GE => '1',
      Q => \R_reg_n_0_[6][2]\
    );
\R_reg[6][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(3),
      G => tt4_reg_5(0),
      GE => '1',
      Q => \R_reg_n_0_[6][3]\
    );
\R_reg[6][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(4),
      G => tt4_reg_5(0),
      GE => '1',
      Q => \R_reg_n_0_[6][4]\
    );
\R_reg[6][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(5),
      G => tt4_reg_5(0),
      GE => '1',
      Q => \R_reg_n_0_[6][5]\
    );
\R_reg[6][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(6),
      G => tt4_reg_5(0),
      GE => '1',
      Q => \R_reg_n_0_[6][6]\
    );
\R_reg[6][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(7),
      G => tt4_reg_5(0),
      GE => '1',
      Q => \R_reg_n_0_[6][7]\
    );
\R_reg[7][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(0),
      G => tt4_reg_6(0),
      GE => '1',
      Q => \R_reg_n_0_[7][0]\
    );
\R_reg[7][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(1),
      G => tt4_reg_6(0),
      GE => '1',
      Q => \R_reg_n_0_[7][1]\
    );
\R_reg[7][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(2),
      G => tt4_reg_6(0),
      GE => '1',
      Q => \R_reg_n_0_[7][2]\
    );
\R_reg[7][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(3),
      G => tt4_reg_6(0),
      GE => '1',
      Q => \R_reg_n_0_[7][3]\
    );
\R_reg[7][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(4),
      G => tt4_reg_6(0),
      GE => '1',
      Q => \R_reg_n_0_[7][4]\
    );
\R_reg[7][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(5),
      G => tt4_reg_6(0),
      GE => '1',
      Q => \R_reg_n_0_[7][5]\
    );
\R_reg[7][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(6),
      G => tt4_reg_6(0),
      GE => '1',
      Q => \R_reg_n_0_[7][6]\
    );
\R_reg[7][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt2_reg_0(7),
      G => tt4_reg_6(0),
      GE => '1',
      Q => \R_reg_n_0_[7][7]\
    );
minusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => minusOp_carry_n_0,
      CO(2) => minusOp_carry_n_1,
      CO(1) => minusOp_carry_n_2,
      CO(0) => minusOp_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => \^r[0]_0\(3 downto 0),
      O(3 downto 0) => data2(3 downto 0),
      S(3) => minusOp_carry_i_5_n_0,
      S(2) => minusOp_carry_i_6_n_0,
      S(1) => minusOp_carry_i_7_n_0,
      S(0) => minusOp_carry_i_8_n_0
    );
\minusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => minusOp_carry_n_0,
      CO(3) => \NLW_minusOp_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \minusOp_carry__0_n_1\,
      CO(1) => \minusOp_carry__0_n_2\,
      CO(0) => \minusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^r[0]_0\(6 downto 4),
      O(3 downto 0) => data2(7 downto 4),
      S(3) => \minusOp_carry__0_i_4_n_0\,
      S(2) => \minusOp_carry__0_i_5_n_0\,
      S(1) => \minusOp_carry__0_i_6_n_0\,
      S(0) => \minusOp_carry__0_i_7_n_0\
    );
\minusOp_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \plusOp_carry__0_i_8_n_0\,
      I1 => Q(10),
      I2 => \plusOp_carry__0_i_9_n_0\,
      O => \^r[0]_0\(6)
    );
\minusOp_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \plusOp_carry__0_i_10_n_0\,
      I1 => Q(10),
      I2 => \plusOp_carry__0_i_11_n_0\,
      O => \^r[0]_0\(5)
    );
\minusOp_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \plusOp_carry__0_i_12_n_0\,
      I1 => Q(10),
      I2 => \plusOp_carry__0_i_13_n_0\,
      O => \^r[0]_0\(4)
    );
\minusOp_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \^r[0]__55\(0),
      I1 => \plusOp_carry__0_i_14_n_0\,
      I2 => Q(2),
      I3 => \plusOp_carry__0_i_15_n_0\,
      O => \minusOp_carry__0_i_4_n_0\
    );
\minusOp_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \^r[0]_0\(6),
      I1 => \plusOp_carry__0_i_16_n_0\,
      I2 => Q(2),
      I3 => \plusOp_carry__0_i_17_n_0\,
      O => \minusOp_carry__0_i_5_n_0\
    );
\minusOp_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \^r[0]_0\(5),
      I1 => \plusOp_carry__0_i_18_n_0\,
      I2 => Q(2),
      I3 => \plusOp_carry__0_i_19_n_0\,
      O => \minusOp_carry__0_i_6_n_0\
    );
\minusOp_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \^r[0]_0\(4),
      I1 => \plusOp_carry__0_i_20_n_0\,
      I2 => Q(2),
      I3 => \plusOp_carry__0_i_21_n_0\,
      O => \minusOp_carry__0_i_7_n_0\
    );
minusOp_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => plusOp_carry_i_9_n_0,
      I1 => Q(10),
      I2 => plusOp_carry_i_10_n_0,
      O => \^r[0]_0\(3)
    );
minusOp_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => plusOp_carry_i_11_n_0,
      I1 => Q(10),
      I2 => plusOp_carry_i_12_n_0,
      O => \^r[0]_0\(2)
    );
minusOp_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => plusOp_carry_i_13_n_0,
      I1 => Q(10),
      I2 => plusOp_carry_i_14_n_0,
      O => \^r[0]_0\(1)
    );
minusOp_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => plusOp_carry_i_15_n_0,
      I1 => Q(10),
      I2 => plusOp_carry_i_16_n_0,
      O => \^r[0]_0\(0)
    );
minusOp_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \^r[0]_0\(3),
      I1 => plusOp_carry_i_17_n_0,
      I2 => Q(2),
      I3 => plusOp_carry_i_18_n_0,
      O => minusOp_carry_i_5_n_0
    );
minusOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \^r[0]_0\(2),
      I1 => plusOp_carry_i_19_n_0,
      I2 => Q(2),
      I3 => plusOp_carry_i_20_n_0,
      O => minusOp_carry_i_6_n_0
    );
minusOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \^r[0]_0\(1),
      I1 => plusOp_carry_i_21_n_0,
      I2 => Q(2),
      I3 => plusOp_carry_i_22_n_0,
      O => minusOp_carry_i_7_n_0
    );
minusOp_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \^r[0]_0\(0),
      I1 => plusOp_carry_i_23_n_0,
      I2 => Q(2),
      I3 => plusOp_carry_i_24_n_0,
      O => minusOp_carry_i_8_n_0
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => '0',
      DI(3) => plusOp_carry_i_1_n_0,
      DI(2) => plusOp_carry_i_2_n_0,
      DI(1) => plusOp_carry_i_3_n_0,
      DI(0) => plusOp_carry_i_4_n_0,
      O(3 downto 0) => data1(3 downto 0),
      S(3) => plusOp_carry_i_5_n_0,
      S(2) => plusOp_carry_i_6_n_0,
      S(1) => plusOp_carry_i_7_n_0,
      S(0) => plusOp_carry_i_8_n_0
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \NLW_plusOp_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \plusOp_carry__0_i_1_n_0\,
      DI(1) => \plusOp_carry__0_i_2_n_0\,
      DI(0) => \plusOp_carry__0_i_3_n_0\,
      O(3 downto 0) => data1(7 downto 4),
      S(3) => \plusOp_carry__0_i_4__0_n_0\,
      S(2) => \plusOp_carry__0_i_5_n_0\,
      S(1) => \plusOp_carry__0_i_6_n_0\,
      S(0) => \plusOp_carry__0_i_7_n_0\
    );
\plusOp_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \plusOp_carry__0_i_8_n_0\,
      I1 => Q(10),
      I2 => \plusOp_carry__0_i_9_n_0\,
      O => \plusOp_carry__0_i_1_n_0\
    );
\plusOp_carry__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[7][5]\,
      I1 => \R_reg_n_0_[6][5]\,
      I2 => Q(9),
      I3 => \R_reg_n_0_[5][5]\,
      I4 => Q(8),
      I5 => \R_reg_n_0_[4][5]\,
      O => \plusOp_carry__0_i_10_n_0\
    );
\plusOp_carry__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[3][5]\,
      I1 => \R_reg_n_0_[2][5]\,
      I2 => Q(9),
      I3 => \R_reg_n_0_[1][5]\,
      I4 => Q(8),
      I5 => \R_reg_n_0_[0][5]\,
      O => \plusOp_carry__0_i_11_n_0\
    );
\plusOp_carry__0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[7][4]\,
      I1 => \R_reg_n_0_[6][4]\,
      I2 => Q(9),
      I3 => \R_reg_n_0_[5][4]\,
      I4 => Q(8),
      I5 => \R_reg_n_0_[4][4]\,
      O => \plusOp_carry__0_i_12_n_0\
    );
\plusOp_carry__0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[3][4]\,
      I1 => \R_reg_n_0_[2][4]\,
      I2 => Q(9),
      I3 => \R_reg_n_0_[1][4]\,
      I4 => Q(8),
      I5 => \R_reg_n_0_[0][4]\,
      O => \plusOp_carry__0_i_13_n_0\
    );
\plusOp_carry__0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[3][7]\,
      I1 => \R_reg_n_0_[2][7]\,
      I2 => Q(1),
      I3 => \R_reg_n_0_[1][7]\,
      I4 => Q(0),
      I5 => \R_reg_n_0_[0][7]\,
      O => \plusOp_carry__0_i_14_n_0\
    );
\plusOp_carry__0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[7][7]\,
      I1 => \R_reg_n_0_[6][7]\,
      I2 => Q(1),
      I3 => \R_reg_n_0_[5][7]\,
      I4 => Q(0),
      I5 => \R_reg_n_0_[4][7]\,
      O => \plusOp_carry__0_i_15_n_0\
    );
\plusOp_carry__0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[3][6]\,
      I1 => \R_reg_n_0_[2][6]\,
      I2 => Q(1),
      I3 => \R_reg_n_0_[1][6]\,
      I4 => Q(0),
      I5 => \R_reg_n_0_[0][6]\,
      O => \plusOp_carry__0_i_16_n_0\
    );
\plusOp_carry__0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[7][6]\,
      I1 => \R_reg_n_0_[6][6]\,
      I2 => Q(1),
      I3 => \R_reg_n_0_[5][6]\,
      I4 => Q(0),
      I5 => \R_reg_n_0_[4][6]\,
      O => \plusOp_carry__0_i_17_n_0\
    );
\plusOp_carry__0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[3][5]\,
      I1 => \R_reg_n_0_[2][5]\,
      I2 => Q(1),
      I3 => \R_reg_n_0_[1][5]\,
      I4 => Q(0),
      I5 => \R_reg_n_0_[0][5]\,
      O => \plusOp_carry__0_i_18_n_0\
    );
\plusOp_carry__0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[7][5]\,
      I1 => \R_reg_n_0_[6][5]\,
      I2 => Q(1),
      I3 => \R_reg_n_0_[5][5]\,
      I4 => Q(0),
      I5 => \R_reg_n_0_[4][5]\,
      O => \plusOp_carry__0_i_19_n_0\
    );
\plusOp_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \plusOp_carry__0_i_10_n_0\,
      I1 => Q(10),
      I2 => \plusOp_carry__0_i_11_n_0\,
      O => \plusOp_carry__0_i_2_n_0\
    );
\plusOp_carry__0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[3][4]\,
      I1 => \R_reg_n_0_[2][4]\,
      I2 => Q(1),
      I3 => \R_reg_n_0_[1][4]\,
      I4 => Q(0),
      I5 => \R_reg_n_0_[0][4]\,
      O => \plusOp_carry__0_i_20_n_0\
    );
\plusOp_carry__0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[7][4]\,
      I1 => \R_reg_n_0_[6][4]\,
      I2 => Q(1),
      I3 => \R_reg_n_0_[5][4]\,
      I4 => Q(0),
      I5 => \R_reg_n_0_[4][4]\,
      O => \plusOp_carry__0_i_21_n_0\
    );
\plusOp_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \plusOp_carry__0_i_12_n_0\,
      I1 => Q(10),
      I2 => \plusOp_carry__0_i_13_n_0\,
      O => \plusOp_carry__0_i_3_n_0\
    );
\plusOp_carry__0_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^r[0]__55\(0),
      I1 => \plusOp_carry__0_i_14_n_0\,
      I2 => Q(2),
      I3 => \plusOp_carry__0_i_15_n_0\,
      O => \plusOp_carry__0_i_4__0_n_0\
    );
\plusOp_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^r[0]_0\(6),
      I1 => \plusOp_carry__0_i_16_n_0\,
      I2 => Q(2),
      I3 => \plusOp_carry__0_i_17_n_0\,
      O => \plusOp_carry__0_i_5_n_0\
    );
\plusOp_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^r[0]_0\(5),
      I1 => \plusOp_carry__0_i_18_n_0\,
      I2 => Q(2),
      I3 => \plusOp_carry__0_i_19_n_0\,
      O => \plusOp_carry__0_i_6_n_0\
    );
\plusOp_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^r[0]_0\(4),
      I1 => \plusOp_carry__0_i_20_n_0\,
      I2 => Q(2),
      I3 => \plusOp_carry__0_i_21_n_0\,
      O => \plusOp_carry__0_i_7_n_0\
    );
\plusOp_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[7][6]\,
      I1 => \R_reg_n_0_[6][6]\,
      I2 => Q(9),
      I3 => \R_reg_n_0_[5][6]\,
      I4 => Q(8),
      I5 => \R_reg_n_0_[4][6]\,
      O => \plusOp_carry__0_i_8_n_0\
    );
\plusOp_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[3][6]\,
      I1 => \R_reg_n_0_[2][6]\,
      I2 => Q(9),
      I3 => \R_reg_n_0_[1][6]\,
      I4 => Q(8),
      I5 => \R_reg_n_0_[0][6]\,
      O => \plusOp_carry__0_i_9_n_0\
    );
plusOp_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => plusOp_carry_i_9_n_0,
      I1 => Q(10),
      I2 => plusOp_carry_i_10_n_0,
      O => plusOp_carry_i_1_n_0
    );
plusOp_carry_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[3][3]\,
      I1 => \R_reg_n_0_[2][3]\,
      I2 => Q(9),
      I3 => \R_reg_n_0_[1][3]\,
      I4 => Q(8),
      I5 => \R_reg_n_0_[0][3]\,
      O => plusOp_carry_i_10_n_0
    );
plusOp_carry_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[7][2]\,
      I1 => \R_reg_n_0_[6][2]\,
      I2 => Q(9),
      I3 => \R_reg_n_0_[5][2]\,
      I4 => Q(8),
      I5 => \R_reg_n_0_[4][2]\,
      O => plusOp_carry_i_11_n_0
    );
plusOp_carry_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[3][2]\,
      I1 => \R_reg_n_0_[2][2]\,
      I2 => Q(9),
      I3 => \R_reg_n_0_[1][2]\,
      I4 => Q(8),
      I5 => \R_reg_n_0_[0][2]\,
      O => plusOp_carry_i_12_n_0
    );
plusOp_carry_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[7][1]\,
      I1 => \R_reg_n_0_[6][1]\,
      I2 => Q(9),
      I3 => \R_reg_n_0_[5][1]\,
      I4 => Q(8),
      I5 => \R_reg_n_0_[4][1]\,
      O => plusOp_carry_i_13_n_0
    );
plusOp_carry_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[3][1]\,
      I1 => \R_reg_n_0_[2][1]\,
      I2 => Q(9),
      I3 => \R_reg_n_0_[1][1]\,
      I4 => Q(8),
      I5 => \R_reg_n_0_[0][1]\,
      O => plusOp_carry_i_14_n_0
    );
plusOp_carry_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[7][0]\,
      I1 => \R_reg_n_0_[6][0]\,
      I2 => Q(9),
      I3 => \R_reg_n_0_[5][0]\,
      I4 => Q(8),
      I5 => \R_reg_n_0_[4][0]\,
      O => plusOp_carry_i_15_n_0
    );
plusOp_carry_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[3][0]\,
      I1 => \R_reg_n_0_[2][0]\,
      I2 => Q(9),
      I3 => \R_reg_n_0_[1][0]\,
      I4 => Q(8),
      I5 => \R_reg_n_0_[0][0]\,
      O => plusOp_carry_i_16_n_0
    );
plusOp_carry_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[3][3]\,
      I1 => \R_reg_n_0_[2][3]\,
      I2 => Q(1),
      I3 => \R_reg_n_0_[1][3]\,
      I4 => Q(0),
      I5 => \R_reg_n_0_[0][3]\,
      O => plusOp_carry_i_17_n_0
    );
plusOp_carry_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[7][3]\,
      I1 => \R_reg_n_0_[6][3]\,
      I2 => Q(1),
      I3 => \R_reg_n_0_[5][3]\,
      I4 => Q(0),
      I5 => \R_reg_n_0_[4][3]\,
      O => plusOp_carry_i_18_n_0
    );
plusOp_carry_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[3][2]\,
      I1 => \R_reg_n_0_[2][2]\,
      I2 => Q(1),
      I3 => \R_reg_n_0_[1][2]\,
      I4 => Q(0),
      I5 => \R_reg_n_0_[0][2]\,
      O => plusOp_carry_i_19_n_0
    );
plusOp_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => plusOp_carry_i_11_n_0,
      I1 => Q(10),
      I2 => plusOp_carry_i_12_n_0,
      O => plusOp_carry_i_2_n_0
    );
plusOp_carry_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[7][2]\,
      I1 => \R_reg_n_0_[6][2]\,
      I2 => Q(1),
      I3 => \R_reg_n_0_[5][2]\,
      I4 => Q(0),
      I5 => \R_reg_n_0_[4][2]\,
      O => plusOp_carry_i_20_n_0
    );
plusOp_carry_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[3][1]\,
      I1 => \R_reg_n_0_[2][1]\,
      I2 => Q(1),
      I3 => \R_reg_n_0_[1][1]\,
      I4 => Q(0),
      I5 => \R_reg_n_0_[0][1]\,
      O => plusOp_carry_i_21_n_0
    );
plusOp_carry_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[7][1]\,
      I1 => \R_reg_n_0_[6][1]\,
      I2 => Q(1),
      I3 => \R_reg_n_0_[5][1]\,
      I4 => Q(0),
      I5 => \R_reg_n_0_[4][1]\,
      O => plusOp_carry_i_22_n_0
    );
plusOp_carry_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[3][0]\,
      I1 => \R_reg_n_0_[2][0]\,
      I2 => Q(1),
      I3 => \R_reg_n_0_[1][0]\,
      I4 => Q(0),
      I5 => \R_reg_n_0_[0][0]\,
      O => plusOp_carry_i_23_n_0
    );
plusOp_carry_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[7][0]\,
      I1 => \R_reg_n_0_[6][0]\,
      I2 => Q(1),
      I3 => \R_reg_n_0_[5][0]\,
      I4 => Q(0),
      I5 => \R_reg_n_0_[4][0]\,
      O => plusOp_carry_i_24_n_0
    );
plusOp_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => plusOp_carry_i_13_n_0,
      I1 => Q(10),
      I2 => plusOp_carry_i_14_n_0,
      O => plusOp_carry_i_3_n_0
    );
plusOp_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => plusOp_carry_i_15_n_0,
      I1 => Q(10),
      I2 => plusOp_carry_i_16_n_0,
      O => plusOp_carry_i_4_n_0
    );
plusOp_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^r[0]_0\(3),
      I1 => plusOp_carry_i_17_n_0,
      I2 => Q(2),
      I3 => plusOp_carry_i_18_n_0,
      O => plusOp_carry_i_5_n_0
    );
plusOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^r[0]_0\(2),
      I1 => plusOp_carry_i_19_n_0,
      I2 => Q(2),
      I3 => plusOp_carry_i_20_n_0,
      O => plusOp_carry_i_6_n_0
    );
plusOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^r[0]_0\(1),
      I1 => plusOp_carry_i_21_n_0,
      I2 => Q(2),
      I3 => plusOp_carry_i_22_n_0,
      O => plusOp_carry_i_7_n_0
    );
plusOp_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^r[0]_0\(0),
      I1 => plusOp_carry_i_23_n_0,
      I2 => Q(2),
      I3 => plusOp_carry_i_24_n_0,
      O => plusOp_carry_i_8_n_0
    );
plusOp_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[7][3]\,
      I1 => \R_reg_n_0_[6][3]\,
      I2 => Q(9),
      I3 => \R_reg_n_0_[5][3]\,
      I4 => Q(8),
      I5 => \R_reg_n_0_[4][3]\,
      O => plusOp_carry_i_9_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fetch is
  port (
    O_ram_NRD_OBUF : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \O_ram_ADDR[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \O_ram_ADDR[4]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \O_ram_ADDR[4]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \O_ram_ADDR[4]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \O_ram_ADDR[4]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \O_ram_ADDR[4]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \O_ram_ADDR[4]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \O_ram_ADDR[4]_5\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    O_ram_NWR_OBUF : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \O_ram_ADDR[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \O_ram_ADDR[0]_1\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \O_ram_ADDR[0]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \O_ram_ADDR[0]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \O_S0[4]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \O_ram_ADDR[0]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \O_ram_ADDR[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \O_ram_ADDR[0]_5\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    O_ram_NCS_OBUF : out STD_LOGIC;
    \O_S0_TRI[0]\ : out STD_LOGIC;
    \O_S1_TRI[0]\ : out STD_LOGIC;
    \O_S2_TRI[0]\ : out STD_LOGIC;
    \O_S3_TRI[0]\ : out STD_LOGIC;
    \IO_ram_DATA_TRI[0]\ : out STD_LOGIC;
    O_t1 : in STD_LOGIC;
    O_t3 : in STD_LOGIC;
    tt3_reg : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tt2_reg : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tt3_reg_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    O_t4 : in STD_LOGIC;
    O_t2 : in STD_LOGIC;
    I_K1_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I_K0_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I_K3_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I_K2_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \R[0]__55\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \R[0]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    data2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tt2_reg_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    tt1_reg : in STD_LOGIC;
    tt1_reg_0 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    tt1_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end fetch;

architecture STRUCTURE of fetch is
  signal \O_ALU_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \O_ALU_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \O_ALU_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \O_ALU_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \O_ALU_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \O_ALU_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \O_ALU_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \O_ALU_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \O_ALU_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \O_ALU_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal O_IR : STD_LOGIC_VECTOR ( 15 downto 13 );
  signal O_PC : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal O_PC_update : STD_LOGIC;
  signal O_RD_ram : STD_LOGIC;
  signal \O_RTEMP_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \O_RTEMP_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \O_RTEMP_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \O_RTEMP_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \O_RTEMP_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \O_RTEMP_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \O_RTEMP_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \O_RTEMP_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \O_RTEMP_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \O_S0_OBUFT[7]_inst_i_2_n_0\ : STD_LOGIC;
  signal \O_S0_OBUFT[7]_inst_i_3_n_0\ : STD_LOGIC;
  signal \O_S1_OBUFT[7]_inst_i_2_n_0\ : STD_LOGIC;
  signal \O_S1_OBUFT[7]_inst_i_3_n_0\ : STD_LOGIC;
  signal \O_S2_OBUFT[7]_inst_i_2_n_0\ : STD_LOGIC;
  signal \O_S3_OBUFT[7]_inst_i_2_n_0\ : STD_LOGIC;
  signal \O_S3_OBUFT[7]_inst_i_3_n_0\ : STD_LOGIC;
  signal \PC_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \PC_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \PC_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \PC_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \PC_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \PC_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \PC_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \PC_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \PC_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \PC_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \PC_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \PC_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \PC_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \PC_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \PC_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \PC_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \PC_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal PC_t : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal io_RTEMP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \plusOp_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry_i_4__0_n_0\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal \uut_ram_ctrl/IO_DATA_reg0\ : STD_LOGIC;
  signal \uut_write_back/O_REG_addr1__2\ : STD_LOGIC;
  signal \NLW_plusOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \IO_ram_DATA_IOBUF[7]_inst_i_2\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \IR_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \IR_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \IR_reg[12]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \IR_reg[13]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \IR_reg[14]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \IR_reg[15]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \IR_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \IR_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \IR_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \IR_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \IR_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \IR_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \IR_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \IR_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \IR_reg[9]\ : label is "LD";
  attribute SOFT_HLUTNM of \O_ADDR_reg[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \O_ADDR_reg[10]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \O_ADDR_reg[11]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \O_ADDR_reg[12]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \O_ADDR_reg[13]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \O_ADDR_reg[14]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \O_ADDR_reg[15]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \O_ADDR_reg[15]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \O_ADDR_reg[15]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \O_ADDR_reg[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \O_ADDR_reg[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \O_ADDR_reg[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \O_ADDR_reg[4]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \O_ADDR_reg[5]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \O_ADDR_reg[6]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \O_ADDR_reg[7]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \O_ADDR_reg[8]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \O_ADDR_reg[9]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \O_ALU_reg[7]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \O_ALU_reg[7]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \O_ALU_reg[7]_i_5\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \O_REG_new_reg[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \O_REG_new_reg[7]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \O_RTEMP_reg[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \O_RTEMP_reg[0]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \O_RTEMP_reg[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \O_RTEMP_reg[1]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \O_RTEMP_reg[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \O_RTEMP_reg[2]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \O_RTEMP_reg[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \O_RTEMP_reg[3]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \O_RTEMP_reg[4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \O_RTEMP_reg[4]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \O_RTEMP_reg[5]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \O_RTEMP_reg[5]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \O_RTEMP_reg[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \O_RTEMP_reg[6]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \O_RTEMP_reg[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \O_RTEMP_reg[7]_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \O_RTEMP_reg[7]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \O_RTEMP_reg[7]_i_3\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \O_RTEMP_reg[7]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \O_RTEMP_reg[7]_i_6\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \O_S0_OBUFT[7]_inst_i_3\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \O_S1_OBUFT[7]_inst_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \O_S3_OBUFT[7]_inst_i_3\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of O_ram_NCS_OBUF_inst_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of O_ram_NWR_OBUF_inst_i_1 : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \PC_reg[0]\ : label is "LDC";
  attribute SOFT_HLUTNM of \PC_reg[0]_i_1\ : label is "soft_lutpair18";
  attribute XILINX_LEGACY_PRIM of \PC_reg[10]\ : label is "LDC";
  attribute SOFT_HLUTNM of \PC_reg[10]_i_1\ : label is "soft_lutpair27";
  attribute XILINX_LEGACY_PRIM of \PC_reg[11]\ : label is "LDC";
  attribute SOFT_HLUTNM of \PC_reg[11]_i_1\ : label is "soft_lutpair28";
  attribute XILINX_LEGACY_PRIM of \PC_reg[12]\ : label is "LDC";
  attribute SOFT_HLUTNM of \PC_reg[12]_i_1\ : label is "soft_lutpair17";
  attribute XILINX_LEGACY_PRIM of \PC_reg[13]\ : label is "LDC";
  attribute SOFT_HLUTNM of \PC_reg[13]_i_1\ : label is "soft_lutpair29";
  attribute XILINX_LEGACY_PRIM of \PC_reg[14]\ : label is "LDC";
  attribute SOFT_HLUTNM of \PC_reg[14]_i_1\ : label is "soft_lutpair30";
  attribute XILINX_LEGACY_PRIM of \PC_reg[15]\ : label is "LDC";
  attribute SOFT_HLUTNM of \PC_reg[15]_i_1\ : label is "soft_lutpair31";
  attribute XILINX_LEGACY_PRIM of \PC_reg[1]\ : label is "LDC";
  attribute SOFT_HLUTNM of \PC_reg[1]_i_1\ : label is "soft_lutpair19";
  attribute XILINX_LEGACY_PRIM of \PC_reg[2]\ : label is "LDC";
  attribute SOFT_HLUTNM of \PC_reg[2]_i_1\ : label is "soft_lutpair20";
  attribute XILINX_LEGACY_PRIM of \PC_reg[3]\ : label is "LDC";
  attribute SOFT_HLUTNM of \PC_reg[3]_i_1\ : label is "soft_lutpair16";
  attribute XILINX_LEGACY_PRIM of \PC_reg[4]\ : label is "LDC";
  attribute SOFT_HLUTNM of \PC_reg[4]_i_1\ : label is "soft_lutpair21";
  attribute XILINX_LEGACY_PRIM of \PC_reg[5]\ : label is "LDC";
  attribute SOFT_HLUTNM of \PC_reg[5]_i_1\ : label is "soft_lutpair22";
  attribute XILINX_LEGACY_PRIM of \PC_reg[6]\ : label is "LDC";
  attribute SOFT_HLUTNM of \PC_reg[6]_i_1\ : label is "soft_lutpair23";
  attribute XILINX_LEGACY_PRIM of \PC_reg[7]\ : label is "LDC";
  attribute SOFT_HLUTNM of \PC_reg[7]_i_1\ : label is "soft_lutpair24";
  attribute XILINX_LEGACY_PRIM of \PC_reg[8]\ : label is "LDC";
  attribute SOFT_HLUTNM of \PC_reg[8]_i_1\ : label is "soft_lutpair25";
  attribute XILINX_LEGACY_PRIM of \PC_reg[9]\ : label is "LDC";
  attribute SOFT_HLUTNM of \PC_reg[9]_i_1\ : label is "soft_lutpair26";
  attribute XILINX_LEGACY_PRIM of \PC_t_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \PC_t_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \PC_t_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \PC_t_reg[12]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \PC_t_reg[13]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \PC_t_reg[14]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \PC_t_reg[15]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \PC_t_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \PC_t_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \PC_t_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \PC_t_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \PC_t_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \PC_t_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \PC_t_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \PC_t_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \PC_t_reg[9]\ : label is "LD";
  attribute SOFT_HLUTNM of \R_reg[0][7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \R_reg[0][7]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \R_reg[1][7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \R_reg[2][7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \R_reg[3][7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \R_reg[4][7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \R_reg[5][7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \R_reg[6][7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \R_reg[7][7]_i_1\ : label is "soft_lutpair7";
begin
  Q(11 downto 0) <= \^q\(11 downto 0);
\IO_ram_DATA_IOBUF[7]_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \uut_ram_ctrl/IO_DATA_reg0\,
      O => \IO_ram_DATA_TRI[0]\
    );
\IO_ram_DATA_IOBUF[7]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => O_t3,
      I1 => O_IR(15),
      I2 => O_IR(14),
      I3 => O_IR(13),
      I4 => \^q\(11),
      O => \uut_ram_ctrl/IO_DATA_reg0\
    );
\IR_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt1_reg_0(0),
      G => tt1_reg_1(0),
      GE => '1',
      Q => \^q\(0)
    );
\IR_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt1_reg_0(10),
      G => tt1_reg_1(0),
      GE => '1',
      Q => \^q\(10)
    );
\IR_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt1_reg_0(11),
      G => tt1_reg_1(0),
      GE => '1',
      Q => \^q\(11)
    );
\IR_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt1_reg_0(12),
      G => tt1_reg_1(0),
      GE => '1',
      Q => O_IR(13)
    );
\IR_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt1_reg_0(13),
      G => tt1_reg_1(0),
      GE => '1',
      Q => O_IR(14)
    );
\IR_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt1_reg_0(14),
      G => tt1_reg_1(0),
      GE => '1',
      Q => O_IR(15)
    );
\IR_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt1_reg_0(1),
      G => tt1_reg_1(0),
      GE => '1',
      Q => \^q\(1)
    );
\IR_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt1_reg_0(2),
      G => tt1_reg_1(0),
      GE => '1',
      Q => \^q\(2)
    );
\IR_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt1_reg_0(3),
      G => tt1_reg_1(0),
      GE => '1',
      Q => \^q\(3)
    );
\IR_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt1_reg_0(4),
      G => tt1_reg_1(0),
      GE => '1',
      Q => \^q\(4)
    );
\IR_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt1_reg_0(5),
      G => tt1_reg_1(0),
      GE => '1',
      Q => \^q\(5)
    );
\IR_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt1_reg_0(6),
      G => tt1_reg_1(0),
      GE => '1',
      Q => \^q\(6)
    );
\IR_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt1_reg_0(7),
      G => tt1_reg_1(0),
      GE => '1',
      Q => \^q\(7)
    );
\IR_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt1_reg_0(8),
      G => tt1_reg_1(0),
      GE => '1',
      Q => \^q\(8)
    );
\IR_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt1_reg_0(9),
      G => tt1_reg_1(0),
      GE => '1',
      Q => \^q\(9)
    );
\O_ADDR_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => O_PC(0),
      I1 => tt2_reg_0(0),
      I2 => O_t1,
      O => \O_ram_ADDR[15]\(0)
    );
\O_ADDR_reg[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => O_PC(10),
      I1 => tt2_reg_0(10),
      I2 => O_t1,
      O => \O_ram_ADDR[15]\(10)
    );
\O_ADDR_reg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => O_PC(11),
      I1 => tt2_reg_0(11),
      I2 => O_t1,
      O => \O_ram_ADDR[15]\(11)
    );
\O_ADDR_reg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => O_PC(12),
      I1 => tt2_reg_0(12),
      I2 => O_t1,
      O => \O_ram_ADDR[15]\(12)
    );
\O_ADDR_reg[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => O_PC(13),
      I1 => tt2_reg_0(13),
      I2 => O_t1,
      O => \O_ram_ADDR[15]\(13)
    );
\O_ADDR_reg[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => O_PC(14),
      I1 => tt2_reg_0(14),
      I2 => O_t1,
      O => \O_ram_ADDR[15]\(14)
    );
\O_ADDR_reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4004"
    )
        port map (
      I0 => O_IR(15),
      I1 => O_t2,
      I2 => O_IR(13),
      I3 => O_IR(14),
      O => \O_ram_ADDR[0]_4\(0)
    );
\O_ADDR_reg[15]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => O_PC(15),
      I1 => tt2_reg_0(15),
      I2 => O_t1,
      O => \O_ram_ADDR[15]\(15)
    );
\O_ADDR_reg[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => O_t3,
      I1 => O_IR(15),
      I2 => O_IR(14),
      I3 => O_IR(13),
      I4 => O_t1,
      O => \O_ram_ADDR[0]_5\(0)
    );
\O_ADDR_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => O_PC(1),
      I1 => tt2_reg_0(1),
      I2 => O_t1,
      O => \O_ram_ADDR[15]\(1)
    );
\O_ADDR_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => O_PC(2),
      I1 => tt2_reg_0(2),
      I2 => O_t1,
      O => \O_ram_ADDR[15]\(2)
    );
\O_ADDR_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => O_PC(3),
      I1 => tt2_reg_0(3),
      I2 => O_t1,
      O => \O_ram_ADDR[15]\(3)
    );
\O_ADDR_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => O_PC(4),
      I1 => tt2_reg_0(4),
      I2 => O_t1,
      O => \O_ram_ADDR[15]\(4)
    );
\O_ADDR_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => O_PC(5),
      I1 => tt2_reg_0(5),
      I2 => O_t1,
      O => \O_ram_ADDR[15]\(5)
    );
\O_ADDR_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => O_PC(6),
      I1 => tt2_reg_0(6),
      I2 => O_t1,
      O => \O_ram_ADDR[15]\(6)
    );
\O_ADDR_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => O_PC(7),
      I1 => tt2_reg_0(7),
      I2 => O_t1,
      O => \O_ram_ADDR[15]\(7)
    );
\O_ADDR_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => O_PC(8),
      I1 => tt2_reg_0(8),
      I2 => O_t1,
      O => \O_ram_ADDR[15]\(8)
    );
\O_ADDR_reg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => O_PC(9),
      I1 => tt2_reg_0(9),
      I2 => O_t1,
      O => \O_ram_ADDR[15]\(9)
    );
\O_ALU_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55FF55FF40EA40"
    )
        port map (
      I0 => O_IR(15),
      I1 => data1(0),
      I2 => \O_ALU_reg[7]_i_3_n_0\,
      I3 => \R[0]_0\(0),
      I4 => \O_ALU_reg[7]_i_5_n_0\,
      I5 => \O_ALU_reg[0]_i_2_n_0\,
      O => \O_S0[4]\(0)
    );
\O_ALU_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0300800000008000"
    )
        port map (
      I0 => data2(0),
      I1 => \^q\(11),
      I2 => O_IR(13),
      I3 => O_t2,
      I4 => O_IR(14),
      I5 => \^q\(0),
      O => \O_ALU_reg[0]_i_2_n_0\
    );
\O_ALU_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55FF55FF40EA40"
    )
        port map (
      I0 => O_IR(15),
      I1 => data1(1),
      I2 => \O_ALU_reg[7]_i_3_n_0\,
      I3 => \R[0]_0\(1),
      I4 => \O_ALU_reg[7]_i_5_n_0\,
      I5 => \O_ALU_reg[1]_i_2_n_0\,
      O => \O_S0[4]\(1)
    );
\O_ALU_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0300800000008000"
    )
        port map (
      I0 => data2(1),
      I1 => \^q\(11),
      I2 => O_IR(13),
      I3 => O_t2,
      I4 => O_IR(14),
      I5 => \^q\(1),
      O => \O_ALU_reg[1]_i_2_n_0\
    );
\O_ALU_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55FF55FF40EA40"
    )
        port map (
      I0 => O_IR(15),
      I1 => data1(2),
      I2 => \O_ALU_reg[7]_i_3_n_0\,
      I3 => \R[0]_0\(2),
      I4 => \O_ALU_reg[7]_i_5_n_0\,
      I5 => \O_ALU_reg[2]_i_2_n_0\,
      O => \O_S0[4]\(2)
    );
\O_ALU_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0300800000008000"
    )
        port map (
      I0 => data2(2),
      I1 => \^q\(11),
      I2 => O_IR(13),
      I3 => O_t2,
      I4 => O_IR(14),
      I5 => \^q\(2),
      O => \O_ALU_reg[2]_i_2_n_0\
    );
\O_ALU_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55FF55FF40EA40"
    )
        port map (
      I0 => O_IR(15),
      I1 => data1(3),
      I2 => \O_ALU_reg[7]_i_3_n_0\,
      I3 => \R[0]_0\(3),
      I4 => \O_ALU_reg[7]_i_5_n_0\,
      I5 => \O_ALU_reg[3]_i_2_n_0\,
      O => \O_S0[4]\(3)
    );
\O_ALU_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0300800000008000"
    )
        port map (
      I0 => data2(3),
      I1 => \^q\(11),
      I2 => O_IR(13),
      I3 => O_t2,
      I4 => O_IR(14),
      I5 => \^q\(3),
      O => \O_ALU_reg[3]_i_2_n_0\
    );
\O_ALU_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55FF55FF40EA40"
    )
        port map (
      I0 => O_IR(15),
      I1 => data1(4),
      I2 => \O_ALU_reg[7]_i_3_n_0\,
      I3 => \R[0]_0\(4),
      I4 => \O_ALU_reg[7]_i_5_n_0\,
      I5 => \O_ALU_reg[4]_i_2_n_0\,
      O => \O_S0[4]\(4)
    );
\O_ALU_reg[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0300800000008000"
    )
        port map (
      I0 => data2(4),
      I1 => \^q\(11),
      I2 => O_IR(13),
      I3 => O_t2,
      I4 => O_IR(14),
      I5 => \^q\(4),
      O => \O_ALU_reg[4]_i_2_n_0\
    );
\O_ALU_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55FF55FF40EA40"
    )
        port map (
      I0 => O_IR(15),
      I1 => data1(5),
      I2 => \O_ALU_reg[7]_i_3_n_0\,
      I3 => \R[0]_0\(5),
      I4 => \O_ALU_reg[7]_i_5_n_0\,
      I5 => \O_ALU_reg[5]_i_2_n_0\,
      O => \O_S0[4]\(5)
    );
\O_ALU_reg[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0300800000008000"
    )
        port map (
      I0 => data2(5),
      I1 => \^q\(11),
      I2 => O_IR(13),
      I3 => O_t2,
      I4 => O_IR(14),
      I5 => \^q\(5),
      O => \O_ALU_reg[5]_i_2_n_0\
    );
\O_ALU_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55FF55FF40EA40"
    )
        port map (
      I0 => O_IR(15),
      I1 => data1(6),
      I2 => \O_ALU_reg[7]_i_3_n_0\,
      I3 => \R[0]_0\(6),
      I4 => \O_ALU_reg[7]_i_5_n_0\,
      I5 => \O_ALU_reg[6]_i_2_n_0\,
      O => \O_S0[4]\(6)
    );
\O_ALU_reg[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0300800000008000"
    )
        port map (
      I0 => data2(6),
      I1 => \^q\(11),
      I2 => O_IR(13),
      I3 => O_t2,
      I4 => O_IR(14),
      I5 => \^q\(6),
      O => \O_ALU_reg[6]_i_2_n_0\
    );
\O_ALU_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55FF55FF40EA40"
    )
        port map (
      I0 => O_IR(15),
      I1 => data1(7),
      I2 => \O_ALU_reg[7]_i_3_n_0\,
      I3 => \R[0]__55\(0),
      I4 => \O_ALU_reg[7]_i_5_n_0\,
      I5 => \O_ALU_reg[7]_i_6_n_0\,
      O => \O_S0[4]\(7)
    );
\O_ALU_reg[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15160000"
    )
        port map (
      I0 => O_IR(15),
      I1 => \^q\(11),
      I2 => O_IR(14),
      I3 => O_IR(13),
      I4 => O_t2,
      O => \O_ram_ADDR[0]_3\(0)
    );
\O_ALU_reg[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => O_IR(14),
      I1 => O_IR(13),
      I2 => \^q\(11),
      I3 => O_t2,
      O => \O_ALU_reg[7]_i_3_n_0\
    );
\O_ALU_reg[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF3F"
    )
        port map (
      I0 => \^q\(11),
      I1 => O_IR(13),
      I2 => O_t2,
      I3 => O_IR(14),
      O => \O_ALU_reg[7]_i_5_n_0\
    );
\O_ALU_reg[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0300800000008000"
    )
        port map (
      I0 => data2(7),
      I1 => \^q\(11),
      I2 => O_IR(13),
      I3 => O_t2,
      I4 => O_IR(14),
      I5 => \^q\(7),
      O => \O_ALU_reg[7]_i_6_n_0\
    );
\O_REG_new_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCCAAC"
    )
        port map (
      I0 => tt2_reg(0),
      I1 => tt3_reg_0(0),
      I2 => O_IR(14),
      I3 => O_IR(13),
      I4 => O_IR(15),
      O => \O_ram_ADDR[0]_1\(0)
    );
\O_REG_new_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCCAAC"
    )
        port map (
      I0 => tt2_reg(1),
      I1 => tt3_reg_0(1),
      I2 => O_IR(14),
      I3 => O_IR(13),
      I4 => O_IR(15),
      O => \O_ram_ADDR[0]_1\(1)
    );
\O_REG_new_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCCAAC"
    )
        port map (
      I0 => tt2_reg(2),
      I1 => tt3_reg_0(2),
      I2 => O_IR(14),
      I3 => O_IR(13),
      I4 => O_IR(15),
      O => \O_ram_ADDR[0]_1\(2)
    );
\O_REG_new_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCCAAC"
    )
        port map (
      I0 => tt2_reg(3),
      I1 => tt3_reg_0(3),
      I2 => O_IR(14),
      I3 => O_IR(13),
      I4 => O_IR(15),
      O => \O_ram_ADDR[0]_1\(3)
    );
\O_REG_new_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCCAAC"
    )
        port map (
      I0 => tt2_reg(4),
      I1 => tt3_reg_0(4),
      I2 => O_IR(14),
      I3 => O_IR(13),
      I4 => O_IR(15),
      O => \O_ram_ADDR[0]_1\(4)
    );
\O_REG_new_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCCAAC"
    )
        port map (
      I0 => tt2_reg(5),
      I1 => tt3_reg_0(5),
      I2 => O_IR(14),
      I3 => O_IR(13),
      I4 => O_IR(15),
      O => \O_ram_ADDR[0]_1\(5)
    );
\O_REG_new_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCCAAC"
    )
        port map (
      I0 => tt2_reg(6),
      I1 => tt3_reg_0(6),
      I2 => O_IR(14),
      I3 => O_IR(13),
      I4 => O_IR(15),
      O => \O_ram_ADDR[0]_1\(6)
    );
\O_REG_new_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCCAAC"
    )
        port map (
      I0 => tt2_reg(7),
      I1 => tt3_reg_0(7),
      I2 => O_IR(14),
      I3 => O_IR(13),
      I4 => O_IR(15),
      O => \O_ram_ADDR[0]_1\(7)
    );
\O_REG_new_reg[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5614"
    )
        port map (
      I0 => O_IR(15),
      I1 => O_IR(14),
      I2 => O_IR(13),
      I3 => \^q\(11),
      O => \O_ram_ADDR[0]_2\(0)
    );
\O_RTEMP_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => tt3_reg(0),
      I1 => io_RTEMP(0),
      I2 => O_RD_ram,
      O => D(0)
    );
\O_RTEMP_reg[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \O_RTEMP_reg[0]_i_3_n_0\,
      I1 => \O_RTEMP_reg[7]_i_6_n_0\,
      O => io_RTEMP(0)
    );
\O_RTEMP_reg[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I_K1_IBUF(0),
      I1 => I_K0_IBUF(0),
      I2 => I_K3_IBUF(0),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => I_K2_IBUF(0),
      O => \O_RTEMP_reg[0]_i_3_n_0\
    );
\O_RTEMP_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => tt3_reg(1),
      I1 => io_RTEMP(1),
      I2 => O_RD_ram,
      O => D(1)
    );
\O_RTEMP_reg[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \O_RTEMP_reg[1]_i_3_n_0\,
      I1 => \O_RTEMP_reg[7]_i_6_n_0\,
      O => io_RTEMP(1)
    );
\O_RTEMP_reg[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I_K1_IBUF(1),
      I1 => I_K0_IBUF(1),
      I2 => I_K3_IBUF(1),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => I_K2_IBUF(1),
      O => \O_RTEMP_reg[1]_i_3_n_0\
    );
\O_RTEMP_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => tt3_reg(2),
      I1 => io_RTEMP(2),
      I2 => O_RD_ram,
      O => D(2)
    );
\O_RTEMP_reg[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \O_RTEMP_reg[2]_i_3_n_0\,
      I1 => \O_RTEMP_reg[7]_i_6_n_0\,
      O => io_RTEMP(2)
    );
\O_RTEMP_reg[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I_K1_IBUF(2),
      I1 => I_K0_IBUF(2),
      I2 => I_K3_IBUF(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => I_K2_IBUF(2),
      O => \O_RTEMP_reg[2]_i_3_n_0\
    );
\O_RTEMP_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => tt3_reg(3),
      I1 => io_RTEMP(3),
      I2 => O_RD_ram,
      O => D(3)
    );
\O_RTEMP_reg[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \O_RTEMP_reg[3]_i_3_n_0\,
      I1 => \O_RTEMP_reg[7]_i_6_n_0\,
      O => io_RTEMP(3)
    );
\O_RTEMP_reg[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I_K1_IBUF(3),
      I1 => I_K0_IBUF(3),
      I2 => I_K3_IBUF(3),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => I_K2_IBUF(3),
      O => \O_RTEMP_reg[3]_i_3_n_0\
    );
\O_RTEMP_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => tt3_reg(4),
      I1 => io_RTEMP(4),
      I2 => O_RD_ram,
      O => D(4)
    );
\O_RTEMP_reg[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \O_RTEMP_reg[4]_i_3_n_0\,
      I1 => \O_RTEMP_reg[7]_i_6_n_0\,
      O => io_RTEMP(4)
    );
\O_RTEMP_reg[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I_K1_IBUF(4),
      I1 => I_K0_IBUF(4),
      I2 => I_K3_IBUF(4),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => I_K2_IBUF(4),
      O => \O_RTEMP_reg[4]_i_3_n_0\
    );
\O_RTEMP_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => tt3_reg(5),
      I1 => io_RTEMP(5),
      I2 => O_RD_ram,
      O => D(5)
    );
\O_RTEMP_reg[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \O_RTEMP_reg[5]_i_3_n_0\,
      I1 => \O_RTEMP_reg[7]_i_6_n_0\,
      O => io_RTEMP(5)
    );
\O_RTEMP_reg[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I_K1_IBUF(5),
      I1 => I_K0_IBUF(5),
      I2 => I_K3_IBUF(5),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => I_K2_IBUF(5),
      O => \O_RTEMP_reg[5]_i_3_n_0\
    );
\O_RTEMP_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => tt3_reg(6),
      I1 => io_RTEMP(6),
      I2 => O_RD_ram,
      O => D(6)
    );
\O_RTEMP_reg[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \O_RTEMP_reg[6]_i_3_n_0\,
      I1 => \O_RTEMP_reg[7]_i_6_n_0\,
      O => io_RTEMP(6)
    );
\O_RTEMP_reg[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I_K1_IBUF(6),
      I1 => I_K0_IBUF(6),
      I2 => I_K3_IBUF(6),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => I_K2_IBUF(6),
      O => \O_RTEMP_reg[6]_i_3_n_0\
    );
\O_RTEMP_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => O_t3,
      I1 => O_IR(15),
      I2 => O_IR(14),
      I3 => O_IR(13),
      I4 => \^q\(11),
      O => E(0)
    );
\O_RTEMP_reg[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => tt3_reg(7),
      I1 => io_RTEMP(7),
      I2 => O_RD_ram,
      O => D(7)
    );
\O_RTEMP_reg[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"18000000"
    )
        port map (
      I0 => O_IR(14),
      I1 => O_IR(13),
      I2 => O_IR(15),
      I3 => \^q\(11),
      I4 => O_t3,
      O => \O_ram_ADDR[0]_0\(0)
    );
\O_RTEMP_reg[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \O_RTEMP_reg[7]_i_5_n_0\,
      I1 => \O_RTEMP_reg[7]_i_6_n_0\,
      O => io_RTEMP(7)
    );
\O_RTEMP_reg[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => O_t3,
      I1 => \^q\(11),
      I2 => O_IR(13),
      I3 => O_IR(14),
      I4 => O_IR(15),
      O => O_RD_ram
    );
\O_RTEMP_reg[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => I_K1_IBUF(7),
      I1 => I_K0_IBUF(7),
      I2 => I_K3_IBUF(7),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => I_K2_IBUF(7),
      O => \O_RTEMP_reg[7]_i_5_n_0\
    );
\O_RTEMP_reg[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => O_IR(14),
      I1 => O_IR(13),
      I2 => O_IR(15),
      I3 => \^q\(11),
      I4 => O_t3,
      O => \O_RTEMP_reg[7]_i_6_n_0\
    );
\O_S0_OBUFT[7]_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \O_S0_OBUFT[7]_inst_i_2_n_0\,
      O => \O_S0_TRI[0]\
    );
\O_S0_OBUFT[7]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => \O_S0_OBUFT[7]_inst_i_3_n_0\,
      I1 => O_IR(14),
      I2 => O_IR(13),
      I3 => O_IR(15),
      I4 => \^q\(11),
      I5 => O_t3,
      O => \O_S0_OBUFT[7]_inst_i_2_n_0\
    );
\O_S0_OBUFT[7]_inst_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \O_S0_OBUFT[7]_inst_i_3_n_0\
    );
\O_S1_OBUFT[7]_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \O_S1_OBUFT[7]_inst_i_2_n_0\,
      O => \O_S1_TRI[0]\
    );
\O_S1_OBUFT[7]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => O_t3,
      I2 => \O_S1_OBUFT[7]_inst_i_3_n_0\,
      I3 => O_IR(15),
      I4 => \^q\(11),
      I5 => \^q\(0),
      O => \O_S1_OBUFT[7]_inst_i_2_n_0\
    );
\O_S1_OBUFT[7]_inst_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => O_IR(13),
      I1 => O_IR(14),
      O => \O_S1_OBUFT[7]_inst_i_3_n_0\
    );
\O_S2_OBUFT[7]_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \O_S2_OBUFT[7]_inst_i_2_n_0\,
      O => \O_S2_TRI[0]\
    );
\O_S2_OBUFT[7]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => O_t3,
      I2 => \O_S1_OBUFT[7]_inst_i_3_n_0\,
      I3 => O_IR(15),
      I4 => \^q\(11),
      I5 => \^q\(1),
      O => \O_S2_OBUFT[7]_inst_i_2_n_0\
    );
\O_S3_OBUFT[7]_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \O_S3_OBUFT[7]_inst_i_2_n_0\,
      O => \O_S3_TRI[0]\
    );
\O_S3_OBUFT[7]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \O_S3_OBUFT[7]_inst_i_3_n_0\,
      I1 => O_IR(14),
      I2 => O_IR(13),
      I3 => O_IR(15),
      I4 => \^q\(11),
      I5 => O_t3,
      O => \O_S3_OBUFT[7]_inst_i_2_n_0\
    );
\O_S3_OBUFT[7]_inst_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \O_S3_OBUFT[7]_inst_i_3_n_0\
    );
O_ram_NCS_OBUF_inst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55155555"
    )
        port map (
      I0 => O_t1,
      I1 => O_IR(13),
      I2 => O_IR(14),
      I3 => O_IR(15),
      I4 => O_t3,
      O => O_ram_NCS_OBUF
    );
O_ram_NRD_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555155555555555"
    )
        port map (
      I0 => O_t1,
      I1 => \^q\(11),
      I2 => O_IR(13),
      I3 => O_IR(14),
      I4 => O_IR(15),
      I5 => O_t3,
      O => O_ram_NRD_OBUF
    );
O_ram_NWR_OBUF_inst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFFFFF"
    )
        port map (
      I0 => \^q\(11),
      I1 => O_IR(13),
      I2 => O_IR(14),
      I3 => O_IR(15),
      I4 => O_t3,
      O => O_ram_NWR_OBUF
    );
\PC_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => \PC_reg[0]_i_1_n_0\,
      G => \PC_reg[15]_i_2_n_0\,
      GE => '1',
      Q => O_PC(0)
    );
\PC_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => tt2_reg_0(0),
      I1 => PC_t(0),
      I2 => O_PC_update,
      O => \PC_reg[0]_i_1_n_0\
    );
\PC_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => \PC_reg[10]_i_1_n_0\,
      G => \PC_reg[15]_i_2_n_0\,
      GE => '1',
      Q => O_PC(10)
    );
\PC_reg[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => tt2_reg_0(10),
      I1 => PC_t(10),
      I2 => O_PC_update,
      O => \PC_reg[10]_i_1_n_0\
    );
\PC_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => \PC_reg[11]_i_1_n_0\,
      G => \PC_reg[15]_i_2_n_0\,
      GE => '1',
      Q => O_PC(11)
    );
\PC_reg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => tt2_reg_0(11),
      I1 => PC_t(11),
      I2 => O_PC_update,
      O => \PC_reg[11]_i_1_n_0\
    );
\PC_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => \PC_reg[12]_i_1_n_0\,
      G => \PC_reg[15]_i_2_n_0\,
      GE => '1',
      Q => O_PC(12)
    );
\PC_reg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => tt2_reg_0(12),
      I1 => PC_t(12),
      I2 => O_PC_update,
      O => \PC_reg[12]_i_1_n_0\
    );
\PC_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => \PC_reg[13]_i_1_n_0\,
      G => \PC_reg[15]_i_2_n_0\,
      GE => '1',
      Q => O_PC(13)
    );
\PC_reg[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => tt2_reg_0(13),
      I1 => PC_t(13),
      I2 => O_PC_update,
      O => \PC_reg[13]_i_1_n_0\
    );
\PC_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => \PC_reg[14]_i_1_n_0\,
      G => \PC_reg[15]_i_2_n_0\,
      GE => '1',
      Q => O_PC(14)
    );
\PC_reg[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => tt2_reg_0(14),
      I1 => PC_t(14),
      I2 => O_PC_update,
      O => \PC_reg[14]_i_1_n_0\
    );
\PC_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => \PC_reg[15]_i_1_n_0\,
      G => \PC_reg[15]_i_2_n_0\,
      GE => '1',
      Q => O_PC(15)
    );
\PC_reg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => tt2_reg_0(15),
      I1 => PC_t(15),
      I2 => O_PC_update,
      O => \PC_reg[15]_i_1_n_0\
    );
\PC_reg[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => O_PC_update,
      I1 => O_t3,
      O => \PC_reg[15]_i_2_n_0\
    );
\PC_reg[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => O_IR(13),
      I1 => O_t4,
      I2 => O_IR(14),
      I3 => O_IR(15),
      I4 => tt1_reg,
      O => O_PC_update
    );
\PC_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => \PC_reg[1]_i_1_n_0\,
      G => \PC_reg[15]_i_2_n_0\,
      GE => '1',
      Q => O_PC(1)
    );
\PC_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => tt2_reg_0(1),
      I1 => PC_t(1),
      I2 => O_PC_update,
      O => \PC_reg[1]_i_1_n_0\
    );
\PC_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => \PC_reg[2]_i_1_n_0\,
      G => \PC_reg[15]_i_2_n_0\,
      GE => '1',
      Q => O_PC(2)
    );
\PC_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => tt2_reg_0(2),
      I1 => PC_t(2),
      I2 => O_PC_update,
      O => \PC_reg[2]_i_1_n_0\
    );
\PC_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => \PC_reg[3]_i_1_n_0\,
      G => \PC_reg[15]_i_2_n_0\,
      GE => '1',
      Q => O_PC(3)
    );
\PC_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => tt2_reg_0(3),
      I1 => PC_t(3),
      I2 => O_PC_update,
      O => \PC_reg[3]_i_1_n_0\
    );
\PC_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => \PC_reg[4]_i_1_n_0\,
      G => \PC_reg[15]_i_2_n_0\,
      GE => '1',
      Q => O_PC(4)
    );
\PC_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => tt2_reg_0(4),
      I1 => PC_t(4),
      I2 => O_PC_update,
      O => \PC_reg[4]_i_1_n_0\
    );
\PC_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => \PC_reg[5]_i_1_n_0\,
      G => \PC_reg[15]_i_2_n_0\,
      GE => '1',
      Q => O_PC(5)
    );
\PC_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => tt2_reg_0(5),
      I1 => PC_t(5),
      I2 => O_PC_update,
      O => \PC_reg[5]_i_1_n_0\
    );
\PC_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => \PC_reg[6]_i_1_n_0\,
      G => \PC_reg[15]_i_2_n_0\,
      GE => '1',
      Q => O_PC(6)
    );
\PC_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => tt2_reg_0(6),
      I1 => PC_t(6),
      I2 => O_PC_update,
      O => \PC_reg[6]_i_1_n_0\
    );
\PC_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => \PC_reg[7]_i_1_n_0\,
      G => \PC_reg[15]_i_2_n_0\,
      GE => '1',
      Q => O_PC(7)
    );
\PC_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => tt2_reg_0(7),
      I1 => PC_t(7),
      I2 => O_PC_update,
      O => \PC_reg[7]_i_1_n_0\
    );
\PC_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => \PC_reg[8]_i_1_n_0\,
      G => \PC_reg[15]_i_2_n_0\,
      GE => '1',
      Q => O_PC(8)
    );
\PC_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => tt2_reg_0(8),
      I1 => PC_t(8),
      I2 => O_PC_update,
      O => \PC_reg[8]_i_1_n_0\
    );
\PC_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => \PC_reg[9]_i_1_n_0\,
      G => \PC_reg[15]_i_2_n_0\,
      GE => '1',
      Q => O_PC(9)
    );
\PC_reg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => tt2_reg_0(9),
      I1 => PC_t(9),
      I2 => O_PC_update,
      O => \PC_reg[9]_i_1_n_0\
    );
\PC_t_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(0),
      G => tt1_reg_1(0),
      GE => '1',
      Q => PC_t(0)
    );
\PC_t_reg[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => O_PC(0),
      O => plusOp(0)
    );
\PC_t_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(10),
      G => tt1_reg_1(0),
      GE => '1',
      Q => PC_t(10)
    );
\PC_t_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(11),
      G => tt1_reg_1(0),
      GE => '1',
      Q => PC_t(11)
    );
\PC_t_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(12),
      G => tt1_reg_1(0),
      GE => '1',
      Q => PC_t(12)
    );
\PC_t_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(13),
      G => tt1_reg_1(0),
      GE => '1',
      Q => PC_t(13)
    );
\PC_t_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(14),
      G => tt1_reg_1(0),
      GE => '1',
      Q => PC_t(14)
    );
\PC_t_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(15),
      G => tt1_reg_1(0),
      GE => '1',
      Q => PC_t(15)
    );
\PC_t_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(1),
      G => tt1_reg_1(0),
      GE => '1',
      Q => PC_t(1)
    );
\PC_t_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(2),
      G => tt1_reg_1(0),
      GE => '1',
      Q => PC_t(2)
    );
\PC_t_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(3),
      G => tt1_reg_1(0),
      GE => '1',
      Q => PC_t(3)
    );
\PC_t_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(4),
      G => tt1_reg_1(0),
      GE => '1',
      Q => PC_t(4)
    );
\PC_t_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(5),
      G => tt1_reg_1(0),
      GE => '1',
      Q => PC_t(5)
    );
\PC_t_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(6),
      G => tt1_reg_1(0),
      GE => '1',
      Q => PC_t(6)
    );
\PC_t_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(7),
      G => tt1_reg_1(0),
      GE => '1',
      Q => PC_t(7)
    );
\PC_t_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(8),
      G => tt1_reg_1(0),
      GE => '1',
      Q => PC_t(8)
    );
\PC_t_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(9),
      G => tt1_reg_1(0),
      GE => '1',
      Q => PC_t(9)
    );
\R_reg[0][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(8),
      I2 => \uut_write_back/O_REG_addr1__2\,
      I3 => \^q\(9),
      O => \O_ram_ADDR[0]\(0)
    );
\R_reg[0][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22280220"
    )
        port map (
      I0 => O_t4,
      I1 => O_IR(15),
      I2 => O_IR(14),
      I3 => O_IR(13),
      I4 => \^q\(11),
      O => \uut_write_back/O_REG_addr1__2\
    );
\R_reg[1][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(10),
      I2 => \uut_write_back/O_REG_addr1__2\,
      I3 => \^q\(8),
      O => \O_ram_ADDR[4]\(0)
    );
\R_reg[2][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(8),
      I2 => \uut_write_back/O_REG_addr1__2\,
      I3 => \^q\(9),
      O => \O_ram_ADDR[4]_0\(0)
    );
\R_reg[3][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      I2 => \uut_write_back/O_REG_addr1__2\,
      I3 => \^q\(10),
      O => \O_ram_ADDR[4]_1\(0)
    );
\R_reg[4][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      I2 => \uut_write_back/O_REG_addr1__2\,
      I3 => \^q\(10),
      O => \O_ram_ADDR[4]_2\(0)
    );
\R_reg[5][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(8),
      I2 => \uut_write_back/O_REG_addr1__2\,
      I3 => \^q\(9),
      O => \O_ram_ADDR[4]_3\(0)
    );
\R_reg[6][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(10),
      I2 => \uut_write_back/O_REG_addr1__2\,
      I3 => \^q\(8),
      O => \O_ram_ADDR[4]_4\(0)
    );
\R_reg[7][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(8),
      I2 => \uut_write_back/O_REG_addr1__2\,
      I3 => \^q\(9),
      O => \O_ram_ADDR[4]_5\(0)
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => O_PC(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(4 downto 1),
      S(3) => \plusOp_carry_i_1__0_n_0\,
      S(2) => \plusOp_carry_i_2__0_n_0\,
      S(1) => \plusOp_carry_i_3__0_n_0\,
      S(0) => \plusOp_carry_i_4__0_n_0\
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(8 downto 5),
      S(3) => \plusOp_carry__0_i_1__0_n_0\,
      S(2) => \plusOp_carry__0_i_2__0_n_0\,
      S(1) => \plusOp_carry__0_i_3__0_n_0\,
      S(0) => \plusOp_carry__0_i_4_n_0\
    );
\plusOp_carry__0_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O_PC(8),
      O => \plusOp_carry__0_i_1__0_n_0\
    );
\plusOp_carry__0_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O_PC(7),
      O => \plusOp_carry__0_i_2__0_n_0\
    );
\plusOp_carry__0_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O_PC(6),
      O => \plusOp_carry__0_i_3__0_n_0\
    );
\plusOp_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O_PC(5),
      O => \plusOp_carry__0_i_4_n_0\
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2) => \plusOp_carry__1_n_1\,
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(12 downto 9),
      S(3) => \plusOp_carry__1_i_1_n_0\,
      S(2) => \plusOp_carry__1_i_2_n_0\,
      S(1) => \plusOp_carry__1_i_3_n_0\,
      S(0) => \plusOp_carry__1_i_4_n_0\
    );
\plusOp_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O_PC(12),
      O => \plusOp_carry__1_i_1_n_0\
    );
\plusOp_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O_PC(11),
      O => \plusOp_carry__1_i_2_n_0\
    );
\plusOp_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O_PC(10),
      O => \plusOp_carry__1_i_3_n_0\
    );
\plusOp_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O_PC(9),
      O => \plusOp_carry__1_i_4_n_0\
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3 downto 2) => \NLW_plusOp_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp_carry__2_n_2\,
      CO(0) => \plusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_plusOp_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => plusOp(15 downto 13),
      S(3) => '0',
      S(2) => \plusOp_carry__2_i_1_n_0\,
      S(1) => \plusOp_carry__2_i_2_n_0\,
      S(0) => \plusOp_carry__2_i_3_n_0\
    );
\plusOp_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O_PC(15),
      O => \plusOp_carry__2_i_1_n_0\
    );
\plusOp_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O_PC(14),
      O => \plusOp_carry__2_i_2_n_0\
    );
\plusOp_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O_PC(13),
      O => \plusOp_carry__2_i_3_n_0\
    );
\plusOp_carry_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O_PC(4),
      O => \plusOp_carry_i_1__0_n_0\
    );
\plusOp_carry_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O_PC(3),
      O => \plusOp_carry_i_2__0_n_0\
    );
\plusOp_carry_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O_PC(2),
      O => \plusOp_carry_i_3__0_n_0\
    );
\plusOp_carry_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => O_PC(1),
      O => \plusOp_carry_i_4__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mod4 is
  port (
    O_t2 : out STD_LOGIC;
    O_t3 : out STD_LOGIC;
    O_t4 : out STD_LOGIC;
    O_t1 : out STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    I_CLK_IBUF_BUFG : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end mod4;

architecture STRUCTURE of mod4 is
  signal \^o_t1\ : STD_LOGIC;
  signal \^o_t2\ : STD_LOGIC;
  signal \^o_t3\ : STD_LOGIC;
  signal \^o_t4\ : STD_LOGIC;
  signal tt1_i_1_n_0 : STD_LOGIC;
begin
  O_t1 <= \^o_t1\;
  O_t2 <= \^o_t2\;
  O_t3 <= \^o_t3\;
  O_t4 <= \^o_t4\;
tt1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF01"
    )
        port map (
      I0 => \^o_t1\,
      I1 => \^o_t3\,
      I2 => \^o_t2\,
      I3 => \^o_t4\,
      O => tt1_i_1_n_0
    );
tt1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => I_CLK_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => tt1_i_1_n_0,
      Q => \^o_t1\
    );
tt2_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => E(0),
      Q => \^o_t2\
    );
tt3_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \^o_t2\,
      Q => \^o_t3\
    );
tt4_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \^o_t3\,
      Q => \^o_t4\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ram_ctrl is
  port (
    Q : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \O_ram_ADDR[0]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \O_ram_ADDR[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    D : in STD_LOGIC_VECTOR ( 14 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    tt3_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    tt1_reg : in STD_LOGIC_VECTOR ( 15 downto 0 );
    tt3_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end ram_ctrl;

architecture STRUCTURE of ram_ctrl is
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \O_ADDR_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ADDR_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ADDR_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ADDR_reg[12]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ADDR_reg[13]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ADDR_reg[14]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ADDR_reg[15]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ADDR_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ADDR_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ADDR_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ADDR_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ADDR_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ADDR_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ADDR_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ADDR_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_ADDR_reg[9]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_IR_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_IR_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_IR_reg[12]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_IR_reg[13]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_IR_reg[14]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_IR_reg[15]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_IR_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_IR_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_IR_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_IR_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_IR_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_IR_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_IR_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_IR_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_IR_reg[9]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_RTEMP_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_RTEMP_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_RTEMP_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_RTEMP_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_RTEMP_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_RTEMP_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_RTEMP_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_RTEMP_reg[7]\ : label is "LD";
begin
\O_ADDR_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt1_reg(0),
      G => tt3_reg_0(0),
      GE => '1',
      Q => \O_ram_ADDR[15]\(0)
    );
\O_ADDR_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt1_reg(10),
      G => tt3_reg_0(0),
      GE => '1',
      Q => \O_ram_ADDR[15]\(10)
    );
\O_ADDR_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt1_reg(11),
      G => tt3_reg_0(0),
      GE => '1',
      Q => \O_ram_ADDR[15]\(11)
    );
\O_ADDR_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt1_reg(12),
      G => tt3_reg_0(0),
      GE => '1',
      Q => \O_ram_ADDR[15]\(12)
    );
\O_ADDR_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt1_reg(13),
      G => tt3_reg_0(0),
      GE => '1',
      Q => \O_ram_ADDR[15]\(13)
    );
\O_ADDR_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt1_reg(14),
      G => tt3_reg_0(0),
      GE => '1',
      Q => \O_ram_ADDR[15]\(14)
    );
\O_ADDR_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt1_reg(15),
      G => tt3_reg_0(0),
      GE => '1',
      Q => \O_ram_ADDR[15]\(15)
    );
\O_ADDR_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt1_reg(1),
      G => tt3_reg_0(0),
      GE => '1',
      Q => \O_ram_ADDR[15]\(1)
    );
\O_ADDR_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt1_reg(2),
      G => tt3_reg_0(0),
      GE => '1',
      Q => \O_ram_ADDR[15]\(2)
    );
\O_ADDR_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt1_reg(3),
      G => tt3_reg_0(0),
      GE => '1',
      Q => \O_ram_ADDR[15]\(3)
    );
\O_ADDR_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt1_reg(4),
      G => tt3_reg_0(0),
      GE => '1',
      Q => \O_ram_ADDR[15]\(4)
    );
\O_ADDR_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt1_reg(5),
      G => tt3_reg_0(0),
      GE => '1',
      Q => \O_ram_ADDR[15]\(5)
    );
\O_ADDR_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt1_reg(6),
      G => tt3_reg_0(0),
      GE => '1',
      Q => \O_ram_ADDR[15]\(6)
    );
\O_ADDR_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt1_reg(7),
      G => tt3_reg_0(0),
      GE => '1',
      Q => \O_ram_ADDR[15]\(7)
    );
\O_ADDR_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt1_reg(8),
      G => tt3_reg_0(0),
      GE => '1',
      Q => \O_ram_ADDR[15]\(8)
    );
\O_ADDR_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tt1_reg(9),
      G => tt3_reg_0(0),
      GE => '1',
      Q => \O_ram_ADDR[15]\(9)
    );
\O_IR_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(0),
      GE => '1',
      Q => Q(0)
    );
\O_IR_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(10),
      G => E(0),
      GE => '1',
      Q => Q(10)
    );
\O_IR_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(11),
      G => E(0),
      GE => '1',
      Q => Q(11)
    );
\O_IR_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(12),
      G => E(0),
      GE => '1',
      Q => Q(12)
    );
\O_IR_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(13),
      G => E(0),
      GE => '1',
      Q => Q(13)
    );
\O_IR_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(14),
      G => E(0),
      GE => '1',
      Q => Q(14)
    );
\O_IR_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(1),
      G => E(0),
      GE => '1',
      Q => Q(1)
    );
\O_IR_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(2),
      G => E(0),
      GE => '1',
      Q => Q(2)
    );
\O_IR_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(3),
      G => E(0),
      GE => '1',
      Q => Q(3)
    );
\O_IR_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(4),
      G => E(0),
      GE => '1',
      Q => Q(4)
    );
\O_IR_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(5),
      G => E(0),
      GE => '1',
      Q => Q(5)
    );
\O_IR_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(6),
      G => E(0),
      GE => '1',
      Q => Q(6)
    );
\O_IR_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(7),
      G => E(0),
      GE => '1',
      Q => Q(7)
    );
\O_IR_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(8),
      G => E(0),
      GE => '1',
      Q => Q(8)
    );
\O_IR_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(9),
      G => E(0),
      GE => '1',
      Q => Q(9)
    );
\O_RTEMP_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => tt3_reg(0),
      GE => '1',
      Q => \O_ram_ADDR[0]\(0)
    );
\O_RTEMP_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(1),
      G => tt3_reg(0),
      GE => '1',
      Q => \O_ram_ADDR[0]\(1)
    );
\O_RTEMP_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(2),
      G => tt3_reg(0),
      GE => '1',
      Q => \O_ram_ADDR[0]\(2)
    );
\O_RTEMP_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(3),
      G => tt3_reg(0),
      GE => '1',
      Q => \O_ram_ADDR[0]\(3)
    );
\O_RTEMP_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(4),
      G => tt3_reg(0),
      GE => '1',
      Q => \O_ram_ADDR[0]\(4)
    );
\O_RTEMP_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(5),
      G => tt3_reg(0),
      GE => '1',
      Q => \O_ram_ADDR[0]\(5)
    );
\O_RTEMP_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(6),
      G => tt3_reg(0),
      GE => '1',
      Q => \O_ram_ADDR[0]\(6)
    );
\O_RTEMP_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(7),
      G => tt3_reg(0),
      GE => '1',
      Q => \O_ram_ADDR[0]\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity refer is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end refer;

architecture STRUCTURE of refer is
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \O_RTEMP_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_RTEMP_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_RTEMP_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_RTEMP_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_RTEMP_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_RTEMP_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_RTEMP_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_RTEMP_reg[7]\ : label is "LD";
begin
\O_RTEMP_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(0),
      GE => '1',
      Q => Q(0)
    );
\O_RTEMP_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(1),
      G => E(0),
      GE => '1',
      Q => Q(1)
    );
\O_RTEMP_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(2),
      G => E(0),
      GE => '1',
      Q => Q(2)
    );
\O_RTEMP_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(3),
      G => E(0),
      GE => '1',
      Q => Q(3)
    );
\O_RTEMP_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(4),
      G => E(0),
      GE => '1',
      Q => Q(4)
    );
\O_RTEMP_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(5),
      G => E(0),
      GE => '1',
      Q => Q(5)
    );
\O_RTEMP_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(6),
      G => E(0),
      GE => '1',
      Q => Q(6)
    );
\O_RTEMP_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(7),
      G => E(0),
      GE => '1',
      Q => Q(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity write_back is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end write_back;

architecture STRUCTURE of write_back is
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \O_REG_new_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_REG_new_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_REG_new_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_REG_new_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_REG_new_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_REG_new_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_REG_new_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \O_REG_new_reg[7]\ : label is "LD";
begin
\O_REG_new_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(0),
      GE => '1',
      Q => Q(0)
    );
\O_REG_new_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(1),
      G => E(0),
      GE => '1',
      Q => Q(1)
    );
\O_REG_new_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(2),
      G => E(0),
      GE => '1',
      Q => Q(2)
    );
\O_REG_new_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(3),
      G => E(0),
      GE => '1',
      Q => Q(3)
    );
\O_REG_new_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(4),
      G => E(0),
      GE => '1',
      Q => Q(4)
    );
\O_REG_new_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(5),
      G => E(0),
      GE => '1',
      Q => Q(5)
    );
\O_REG_new_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(6),
      G => E(0),
      GE => '1',
      Q => Q(6)
    );
\O_REG_new_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(7),
      G => E(0),
      GE => '1',
      Q => Q(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cpu is
  port (
    I_CLK : in STD_LOGIC;
    I_RST : in STD_LOGIC;
    I_K0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I_K1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I_K2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I_K3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    O_S0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O_S1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O_S2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O_S3 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O_ram_ADDR : out STD_LOGIC_VECTOR ( 15 downto 0 );
    IO_ram_DATA : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    O_ram_NCS : out STD_LOGIC;
    O_ram_NRD : out STD_LOGIC;
    O_ram_NWR : out STD_LOGIC;
    O_ram_NBH : out STD_LOGIC;
    O_ram_NBL : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of cpu : entity is true;
end cpu;

architecture STRUCTURE of cpu is
  signal IO_ram_DATA_IBUF : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \IO_ram_DATA_IBUF__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IO_ram_DATA_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \IO_ram_DATA_TRI[0]\ : STD_LOGIC;
  signal I_CLK_IBUF : STD_LOGIC;
  signal I_CLK_IBUF_BUFG : STD_LOGIC;
  signal I_K0_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal I_K1_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal I_K2_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal I_K3_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal I_RST_IBUF : STD_LOGIC;
  signal O_ADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal O_IR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal O_REG_new : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal O_RTEMP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal O_RTEMP0 : STD_LOGIC;
  signal \O_S0_TRI[0]\ : STD_LOGIC;
  signal \O_S1_TRI[0]\ : STD_LOGIC;
  signal \O_S2_TRI[0]\ : STD_LOGIC;
  signal \O_S3_TRI[0]\ : STD_LOGIC;
  signal O_ram_ADDR_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal O_ram_NCS_OBUF : STD_LOGIC;
  signal O_ram_NRD_OBUF : STD_LOGIC;
  signal O_ram_NWR_OBUF : STD_LOGIC;
  signal O_t1 : STD_LOGIC;
  signal O_t1_BUFG : STD_LOGIC;
  signal O_t2 : STD_LOGIC;
  signal O_t3 : STD_LOGIC;
  signal O_t4 : STD_LOGIC;
  signal \R[0]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \R[0]__55\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \R[1]_7\ : STD_LOGIC;
  signal \R[2]_6\ : STD_LOGIC;
  signal \R[3]_5\ : STD_LOGIC;
  signal \R[4]_4\ : STD_LOGIC;
  signal \R[5]_3\ : STD_LOGIC;
  signal \R[6]_2\ : STD_LOGIC;
  signal \R[7]_1\ : STD_LOGIC;
  signal data1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ram_IR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal refer_RTEMP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal uut_alu_n_23 : STD_LOGIC;
  signal uut_fetch_n_13 : STD_LOGIC;
  signal uut_fetch_n_23 : STD_LOGIC;
  signal uut_fetch_n_24 : STD_LOGIC;
  signal uut_fetch_n_25 : STD_LOGIC;
  signal uut_fetch_n_26 : STD_LOGIC;
  signal uut_fetch_n_27 : STD_LOGIC;
  signal uut_fetch_n_28 : STD_LOGIC;
  signal uut_fetch_n_29 : STD_LOGIC;
  signal uut_fetch_n_30 : STD_LOGIC;
  signal uut_fetch_n_31 : STD_LOGIC;
  signal uut_fetch_n_32 : STD_LOGIC;
  signal uut_fetch_n_33 : STD_LOGIC;
  signal uut_fetch_n_34 : STD_LOGIC;
  signal uut_fetch_n_35 : STD_LOGIC;
  signal uut_fetch_n_36 : STD_LOGIC;
  signal uut_fetch_n_37 : STD_LOGIC;
  signal uut_fetch_n_38 : STD_LOGIC;
  signal uut_fetch_n_39 : STD_LOGIC;
  signal uut_fetch_n_40 : STD_LOGIC;
  signal uut_fetch_n_41 : STD_LOGIC;
  signal uut_fetch_n_42 : STD_LOGIC;
  signal uut_fetch_n_43 : STD_LOGIC;
  signal uut_fetch_n_44 : STD_LOGIC;
  signal uut_fetch_n_45 : STD_LOGIC;
  signal uut_fetch_n_46 : STD_LOGIC;
  signal uut_fetch_n_47 : STD_LOGIC;
  signal uut_fetch_n_48 : STD_LOGIC;
  signal uut_fetch_n_49 : STD_LOGIC;
  signal uut_fetch_n_50 : STD_LOGIC;
  signal uut_fetch_n_51 : STD_LOGIC;
  signal uut_fetch_n_52 : STD_LOGIC;
  signal uut_fetch_n_53 : STD_LOGIC;
  signal uut_fetch_n_54 : STD_LOGIC;
  signal uut_fetch_n_55 : STD_LOGIC;
  signal uut_fetch_n_56 : STD_LOGIC;
  signal uut_fetch_n_57 : STD_LOGIC;
  signal uut_fetch_n_58 : STD_LOGIC;
  signal uut_fetch_n_59 : STD_LOGIC;
  signal uut_fetch_n_60 : STD_LOGIC;
  signal uut_fetch_n_61 : STD_LOGIC;
  signal uut_fetch_n_62 : STD_LOGIC;
  signal uut_fetch_n_63 : STD_LOGIC;
  signal uut_fetch_n_64 : STD_LOGIC;
  signal uut_fetch_n_65 : STD_LOGIC;
  signal uut_fetch_n_66 : STD_LOGIC;
  signal uut_fetch_n_67 : STD_LOGIC;
begin
\IO_ram_DATA_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => IO_ram_DATA(10),
      O => IO_ram_DATA_IBUF(10)
    );
\IO_ram_DATA_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => IO_ram_DATA(12),
      O => IO_ram_DATA_IBUF(12)
    );
\IO_ram_DATA_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => IO_ram_DATA(13),
      O => IO_ram_DATA_IBUF(13)
    );
\IO_ram_DATA_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => IO_ram_DATA(14),
      O => IO_ram_DATA_IBUF(14)
    );
\IO_ram_DATA_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => IO_ram_DATA(15),
      O => IO_ram_DATA_IBUF(15)
    );
\IO_ram_DATA_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => IO_ram_DATA(8),
      O => IO_ram_DATA_IBUF(8)
    );
\IO_ram_DATA_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => IO_ram_DATA(9),
      O => IO_ram_DATA_IBUF(9)
    );
\IO_ram_DATA_IOBUF[0]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => IO_ram_DATA_OBUF(0),
      IO => IO_ram_DATA(0),
      O => \IO_ram_DATA_IBUF__0\(0),
      T => \IO_ram_DATA_TRI[0]\
    );
\IO_ram_DATA_IOBUF[1]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => IO_ram_DATA_OBUF(1),
      IO => IO_ram_DATA(1),
      O => \IO_ram_DATA_IBUF__0\(1),
      T => \IO_ram_DATA_TRI[0]\
    );
\IO_ram_DATA_IOBUF[2]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => IO_ram_DATA_OBUF(2),
      IO => IO_ram_DATA(2),
      O => \IO_ram_DATA_IBUF__0\(2),
      T => \IO_ram_DATA_TRI[0]\
    );
\IO_ram_DATA_IOBUF[3]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => IO_ram_DATA_OBUF(3),
      IO => IO_ram_DATA(3),
      O => \IO_ram_DATA_IBUF__0\(3),
      T => \IO_ram_DATA_TRI[0]\
    );
\IO_ram_DATA_IOBUF[4]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => IO_ram_DATA_OBUF(4),
      IO => IO_ram_DATA(4),
      O => \IO_ram_DATA_IBUF__0\(4),
      T => \IO_ram_DATA_TRI[0]\
    );
\IO_ram_DATA_IOBUF[5]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => IO_ram_DATA_OBUF(5),
      IO => IO_ram_DATA(5),
      O => \IO_ram_DATA_IBUF__0\(5),
      T => \IO_ram_DATA_TRI[0]\
    );
\IO_ram_DATA_IOBUF[6]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => IO_ram_DATA_OBUF(6),
      IO => IO_ram_DATA(6),
      O => \IO_ram_DATA_IBUF__0\(6),
      T => \IO_ram_DATA_TRI[0]\
    );
\IO_ram_DATA_IOBUF[7]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => IO_ram_DATA_OBUF(7),
      IO => IO_ram_DATA(7),
      O => \IO_ram_DATA_IBUF__0\(7),
      T => \IO_ram_DATA_TRI[0]\
    );
I_CLK_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => I_CLK_IBUF,
      O => I_CLK_IBUF_BUFG
    );
I_CLK_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => I_CLK,
      O => I_CLK_IBUF
    );
\I_K0_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_K0(0),
      O => I_K0_IBUF(0)
    );
\I_K0_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_K0(1),
      O => I_K0_IBUF(1)
    );
\I_K0_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_K0(2),
      O => I_K0_IBUF(2)
    );
\I_K0_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_K0(3),
      O => I_K0_IBUF(3)
    );
\I_K0_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_K0(4),
      O => I_K0_IBUF(4)
    );
\I_K0_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_K0(5),
      O => I_K0_IBUF(5)
    );
\I_K0_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_K0(6),
      O => I_K0_IBUF(6)
    );
\I_K0_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_K0(7),
      O => I_K0_IBUF(7)
    );
\I_K1_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_K1(0),
      O => I_K1_IBUF(0)
    );
\I_K1_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_K1(1),
      O => I_K1_IBUF(1)
    );
\I_K1_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_K1(2),
      O => I_K1_IBUF(2)
    );
\I_K1_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_K1(3),
      O => I_K1_IBUF(3)
    );
\I_K1_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_K1(4),
      O => I_K1_IBUF(4)
    );
\I_K1_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_K1(5),
      O => I_K1_IBUF(5)
    );
\I_K1_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_K1(6),
      O => I_K1_IBUF(6)
    );
\I_K1_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_K1(7),
      O => I_K1_IBUF(7)
    );
\I_K2_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_K2(0),
      O => I_K2_IBUF(0)
    );
\I_K2_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_K2(1),
      O => I_K2_IBUF(1)
    );
\I_K2_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_K2(2),
      O => I_K2_IBUF(2)
    );
\I_K2_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_K2(3),
      O => I_K2_IBUF(3)
    );
\I_K2_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_K2(4),
      O => I_K2_IBUF(4)
    );
\I_K2_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_K2(5),
      O => I_K2_IBUF(5)
    );
\I_K2_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_K2(6),
      O => I_K2_IBUF(6)
    );
\I_K2_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_K2(7),
      O => I_K2_IBUF(7)
    );
\I_K3_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_K3(0),
      O => I_K3_IBUF(0)
    );
\I_K3_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_K3(1),
      O => I_K3_IBUF(1)
    );
\I_K3_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_K3(2),
      O => I_K3_IBUF(2)
    );
\I_K3_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_K3(3),
      O => I_K3_IBUF(3)
    );
\I_K3_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_K3(4),
      O => I_K3_IBUF(4)
    );
\I_K3_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_K3(5),
      O => I_K3_IBUF(5)
    );
\I_K3_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_K3(6),
      O => I_K3_IBUF(6)
    );
\I_K3_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_K3(7),
      O => I_K3_IBUF(7)
    );
I_RST_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => I_RST,
      O => I_RST_IBUF
    );
\O_S0_OBUFT[0]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => IO_ram_DATA_OBUF(0),
      O => O_S0(0),
      T => \O_S0_TRI[0]\
    );
\O_S0_OBUFT[1]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => IO_ram_DATA_OBUF(1),
      O => O_S0(1),
      T => \O_S0_TRI[0]\
    );
\O_S0_OBUFT[2]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => IO_ram_DATA_OBUF(2),
      O => O_S0(2),
      T => \O_S0_TRI[0]\
    );
\O_S0_OBUFT[3]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => IO_ram_DATA_OBUF(3),
      O => O_S0(3),
      T => \O_S0_TRI[0]\
    );
\O_S0_OBUFT[4]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => IO_ram_DATA_OBUF(4),
      O => O_S0(4),
      T => \O_S0_TRI[0]\
    );
\O_S0_OBUFT[5]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => IO_ram_DATA_OBUF(5),
      O => O_S0(5),
      T => \O_S0_TRI[0]\
    );
\O_S0_OBUFT[6]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => IO_ram_DATA_OBUF(6),
      O => O_S0(6),
      T => \O_S0_TRI[0]\
    );
\O_S0_OBUFT[7]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => IO_ram_DATA_OBUF(7),
      O => O_S0(7),
      T => \O_S0_TRI[0]\
    );
\O_S1_OBUFT[0]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => IO_ram_DATA_OBUF(0),
      O => O_S1(0),
      T => \O_S1_TRI[0]\
    );
\O_S1_OBUFT[1]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => IO_ram_DATA_OBUF(1),
      O => O_S1(1),
      T => \O_S1_TRI[0]\
    );
\O_S1_OBUFT[2]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => IO_ram_DATA_OBUF(2),
      O => O_S1(2),
      T => \O_S1_TRI[0]\
    );
\O_S1_OBUFT[3]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => IO_ram_DATA_OBUF(3),
      O => O_S1(3),
      T => \O_S1_TRI[0]\
    );
\O_S1_OBUFT[4]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => IO_ram_DATA_OBUF(4),
      O => O_S1(4),
      T => \O_S1_TRI[0]\
    );
\O_S1_OBUFT[5]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => IO_ram_DATA_OBUF(5),
      O => O_S1(5),
      T => \O_S1_TRI[0]\
    );
\O_S1_OBUFT[6]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => IO_ram_DATA_OBUF(6),
      O => O_S1(6),
      T => \O_S1_TRI[0]\
    );
\O_S1_OBUFT[7]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => IO_ram_DATA_OBUF(7),
      O => O_S1(7),
      T => \O_S1_TRI[0]\
    );
\O_S2_OBUFT[0]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => IO_ram_DATA_OBUF(0),
      O => O_S2(0),
      T => \O_S2_TRI[0]\
    );
\O_S2_OBUFT[1]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => IO_ram_DATA_OBUF(1),
      O => O_S2(1),
      T => \O_S2_TRI[0]\
    );
\O_S2_OBUFT[2]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => IO_ram_DATA_OBUF(2),
      O => O_S2(2),
      T => \O_S2_TRI[0]\
    );
\O_S2_OBUFT[3]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => IO_ram_DATA_OBUF(3),
      O => O_S2(3),
      T => \O_S2_TRI[0]\
    );
\O_S2_OBUFT[4]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => IO_ram_DATA_OBUF(4),
      O => O_S2(4),
      T => \O_S2_TRI[0]\
    );
\O_S2_OBUFT[5]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => IO_ram_DATA_OBUF(5),
      O => O_S2(5),
      T => \O_S2_TRI[0]\
    );
\O_S2_OBUFT[6]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => IO_ram_DATA_OBUF(6),
      O => O_S2(6),
      T => \O_S2_TRI[0]\
    );
\O_S2_OBUFT[7]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => IO_ram_DATA_OBUF(7),
      O => O_S2(7),
      T => \O_S2_TRI[0]\
    );
\O_S3_OBUFT[0]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => IO_ram_DATA_OBUF(0),
      O => O_S3(0),
      T => \O_S3_TRI[0]\
    );
\O_S3_OBUFT[1]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => IO_ram_DATA_OBUF(1),
      O => O_S3(1),
      T => \O_S3_TRI[0]\
    );
\O_S3_OBUFT[2]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => IO_ram_DATA_OBUF(2),
      O => O_S3(2),
      T => \O_S3_TRI[0]\
    );
\O_S3_OBUFT[3]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => IO_ram_DATA_OBUF(3),
      O => O_S3(3),
      T => \O_S3_TRI[0]\
    );
\O_S3_OBUFT[4]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => IO_ram_DATA_OBUF(4),
      O => O_S3(4),
      T => \O_S3_TRI[0]\
    );
\O_S3_OBUFT[5]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => IO_ram_DATA_OBUF(5),
      O => O_S3(5),
      T => \O_S3_TRI[0]\
    );
\O_S3_OBUFT[6]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => IO_ram_DATA_OBUF(6),
      O => O_S3(6),
      T => \O_S3_TRI[0]\
    );
\O_S3_OBUFT[7]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => IO_ram_DATA_OBUF(7),
      O => O_S3(7),
      T => \O_S3_TRI[0]\
    );
\O_ram_ADDR_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_ram_ADDR_OBUF(0),
      O => O_ram_ADDR(0)
    );
\O_ram_ADDR_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_ram_ADDR_OBUF(10),
      O => O_ram_ADDR(10)
    );
\O_ram_ADDR_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_ram_ADDR_OBUF(11),
      O => O_ram_ADDR(11)
    );
\O_ram_ADDR_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_ram_ADDR_OBUF(12),
      O => O_ram_ADDR(12)
    );
\O_ram_ADDR_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_ram_ADDR_OBUF(13),
      O => O_ram_ADDR(13)
    );
\O_ram_ADDR_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_ram_ADDR_OBUF(14),
      O => O_ram_ADDR(14)
    );
\O_ram_ADDR_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_ram_ADDR_OBUF(15),
      O => O_ram_ADDR(15)
    );
\O_ram_ADDR_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_ram_ADDR_OBUF(1),
      O => O_ram_ADDR(1)
    );
\O_ram_ADDR_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_ram_ADDR_OBUF(2),
      O => O_ram_ADDR(2)
    );
\O_ram_ADDR_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_ram_ADDR_OBUF(3),
      O => O_ram_ADDR(3)
    );
\O_ram_ADDR_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_ram_ADDR_OBUF(4),
      O => O_ram_ADDR(4)
    );
\O_ram_ADDR_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_ram_ADDR_OBUF(5),
      O => O_ram_ADDR(5)
    );
\O_ram_ADDR_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_ram_ADDR_OBUF(6),
      O => O_ram_ADDR(6)
    );
\O_ram_ADDR_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_ram_ADDR_OBUF(7),
      O => O_ram_ADDR(7)
    );
\O_ram_ADDR_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_ram_ADDR_OBUF(8),
      O => O_ram_ADDR(8)
    );
\O_ram_ADDR_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_ram_ADDR_OBUF(9),
      O => O_ram_ADDR(9)
    );
O_ram_NBH_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => O_ram_NBH
    );
O_ram_NBL_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => O_ram_NBL
    );
O_ram_NCS_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => O_ram_NCS_OBUF,
      O => O_ram_NCS
    );
O_ram_NRD_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => O_ram_NRD_OBUF,
      O => O_ram_NRD
    );
O_ram_NWR_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => O_ram_NWR_OBUF,
      O => O_ram_NWR
    );
O_t1_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => O_t1,
      O => O_t1_BUFG
    );
uut_alu: entity work.alu
     port map (
      D(7) => uut_fetch_n_42,
      D(6) => uut_fetch_n_43,
      D(5) => uut_fetch_n_44,
      D(4) => uut_fetch_n_45,
      D(3) => uut_fetch_n_46,
      D(2) => uut_fetch_n_47,
      D(1) => uut_fetch_n_48,
      D(0) => uut_fetch_n_49,
      E(0) => uut_fetch_n_41,
      \O_S0[4]\(7 downto 0) => IO_ram_DATA_OBUF(7 downto 0),
      \O_ram_ADDR[0]\ => uut_alu_n_23,
      \O_ram_ADDR[13]\(15 downto 0) => O_ADDR(15 downto 0),
      Q(11) => O_IR(12),
      Q(10 downto 0) => O_IR(10 downto 0),
      \R[0]_0\(6 downto 0) => \R[0]_0\(6 downto 0),
      \R[0]__55\(0) => \R[0]__55\(7),
      data1(7 downto 0) => data1(7 downto 0),
      data2(7 downto 0) => data2(7 downto 0),
      tt2_reg(0) => uut_fetch_n_50,
      tt2_reg_0(7 downto 0) => O_REG_new(7 downto 0),
      tt4_reg(0) => uut_fetch_n_13,
      tt4_reg_0(0) => \R[1]_7\,
      tt4_reg_1(0) => \R[2]_6\,
      tt4_reg_2(0) => \R[3]_5\,
      tt4_reg_3(0) => \R[4]_4\,
      tt4_reg_4(0) => \R[5]_3\,
      tt4_reg_5(0) => \R[6]_2\,
      tt4_reg_6(0) => \R[7]_1\
    );
uut_fetch: entity work.fetch
     port map (
      AR(0) => I_RST_IBUF,
      D(7) => uut_fetch_n_23,
      D(6) => uut_fetch_n_24,
      D(5) => uut_fetch_n_25,
      D(4) => uut_fetch_n_26,
      D(3) => uut_fetch_n_27,
      D(2) => uut_fetch_n_28,
      D(1) => uut_fetch_n_29,
      D(0) => uut_fetch_n_30,
      E(0) => O_RTEMP0,
      \IO_ram_DATA_TRI[0]\ => \IO_ram_DATA_TRI[0]\,
      I_K0_IBUF(7 downto 0) => I_K0_IBUF(7 downto 0),
      I_K1_IBUF(7 downto 0) => I_K1_IBUF(7 downto 0),
      I_K2_IBUF(7 downto 0) => I_K2_IBUF(7 downto 0),
      I_K3_IBUF(7 downto 0) => I_K3_IBUF(7 downto 0),
      \O_S0[4]\(7) => uut_fetch_n_42,
      \O_S0[4]\(6) => uut_fetch_n_43,
      \O_S0[4]\(5) => uut_fetch_n_44,
      \O_S0[4]\(4) => uut_fetch_n_45,
      \O_S0[4]\(3) => uut_fetch_n_46,
      \O_S0[4]\(2) => uut_fetch_n_47,
      \O_S0[4]\(1) => uut_fetch_n_48,
      \O_S0[4]\(0) => uut_fetch_n_49,
      \O_S0_TRI[0]\ => \O_S0_TRI[0]\,
      \O_S1_TRI[0]\ => \O_S1_TRI[0]\,
      \O_S2_TRI[0]\ => \O_S2_TRI[0]\,
      \O_S3_TRI[0]\ => \O_S3_TRI[0]\,
      \O_ram_ADDR[0]\(0) => uut_fetch_n_13,
      \O_ram_ADDR[0]_0\(0) => uut_fetch_n_31,
      \O_ram_ADDR[0]_1\(7) => uut_fetch_n_32,
      \O_ram_ADDR[0]_1\(6) => uut_fetch_n_33,
      \O_ram_ADDR[0]_1\(5) => uut_fetch_n_34,
      \O_ram_ADDR[0]_1\(4) => uut_fetch_n_35,
      \O_ram_ADDR[0]_1\(3) => uut_fetch_n_36,
      \O_ram_ADDR[0]_1\(2) => uut_fetch_n_37,
      \O_ram_ADDR[0]_1\(1) => uut_fetch_n_38,
      \O_ram_ADDR[0]_1\(0) => uut_fetch_n_39,
      \O_ram_ADDR[0]_2\(0) => uut_fetch_n_40,
      \O_ram_ADDR[0]_3\(0) => uut_fetch_n_41,
      \O_ram_ADDR[0]_4\(0) => uut_fetch_n_50,
      \O_ram_ADDR[0]_5\(0) => uut_fetch_n_67,
      \O_ram_ADDR[15]\(15) => uut_fetch_n_51,
      \O_ram_ADDR[15]\(14) => uut_fetch_n_52,
      \O_ram_ADDR[15]\(13) => uut_fetch_n_53,
      \O_ram_ADDR[15]\(12) => uut_fetch_n_54,
      \O_ram_ADDR[15]\(11) => uut_fetch_n_55,
      \O_ram_ADDR[15]\(10) => uut_fetch_n_56,
      \O_ram_ADDR[15]\(9) => uut_fetch_n_57,
      \O_ram_ADDR[15]\(8) => uut_fetch_n_58,
      \O_ram_ADDR[15]\(7) => uut_fetch_n_59,
      \O_ram_ADDR[15]\(6) => uut_fetch_n_60,
      \O_ram_ADDR[15]\(5) => uut_fetch_n_61,
      \O_ram_ADDR[15]\(4) => uut_fetch_n_62,
      \O_ram_ADDR[15]\(3) => uut_fetch_n_63,
      \O_ram_ADDR[15]\(2) => uut_fetch_n_64,
      \O_ram_ADDR[15]\(1) => uut_fetch_n_65,
      \O_ram_ADDR[15]\(0) => uut_fetch_n_66,
      \O_ram_ADDR[4]\(0) => \R[1]_7\,
      \O_ram_ADDR[4]_0\(0) => \R[2]_6\,
      \O_ram_ADDR[4]_1\(0) => \R[3]_5\,
      \O_ram_ADDR[4]_2\(0) => \R[4]_4\,
      \O_ram_ADDR[4]_3\(0) => \R[5]_3\,
      \O_ram_ADDR[4]_4\(0) => \R[6]_2\,
      \O_ram_ADDR[4]_5\(0) => \R[7]_1\,
      O_ram_NCS_OBUF => O_ram_NCS_OBUF,
      O_ram_NRD_OBUF => O_ram_NRD_OBUF,
      O_ram_NWR_OBUF => O_ram_NWR_OBUF,
      O_t1 => O_t1,
      O_t2 => O_t2,
      O_t3 => O_t3,
      O_t4 => O_t4,
      Q(11) => O_IR(12),
      Q(10 downto 0) => O_IR(10 downto 0),
      \R[0]_0\(6 downto 0) => \R[0]_0\(6 downto 0),
      \R[0]__55\(0) => \R[0]__55\(7),
      data1(7 downto 0) => data1(7 downto 0),
      data2(7 downto 0) => data2(7 downto 0),
      tt1_reg => uut_alu_n_23,
      tt1_reg_0(14 downto 11) => ram_IR(15 downto 12),
      tt1_reg_0(10 downto 0) => ram_IR(10 downto 0),
      tt1_reg_1(0) => O_t1_BUFG,
      tt2_reg(7 downto 0) => IO_ram_DATA_OBUF(7 downto 0),
      tt2_reg_0(15 downto 0) => O_ADDR(15 downto 0),
      tt3_reg(7 downto 0) => O_RTEMP(7 downto 0),
      tt3_reg_0(7 downto 0) => refer_RTEMP(7 downto 0)
    );
uut_mod4: entity work.mod4
     port map (
      AR(0) => I_RST_IBUF,
      E(0) => O_t1_BUFG,
      I_CLK_IBUF_BUFG => I_CLK_IBUF_BUFG,
      O_t1 => O_t1,
      O_t2 => O_t2,
      O_t3 => O_t3,
      O_t4 => O_t4
    );
uut_ram_ctrl: entity work.ram_ctrl
     port map (
      D(14 downto 11) => IO_ram_DATA_IBUF(15 downto 12),
      D(10 downto 8) => IO_ram_DATA_IBUF(10 downto 8),
      D(7 downto 0) => \IO_ram_DATA_IBUF__0\(7 downto 0),
      E(0) => O_t1_BUFG,
      \O_ram_ADDR[0]\(7 downto 0) => O_RTEMP(7 downto 0),
      \O_ram_ADDR[15]\(15 downto 0) => O_ram_ADDR_OBUF(15 downto 0),
      Q(14 downto 11) => ram_IR(15 downto 12),
      Q(10 downto 0) => ram_IR(10 downto 0),
      tt1_reg(15) => uut_fetch_n_51,
      tt1_reg(14) => uut_fetch_n_52,
      tt1_reg(13) => uut_fetch_n_53,
      tt1_reg(12) => uut_fetch_n_54,
      tt1_reg(11) => uut_fetch_n_55,
      tt1_reg(10) => uut_fetch_n_56,
      tt1_reg(9) => uut_fetch_n_57,
      tt1_reg(8) => uut_fetch_n_58,
      tt1_reg(7) => uut_fetch_n_59,
      tt1_reg(6) => uut_fetch_n_60,
      tt1_reg(5) => uut_fetch_n_61,
      tt1_reg(4) => uut_fetch_n_62,
      tt1_reg(3) => uut_fetch_n_63,
      tt1_reg(2) => uut_fetch_n_64,
      tt1_reg(1) => uut_fetch_n_65,
      tt1_reg(0) => uut_fetch_n_66,
      tt3_reg(0) => O_RTEMP0,
      tt3_reg_0(0) => uut_fetch_n_67
    );
uut_refer: entity work.refer
     port map (
      D(7) => uut_fetch_n_23,
      D(6) => uut_fetch_n_24,
      D(5) => uut_fetch_n_25,
      D(4) => uut_fetch_n_26,
      D(3) => uut_fetch_n_27,
      D(2) => uut_fetch_n_28,
      D(1) => uut_fetch_n_29,
      D(0) => uut_fetch_n_30,
      E(0) => uut_fetch_n_31,
      Q(7 downto 0) => refer_RTEMP(7 downto 0)
    );
uut_write_back: entity work.write_back
     port map (
      D(7) => uut_fetch_n_32,
      D(6) => uut_fetch_n_33,
      D(5) => uut_fetch_n_34,
      D(4) => uut_fetch_n_35,
      D(3) => uut_fetch_n_36,
      D(2) => uut_fetch_n_37,
      D(1) => uut_fetch_n_38,
      D(0) => uut_fetch_n_39,
      E(0) => uut_fetch_n_40,
      Q(7 downto 0) => O_REG_new(7 downto 0)
    );
end STRUCTURE;
