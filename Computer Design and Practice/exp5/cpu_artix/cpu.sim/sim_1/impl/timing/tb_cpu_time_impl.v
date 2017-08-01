// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
// Date        : Sat Jul 22 21:01:45 2017
// Host        : DESKTOP-IQ9RCDV running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               E:/HITCS/exp5/cpu/cpu.sim/sim_1/impl/timing/tb_cpu_time_impl.v
// Design      : cpu
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module IOBUF_UNIQ_BASE_
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module IOBUF_HD1
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module IOBUF_HD2
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module IOBUF_HD3
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module IOBUF_HD4
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module IOBUF_HD5
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module IOBUF_HD6
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module IOBUF_HD7
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module alu
   (data1,
    data2,
    \R[0]_0 ,
    \O_ram_ADDR[0] ,
    \O_S0[4] ,
    \R[0]__55 ,
    \O_ram_ADDR[13] ,
    Q,
    D,
    E,
    tt2_reg,
    tt2_reg_0,
    tt4_reg,
    tt4_reg_0,
    tt4_reg_1,
    tt4_reg_2,
    tt4_reg_3,
    tt4_reg_4,
    tt4_reg_5,
    tt4_reg_6);
  output [7:0]data1;
  output [7:0]data2;
  output [6:0]\R[0]_0 ;
  output \O_ram_ADDR[0] ;
  output [7:0]\O_S0[4] ;
  output [0:0]\R[0]__55 ;
  output [15:0]\O_ram_ADDR[13] ;
  input [11:0]Q;
  input [7:0]D;
  input [0:0]E;
  input [0:0]tt2_reg;
  input [7:0]tt2_reg_0;
  input [0:0]tt4_reg;
  input [0:0]tt4_reg_0;
  input [0:0]tt4_reg_1;
  input [0:0]tt4_reg_2;
  input [0:0]tt4_reg_3;
  input [0:0]tt4_reg_4;
  input [0:0]tt4_reg_5;
  input [0:0]tt4_reg_6;

  wire [7:0]D;
  wire [0:0]E;
  wire \O_ALU_reg[7]_i_7_n_0 ;
  wire \O_ALU_reg[7]_i_8_n_0 ;
  wire [7:0]\O_S0[4] ;
  wire \O_ram_ADDR[0] ;
  wire [15:0]\O_ram_ADDR[13] ;
  wire \PC_reg[15]_i_5_n_0 ;
  wire [11:0]Q;
  wire [6:0]\R[0]_0 ;
  wire [0:0]\R[0]__55 ;
  wire \R_reg_n_0_[0][0] ;
  wire \R_reg_n_0_[0][1] ;
  wire \R_reg_n_0_[0][2] ;
  wire \R_reg_n_0_[0][3] ;
  wire \R_reg_n_0_[0][4] ;
  wire \R_reg_n_0_[0][5] ;
  wire \R_reg_n_0_[0][6] ;
  wire \R_reg_n_0_[0][7] ;
  wire \R_reg_n_0_[1][0] ;
  wire \R_reg_n_0_[1][1] ;
  wire \R_reg_n_0_[1][2] ;
  wire \R_reg_n_0_[1][3] ;
  wire \R_reg_n_0_[1][4] ;
  wire \R_reg_n_0_[1][5] ;
  wire \R_reg_n_0_[1][6] ;
  wire \R_reg_n_0_[1][7] ;
  wire \R_reg_n_0_[2][0] ;
  wire \R_reg_n_0_[2][1] ;
  wire \R_reg_n_0_[2][2] ;
  wire \R_reg_n_0_[2][3] ;
  wire \R_reg_n_0_[2][4] ;
  wire \R_reg_n_0_[2][5] ;
  wire \R_reg_n_0_[2][6] ;
  wire \R_reg_n_0_[2][7] ;
  wire \R_reg_n_0_[3][0] ;
  wire \R_reg_n_0_[3][1] ;
  wire \R_reg_n_0_[3][2] ;
  wire \R_reg_n_0_[3][3] ;
  wire \R_reg_n_0_[3][4] ;
  wire \R_reg_n_0_[3][5] ;
  wire \R_reg_n_0_[3][6] ;
  wire \R_reg_n_0_[3][7] ;
  wire \R_reg_n_0_[4][0] ;
  wire \R_reg_n_0_[4][1] ;
  wire \R_reg_n_0_[4][2] ;
  wire \R_reg_n_0_[4][3] ;
  wire \R_reg_n_0_[4][4] ;
  wire \R_reg_n_0_[4][5] ;
  wire \R_reg_n_0_[4][6] ;
  wire \R_reg_n_0_[4][7] ;
  wire \R_reg_n_0_[5][0] ;
  wire \R_reg_n_0_[5][1] ;
  wire \R_reg_n_0_[5][2] ;
  wire \R_reg_n_0_[5][3] ;
  wire \R_reg_n_0_[5][4] ;
  wire \R_reg_n_0_[5][5] ;
  wire \R_reg_n_0_[5][6] ;
  wire \R_reg_n_0_[5][7] ;
  wire \R_reg_n_0_[6][0] ;
  wire \R_reg_n_0_[6][1] ;
  wire \R_reg_n_0_[6][2] ;
  wire \R_reg_n_0_[6][3] ;
  wire \R_reg_n_0_[6][4] ;
  wire \R_reg_n_0_[6][5] ;
  wire \R_reg_n_0_[6][6] ;
  wire \R_reg_n_0_[6][7] ;
  wire \R_reg_n_0_[7][0] ;
  wire \R_reg_n_0_[7][1] ;
  wire \R_reg_n_0_[7][2] ;
  wire \R_reg_n_0_[7][3] ;
  wire \R_reg_n_0_[7][4] ;
  wire \R_reg_n_0_[7][5] ;
  wire \R_reg_n_0_[7][6] ;
  wire \R_reg_n_0_[7][7] ;
  wire [7:0]data1;
  wire [7:0]data2;
  wire minusOp_carry__0_i_4_n_0;
  wire minusOp_carry__0_i_5_n_0;
  wire minusOp_carry__0_i_6_n_0;
  wire minusOp_carry__0_i_7_n_0;
  wire minusOp_carry_i_5_n_0;
  wire minusOp_carry_i_6_n_0;
  wire minusOp_carry_i_7_n_0;
  wire minusOp_carry_i_8_n_0;
  wire minusOp_carry_n_0;
  wire plusOp_carry__0_i_10_n_0;
  wire plusOp_carry__0_i_11_n_0;
  wire plusOp_carry__0_i_12_n_0;
  wire plusOp_carry__0_i_13_n_0;
  wire plusOp_carry__0_i_14_n_0;
  wire plusOp_carry__0_i_15_n_0;
  wire plusOp_carry__0_i_16_n_0;
  wire plusOp_carry__0_i_17_n_0;
  wire plusOp_carry__0_i_18_n_0;
  wire plusOp_carry__0_i_19_n_0;
  wire plusOp_carry__0_i_1_n_0;
  wire plusOp_carry__0_i_20_n_0;
  wire plusOp_carry__0_i_21_n_0;
  wire plusOp_carry__0_i_2_n_0;
  wire plusOp_carry__0_i_3_n_0;
  wire plusOp_carry__0_i_4__0_n_0;
  wire plusOp_carry__0_i_5_n_0;
  wire plusOp_carry__0_i_6_n_0;
  wire plusOp_carry__0_i_7_n_0;
  wire plusOp_carry__0_i_8_n_0;
  wire plusOp_carry__0_i_9_n_0;
  wire plusOp_carry_i_10_n_0;
  wire plusOp_carry_i_11_n_0;
  wire plusOp_carry_i_12_n_0;
  wire plusOp_carry_i_13_n_0;
  wire plusOp_carry_i_14_n_0;
  wire plusOp_carry_i_15_n_0;
  wire plusOp_carry_i_16_n_0;
  wire plusOp_carry_i_17_n_0;
  wire plusOp_carry_i_18_n_0;
  wire plusOp_carry_i_19_n_0;
  wire plusOp_carry_i_1_n_0;
  wire plusOp_carry_i_20_n_0;
  wire plusOp_carry_i_21_n_0;
  wire plusOp_carry_i_22_n_0;
  wire plusOp_carry_i_23_n_0;
  wire plusOp_carry_i_24_n_0;
  wire plusOp_carry_i_2_n_0;
  wire plusOp_carry_i_3_n_0;
  wire plusOp_carry_i_4_n_0;
  wire plusOp_carry_i_5_n_0;
  wire plusOp_carry_i_6_n_0;
  wire plusOp_carry_i_7_n_0;
  wire plusOp_carry_i_8_n_0;
  wire plusOp_carry_i_9_n_0;
  wire plusOp_carry_n_0;
  wire [0:0]tt2_reg;
  wire [7:0]tt2_reg_0;
  wire [0:0]tt4_reg;
  wire [0:0]tt4_reg_0;
  wire [0:0]tt4_reg_1;
  wire [0:0]tt4_reg_2;
  wire [0:0]tt4_reg_3;
  wire [0:0]tt4_reg_4;
  wire [0:0]tt4_reg_5;
  wire [0:0]tt4_reg_6;
  wire [2:0]NLW_minusOp_carry_CO_UNCONNECTED;
  wire [3:0]NLW_minusOp_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_plusOp_carry_CO_UNCONNECTED;
  wire [3:0]NLW_plusOp_carry__0_CO_UNCONNECTED;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ADDR_reg[0] 
       (.CLR(1'b0),
        .D(Q[0]),
        .G(tt2_reg),
        .GE(1'b1),
        .Q(\O_ram_ADDR[13] [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ADDR_reg[10] 
       (.CLR(1'b0),
        .D(\R_reg_n_0_[7][2] ),
        .G(tt2_reg),
        .GE(1'b1),
        .Q(\O_ram_ADDR[13] [10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ADDR_reg[11] 
       (.CLR(1'b0),
        .D(\R_reg_n_0_[7][3] ),
        .G(tt2_reg),
        .GE(1'b1),
        .Q(\O_ram_ADDR[13] [11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ADDR_reg[12] 
       (.CLR(1'b0),
        .D(\R_reg_n_0_[7][4] ),
        .G(tt2_reg),
        .GE(1'b1),
        .Q(\O_ram_ADDR[13] [12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ADDR_reg[13] 
       (.CLR(1'b0),
        .D(\R_reg_n_0_[7][5] ),
        .G(tt2_reg),
        .GE(1'b1),
        .Q(\O_ram_ADDR[13] [13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ADDR_reg[14] 
       (.CLR(1'b0),
        .D(\R_reg_n_0_[7][6] ),
        .G(tt2_reg),
        .GE(1'b1),
        .Q(\O_ram_ADDR[13] [14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ADDR_reg[15] 
       (.CLR(1'b0),
        .D(\R_reg_n_0_[7][7] ),
        .G(tt2_reg),
        .GE(1'b1),
        .Q(\O_ram_ADDR[13] [15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ADDR_reg[1] 
       (.CLR(1'b0),
        .D(Q[1]),
        .G(tt2_reg),
        .GE(1'b1),
        .Q(\O_ram_ADDR[13] [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ADDR_reg[2] 
       (.CLR(1'b0),
        .D(Q[2]),
        .G(tt2_reg),
        .GE(1'b1),
        .Q(\O_ram_ADDR[13] [2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ADDR_reg[3] 
       (.CLR(1'b0),
        .D(Q[3]),
        .G(tt2_reg),
        .GE(1'b1),
        .Q(\O_ram_ADDR[13] [3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ADDR_reg[4] 
       (.CLR(1'b0),
        .D(Q[4]),
        .G(tt2_reg),
        .GE(1'b1),
        .Q(\O_ram_ADDR[13] [4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ADDR_reg[5] 
       (.CLR(1'b0),
        .D(Q[5]),
        .G(tt2_reg),
        .GE(1'b1),
        .Q(\O_ram_ADDR[13] [5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ADDR_reg[6] 
       (.CLR(1'b0),
        .D(Q[6]),
        .G(tt2_reg),
        .GE(1'b1),
        .Q(\O_ram_ADDR[13] [6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ADDR_reg[7] 
       (.CLR(1'b0),
        .D(Q[7]),
        .G(tt2_reg),
        .GE(1'b1),
        .Q(\O_ram_ADDR[13] [7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ADDR_reg[8] 
       (.CLR(1'b0),
        .D(\R_reg_n_0_[7][0] ),
        .G(tt2_reg),
        .GE(1'b1),
        .Q(\O_ram_ADDR[13] [8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ADDR_reg[9] 
       (.CLR(1'b0),
        .D(\R_reg_n_0_[7][1] ),
        .G(tt2_reg),
        .GE(1'b1),
        .Q(\O_ram_ADDR[13] [9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ALU_reg[0] 
       (.CLR(1'b0),
        .D(D[0]),
        .G(E),
        .GE(1'b1),
        .Q(\O_S0[4] [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ALU_reg[1] 
       (.CLR(1'b0),
        .D(D[1]),
        .G(E),
        .GE(1'b1),
        .Q(\O_S0[4] [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ALU_reg[2] 
       (.CLR(1'b0),
        .D(D[2]),
        .G(E),
        .GE(1'b1),
        .Q(\O_S0[4] [2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ALU_reg[3] 
       (.CLR(1'b0),
        .D(D[3]),
        .G(E),
        .GE(1'b1),
        .Q(\O_S0[4] [3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ALU_reg[4] 
       (.CLR(1'b0),
        .D(D[4]),
        .G(E),
        .GE(1'b1),
        .Q(\O_S0[4] [4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ALU_reg[5] 
       (.CLR(1'b0),
        .D(D[5]),
        .G(E),
        .GE(1'b1),
        .Q(\O_S0[4] [5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ALU_reg[6] 
       (.CLR(1'b0),
        .D(D[6]),
        .G(E),
        .GE(1'b1),
        .Q(\O_S0[4] [6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ALU_reg[7] 
       (.CLR(1'b0),
        .D(D[7]),
        .G(E),
        .GE(1'b1),
        .Q(\O_S0[4] [7]));
  MUXF7 \O_ALU_reg[7]_i_4 
       (.I0(\O_ALU_reg[7]_i_7_n_0 ),
        .I1(\O_ALU_reg[7]_i_8_n_0 ),
        .O(\R[0]__55 ),
        .S(Q[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \O_ALU_reg[7]_i_7 
       (.I0(\R_reg_n_0_[3][7] ),
        .I1(\R_reg_n_0_[2][7] ),
        .I2(Q[9]),
        .I3(\R_reg_n_0_[1][7] ),
        .I4(Q[8]),
        .I5(\R_reg_n_0_[0][7] ),
        .O(\O_ALU_reg[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \O_ALU_reg[7]_i_8 
       (.I0(\R_reg_n_0_[7][7] ),
        .I1(\R_reg_n_0_[6][7] ),
        .I2(Q[9]),
        .I3(\R_reg_n_0_[5][7] ),
        .I4(Q[8]),
        .I5(\R_reg_n_0_[4][7] ),
        .O(\O_ALU_reg[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555557)) 
    \PC_reg[15]_i_4 
       (.I0(Q[11]),
        .I1(\PC_reg[15]_i_5_n_0 ),
        .I2(\O_S0[4] [7]),
        .I3(\O_S0[4] [6]),
        .I4(\O_S0[4] [4]),
        .I5(\O_S0[4] [5]),
        .O(\O_ram_ADDR[0] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \PC_reg[15]_i_5 
       (.I0(\O_S0[4] [2]),
        .I1(\O_S0[4] [3]),
        .I2(\O_S0[4] [0]),
        .I3(\O_S0[4] [1]),
        .O(\PC_reg[15]_i_5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[0][0] 
       (.CLR(1'b0),
        .D(tt2_reg_0[0]),
        .G(tt4_reg),
        .GE(1'b1),
        .Q(\R_reg_n_0_[0][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[0][1] 
       (.CLR(1'b0),
        .D(tt2_reg_0[1]),
        .G(tt4_reg),
        .GE(1'b1),
        .Q(\R_reg_n_0_[0][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[0][2] 
       (.CLR(1'b0),
        .D(tt2_reg_0[2]),
        .G(tt4_reg),
        .GE(1'b1),
        .Q(\R_reg_n_0_[0][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[0][3] 
       (.CLR(1'b0),
        .D(tt2_reg_0[3]),
        .G(tt4_reg),
        .GE(1'b1),
        .Q(\R_reg_n_0_[0][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[0][4] 
       (.CLR(1'b0),
        .D(tt2_reg_0[4]),
        .G(tt4_reg),
        .GE(1'b1),
        .Q(\R_reg_n_0_[0][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[0][5] 
       (.CLR(1'b0),
        .D(tt2_reg_0[5]),
        .G(tt4_reg),
        .GE(1'b1),
        .Q(\R_reg_n_0_[0][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[0][6] 
       (.CLR(1'b0),
        .D(tt2_reg_0[6]),
        .G(tt4_reg),
        .GE(1'b1),
        .Q(\R_reg_n_0_[0][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[0][7] 
       (.CLR(1'b0),
        .D(tt2_reg_0[7]),
        .G(tt4_reg),
        .GE(1'b1),
        .Q(\R_reg_n_0_[0][7] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[1][0] 
       (.CLR(1'b0),
        .D(tt2_reg_0[0]),
        .G(tt4_reg_0),
        .GE(1'b1),
        .Q(\R_reg_n_0_[1][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[1][1] 
       (.CLR(1'b0),
        .D(tt2_reg_0[1]),
        .G(tt4_reg_0),
        .GE(1'b1),
        .Q(\R_reg_n_0_[1][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[1][2] 
       (.CLR(1'b0),
        .D(tt2_reg_0[2]),
        .G(tt4_reg_0),
        .GE(1'b1),
        .Q(\R_reg_n_0_[1][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[1][3] 
       (.CLR(1'b0),
        .D(tt2_reg_0[3]),
        .G(tt4_reg_0),
        .GE(1'b1),
        .Q(\R_reg_n_0_[1][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[1][4] 
       (.CLR(1'b0),
        .D(tt2_reg_0[4]),
        .G(tt4_reg_0),
        .GE(1'b1),
        .Q(\R_reg_n_0_[1][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[1][5] 
       (.CLR(1'b0),
        .D(tt2_reg_0[5]),
        .G(tt4_reg_0),
        .GE(1'b1),
        .Q(\R_reg_n_0_[1][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[1][6] 
       (.CLR(1'b0),
        .D(tt2_reg_0[6]),
        .G(tt4_reg_0),
        .GE(1'b1),
        .Q(\R_reg_n_0_[1][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[1][7] 
       (.CLR(1'b0),
        .D(tt2_reg_0[7]),
        .G(tt4_reg_0),
        .GE(1'b1),
        .Q(\R_reg_n_0_[1][7] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[2][0] 
       (.CLR(1'b0),
        .D(tt2_reg_0[0]),
        .G(tt4_reg_1),
        .GE(1'b1),
        .Q(\R_reg_n_0_[2][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[2][1] 
       (.CLR(1'b0),
        .D(tt2_reg_0[1]),
        .G(tt4_reg_1),
        .GE(1'b1),
        .Q(\R_reg_n_0_[2][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[2][2] 
       (.CLR(1'b0),
        .D(tt2_reg_0[2]),
        .G(tt4_reg_1),
        .GE(1'b1),
        .Q(\R_reg_n_0_[2][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[2][3] 
       (.CLR(1'b0),
        .D(tt2_reg_0[3]),
        .G(tt4_reg_1),
        .GE(1'b1),
        .Q(\R_reg_n_0_[2][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[2][4] 
       (.CLR(1'b0),
        .D(tt2_reg_0[4]),
        .G(tt4_reg_1),
        .GE(1'b1),
        .Q(\R_reg_n_0_[2][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[2][5] 
       (.CLR(1'b0),
        .D(tt2_reg_0[5]),
        .G(tt4_reg_1),
        .GE(1'b1),
        .Q(\R_reg_n_0_[2][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[2][6] 
       (.CLR(1'b0),
        .D(tt2_reg_0[6]),
        .G(tt4_reg_1),
        .GE(1'b1),
        .Q(\R_reg_n_0_[2][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[2][7] 
       (.CLR(1'b0),
        .D(tt2_reg_0[7]),
        .G(tt4_reg_1),
        .GE(1'b1),
        .Q(\R_reg_n_0_[2][7] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[3][0] 
       (.CLR(1'b0),
        .D(tt2_reg_0[0]),
        .G(tt4_reg_2),
        .GE(1'b1),
        .Q(\R_reg_n_0_[3][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[3][1] 
       (.CLR(1'b0),
        .D(tt2_reg_0[1]),
        .G(tt4_reg_2),
        .GE(1'b1),
        .Q(\R_reg_n_0_[3][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[3][2] 
       (.CLR(1'b0),
        .D(tt2_reg_0[2]),
        .G(tt4_reg_2),
        .GE(1'b1),
        .Q(\R_reg_n_0_[3][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[3][3] 
       (.CLR(1'b0),
        .D(tt2_reg_0[3]),
        .G(tt4_reg_2),
        .GE(1'b1),
        .Q(\R_reg_n_0_[3][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[3][4] 
       (.CLR(1'b0),
        .D(tt2_reg_0[4]),
        .G(tt4_reg_2),
        .GE(1'b1),
        .Q(\R_reg_n_0_[3][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[3][5] 
       (.CLR(1'b0),
        .D(tt2_reg_0[5]),
        .G(tt4_reg_2),
        .GE(1'b1),
        .Q(\R_reg_n_0_[3][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[3][6] 
       (.CLR(1'b0),
        .D(tt2_reg_0[6]),
        .G(tt4_reg_2),
        .GE(1'b1),
        .Q(\R_reg_n_0_[3][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[3][7] 
       (.CLR(1'b0),
        .D(tt2_reg_0[7]),
        .G(tt4_reg_2),
        .GE(1'b1),
        .Q(\R_reg_n_0_[3][7] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[4][0] 
       (.CLR(1'b0),
        .D(tt2_reg_0[0]),
        .G(tt4_reg_3),
        .GE(1'b1),
        .Q(\R_reg_n_0_[4][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[4][1] 
       (.CLR(1'b0),
        .D(tt2_reg_0[1]),
        .G(tt4_reg_3),
        .GE(1'b1),
        .Q(\R_reg_n_0_[4][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[4][2] 
       (.CLR(1'b0),
        .D(tt2_reg_0[2]),
        .G(tt4_reg_3),
        .GE(1'b1),
        .Q(\R_reg_n_0_[4][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[4][3] 
       (.CLR(1'b0),
        .D(tt2_reg_0[3]),
        .G(tt4_reg_3),
        .GE(1'b1),
        .Q(\R_reg_n_0_[4][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[4][4] 
       (.CLR(1'b0),
        .D(tt2_reg_0[4]),
        .G(tt4_reg_3),
        .GE(1'b1),
        .Q(\R_reg_n_0_[4][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[4][5] 
       (.CLR(1'b0),
        .D(tt2_reg_0[5]),
        .G(tt4_reg_3),
        .GE(1'b1),
        .Q(\R_reg_n_0_[4][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[4][6] 
       (.CLR(1'b0),
        .D(tt2_reg_0[6]),
        .G(tt4_reg_3),
        .GE(1'b1),
        .Q(\R_reg_n_0_[4][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[4][7] 
       (.CLR(1'b0),
        .D(tt2_reg_0[7]),
        .G(tt4_reg_3),
        .GE(1'b1),
        .Q(\R_reg_n_0_[4][7] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[5][0] 
       (.CLR(1'b0),
        .D(tt2_reg_0[0]),
        .G(tt4_reg_4),
        .GE(1'b1),
        .Q(\R_reg_n_0_[5][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[5][1] 
       (.CLR(1'b0),
        .D(tt2_reg_0[1]),
        .G(tt4_reg_4),
        .GE(1'b1),
        .Q(\R_reg_n_0_[5][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[5][2] 
       (.CLR(1'b0),
        .D(tt2_reg_0[2]),
        .G(tt4_reg_4),
        .GE(1'b1),
        .Q(\R_reg_n_0_[5][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[5][3] 
       (.CLR(1'b0),
        .D(tt2_reg_0[3]),
        .G(tt4_reg_4),
        .GE(1'b1),
        .Q(\R_reg_n_0_[5][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[5][4] 
       (.CLR(1'b0),
        .D(tt2_reg_0[4]),
        .G(tt4_reg_4),
        .GE(1'b1),
        .Q(\R_reg_n_0_[5][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[5][5] 
       (.CLR(1'b0),
        .D(tt2_reg_0[5]),
        .G(tt4_reg_4),
        .GE(1'b1),
        .Q(\R_reg_n_0_[5][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[5][6] 
       (.CLR(1'b0),
        .D(tt2_reg_0[6]),
        .G(tt4_reg_4),
        .GE(1'b1),
        .Q(\R_reg_n_0_[5][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[5][7] 
       (.CLR(1'b0),
        .D(tt2_reg_0[7]),
        .G(tt4_reg_4),
        .GE(1'b1),
        .Q(\R_reg_n_0_[5][7] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[6][0] 
       (.CLR(1'b0),
        .D(tt2_reg_0[0]),
        .G(tt4_reg_5),
        .GE(1'b1),
        .Q(\R_reg_n_0_[6][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[6][1] 
       (.CLR(1'b0),
        .D(tt2_reg_0[1]),
        .G(tt4_reg_5),
        .GE(1'b1),
        .Q(\R_reg_n_0_[6][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[6][2] 
       (.CLR(1'b0),
        .D(tt2_reg_0[2]),
        .G(tt4_reg_5),
        .GE(1'b1),
        .Q(\R_reg_n_0_[6][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[6][3] 
       (.CLR(1'b0),
        .D(tt2_reg_0[3]),
        .G(tt4_reg_5),
        .GE(1'b1),
        .Q(\R_reg_n_0_[6][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[6][4] 
       (.CLR(1'b0),
        .D(tt2_reg_0[4]),
        .G(tt4_reg_5),
        .GE(1'b1),
        .Q(\R_reg_n_0_[6][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[6][5] 
       (.CLR(1'b0),
        .D(tt2_reg_0[5]),
        .G(tt4_reg_5),
        .GE(1'b1),
        .Q(\R_reg_n_0_[6][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[6][6] 
       (.CLR(1'b0),
        .D(tt2_reg_0[6]),
        .G(tt4_reg_5),
        .GE(1'b1),
        .Q(\R_reg_n_0_[6][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[6][7] 
       (.CLR(1'b0),
        .D(tt2_reg_0[7]),
        .G(tt4_reg_5),
        .GE(1'b1),
        .Q(\R_reg_n_0_[6][7] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[7][0] 
       (.CLR(1'b0),
        .D(tt2_reg_0[0]),
        .G(tt4_reg_6),
        .GE(1'b1),
        .Q(\R_reg_n_0_[7][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[7][1] 
       (.CLR(1'b0),
        .D(tt2_reg_0[1]),
        .G(tt4_reg_6),
        .GE(1'b1),
        .Q(\R_reg_n_0_[7][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[7][2] 
       (.CLR(1'b0),
        .D(tt2_reg_0[2]),
        .G(tt4_reg_6),
        .GE(1'b1),
        .Q(\R_reg_n_0_[7][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[7][3] 
       (.CLR(1'b0),
        .D(tt2_reg_0[3]),
        .G(tt4_reg_6),
        .GE(1'b1),
        .Q(\R_reg_n_0_[7][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[7][4] 
       (.CLR(1'b0),
        .D(tt2_reg_0[4]),
        .G(tt4_reg_6),
        .GE(1'b1),
        .Q(\R_reg_n_0_[7][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[7][5] 
       (.CLR(1'b0),
        .D(tt2_reg_0[5]),
        .G(tt4_reg_6),
        .GE(1'b1),
        .Q(\R_reg_n_0_[7][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[7][6] 
       (.CLR(1'b0),
        .D(tt2_reg_0[6]),
        .G(tt4_reg_6),
        .GE(1'b1),
        .Q(\R_reg_n_0_[7][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_reg[7][7] 
       (.CLR(1'b0),
        .D(tt2_reg_0[7]),
        .G(tt4_reg_6),
        .GE(1'b1),
        .Q(\R_reg_n_0_[7][7] ));
  CARRY4 minusOp_carry
       (.CI(1'b0),
        .CO({minusOp_carry_n_0,NLW_minusOp_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI(\R[0]_0 [3:0]),
        .O(data2[3:0]),
        .S({minusOp_carry_i_5_n_0,minusOp_carry_i_6_n_0,minusOp_carry_i_7_n_0,minusOp_carry_i_8_n_0}));
  CARRY4 minusOp_carry__0
       (.CI(minusOp_carry_n_0),
        .CO(NLW_minusOp_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\R[0]_0 [6:4]}),
        .O(data2[7:4]),
        .S({minusOp_carry__0_i_4_n_0,minusOp_carry__0_i_5_n_0,minusOp_carry__0_i_6_n_0,minusOp_carry__0_i_7_n_0}));
  LUT3 #(
    .INIT(8'hB8)) 
    minusOp_carry__0_i_1
       (.I0(plusOp_carry__0_i_8_n_0),
        .I1(Q[10]),
        .I2(plusOp_carry__0_i_9_n_0),
        .O(\R[0]_0 [6]));
  LUT3 #(
    .INIT(8'hB8)) 
    minusOp_carry__0_i_2
       (.I0(plusOp_carry__0_i_10_n_0),
        .I1(Q[10]),
        .I2(plusOp_carry__0_i_11_n_0),
        .O(\R[0]_0 [5]));
  LUT3 #(
    .INIT(8'hB8)) 
    minusOp_carry__0_i_3
       (.I0(plusOp_carry__0_i_12_n_0),
        .I1(Q[10]),
        .I2(plusOp_carry__0_i_13_n_0),
        .O(\R[0]_0 [4]));
  LUT4 #(
    .INIT(16'hA959)) 
    minusOp_carry__0_i_4
       (.I0(\R[0]__55 ),
        .I1(plusOp_carry__0_i_14_n_0),
        .I2(Q[2]),
        .I3(plusOp_carry__0_i_15_n_0),
        .O(minusOp_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'hA959)) 
    minusOp_carry__0_i_5
       (.I0(\R[0]_0 [6]),
        .I1(plusOp_carry__0_i_16_n_0),
        .I2(Q[2]),
        .I3(plusOp_carry__0_i_17_n_0),
        .O(minusOp_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'hA959)) 
    minusOp_carry__0_i_6
       (.I0(\R[0]_0 [5]),
        .I1(plusOp_carry__0_i_18_n_0),
        .I2(Q[2]),
        .I3(plusOp_carry__0_i_19_n_0),
        .O(minusOp_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'hA959)) 
    minusOp_carry__0_i_7
       (.I0(\R[0]_0 [4]),
        .I1(plusOp_carry__0_i_20_n_0),
        .I2(Q[2]),
        .I3(plusOp_carry__0_i_21_n_0),
        .O(minusOp_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    minusOp_carry_i_1
       (.I0(plusOp_carry_i_9_n_0),
        .I1(Q[10]),
        .I2(plusOp_carry_i_10_n_0),
        .O(\R[0]_0 [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    minusOp_carry_i_2
       (.I0(plusOp_carry_i_11_n_0),
        .I1(Q[10]),
        .I2(plusOp_carry_i_12_n_0),
        .O(\R[0]_0 [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    minusOp_carry_i_3
       (.I0(plusOp_carry_i_13_n_0),
        .I1(Q[10]),
        .I2(plusOp_carry_i_14_n_0),
        .O(\R[0]_0 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    minusOp_carry_i_4
       (.I0(plusOp_carry_i_15_n_0),
        .I1(Q[10]),
        .I2(plusOp_carry_i_16_n_0),
        .O(\R[0]_0 [0]));
  LUT4 #(
    .INIT(16'hA959)) 
    minusOp_carry_i_5
       (.I0(\R[0]_0 [3]),
        .I1(plusOp_carry_i_17_n_0),
        .I2(Q[2]),
        .I3(plusOp_carry_i_18_n_0),
        .O(minusOp_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'hA959)) 
    minusOp_carry_i_6
       (.I0(\R[0]_0 [2]),
        .I1(plusOp_carry_i_19_n_0),
        .I2(Q[2]),
        .I3(plusOp_carry_i_20_n_0),
        .O(minusOp_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'hA959)) 
    minusOp_carry_i_7
       (.I0(\R[0]_0 [1]),
        .I1(plusOp_carry_i_21_n_0),
        .I2(Q[2]),
        .I3(plusOp_carry_i_22_n_0),
        .O(minusOp_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'hA959)) 
    minusOp_carry_i_8
       (.I0(\R[0]_0 [0]),
        .I1(plusOp_carry_i_23_n_0),
        .I2(Q[2]),
        .I3(plusOp_carry_i_24_n_0),
        .O(minusOp_carry_i_8_n_0));
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,NLW_plusOp_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({plusOp_carry_i_1_n_0,plusOp_carry_i_2_n_0,plusOp_carry_i_3_n_0,plusOp_carry_i_4_n_0}),
        .O(data1[3:0]),
        .S({plusOp_carry_i_5_n_0,plusOp_carry_i_6_n_0,plusOp_carry_i_7_n_0,plusOp_carry_i_8_n_0}));
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO(NLW_plusOp_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,plusOp_carry__0_i_1_n_0,plusOp_carry__0_i_2_n_0,plusOp_carry__0_i_3_n_0}),
        .O(data1[7:4]),
        .S({plusOp_carry__0_i_4__0_n_0,plusOp_carry__0_i_5_n_0,plusOp_carry__0_i_6_n_0,plusOp_carry__0_i_7_n_0}));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp_carry__0_i_1
       (.I0(plusOp_carry__0_i_8_n_0),
        .I1(Q[10]),
        .I2(plusOp_carry__0_i_9_n_0),
        .O(plusOp_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry__0_i_10
       (.I0(\R_reg_n_0_[7][5] ),
        .I1(\R_reg_n_0_[6][5] ),
        .I2(Q[9]),
        .I3(\R_reg_n_0_[5][5] ),
        .I4(Q[8]),
        .I5(\R_reg_n_0_[4][5] ),
        .O(plusOp_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry__0_i_11
       (.I0(\R_reg_n_0_[3][5] ),
        .I1(\R_reg_n_0_[2][5] ),
        .I2(Q[9]),
        .I3(\R_reg_n_0_[1][5] ),
        .I4(Q[8]),
        .I5(\R_reg_n_0_[0][5] ),
        .O(plusOp_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry__0_i_12
       (.I0(\R_reg_n_0_[7][4] ),
        .I1(\R_reg_n_0_[6][4] ),
        .I2(Q[9]),
        .I3(\R_reg_n_0_[5][4] ),
        .I4(Q[8]),
        .I5(\R_reg_n_0_[4][4] ),
        .O(plusOp_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry__0_i_13
       (.I0(\R_reg_n_0_[3][4] ),
        .I1(\R_reg_n_0_[2][4] ),
        .I2(Q[9]),
        .I3(\R_reg_n_0_[1][4] ),
        .I4(Q[8]),
        .I5(\R_reg_n_0_[0][4] ),
        .O(plusOp_carry__0_i_13_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry__0_i_14
       (.I0(\R_reg_n_0_[3][7] ),
        .I1(\R_reg_n_0_[2][7] ),
        .I2(Q[1]),
        .I3(\R_reg_n_0_[1][7] ),
        .I4(Q[0]),
        .I5(\R_reg_n_0_[0][7] ),
        .O(plusOp_carry__0_i_14_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry__0_i_15
       (.I0(\R_reg_n_0_[7][7] ),
        .I1(\R_reg_n_0_[6][7] ),
        .I2(Q[1]),
        .I3(\R_reg_n_0_[5][7] ),
        .I4(Q[0]),
        .I5(\R_reg_n_0_[4][7] ),
        .O(plusOp_carry__0_i_15_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry__0_i_16
       (.I0(\R_reg_n_0_[3][6] ),
        .I1(\R_reg_n_0_[2][6] ),
        .I2(Q[1]),
        .I3(\R_reg_n_0_[1][6] ),
        .I4(Q[0]),
        .I5(\R_reg_n_0_[0][6] ),
        .O(plusOp_carry__0_i_16_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry__0_i_17
       (.I0(\R_reg_n_0_[7][6] ),
        .I1(\R_reg_n_0_[6][6] ),
        .I2(Q[1]),
        .I3(\R_reg_n_0_[5][6] ),
        .I4(Q[0]),
        .I5(\R_reg_n_0_[4][6] ),
        .O(plusOp_carry__0_i_17_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry__0_i_18
       (.I0(\R_reg_n_0_[3][5] ),
        .I1(\R_reg_n_0_[2][5] ),
        .I2(Q[1]),
        .I3(\R_reg_n_0_[1][5] ),
        .I4(Q[0]),
        .I5(\R_reg_n_0_[0][5] ),
        .O(plusOp_carry__0_i_18_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry__0_i_19
       (.I0(\R_reg_n_0_[7][5] ),
        .I1(\R_reg_n_0_[6][5] ),
        .I2(Q[1]),
        .I3(\R_reg_n_0_[5][5] ),
        .I4(Q[0]),
        .I5(\R_reg_n_0_[4][5] ),
        .O(plusOp_carry__0_i_19_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp_carry__0_i_2
       (.I0(plusOp_carry__0_i_10_n_0),
        .I1(Q[10]),
        .I2(plusOp_carry__0_i_11_n_0),
        .O(plusOp_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry__0_i_20
       (.I0(\R_reg_n_0_[3][4] ),
        .I1(\R_reg_n_0_[2][4] ),
        .I2(Q[1]),
        .I3(\R_reg_n_0_[1][4] ),
        .I4(Q[0]),
        .I5(\R_reg_n_0_[0][4] ),
        .O(plusOp_carry__0_i_20_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry__0_i_21
       (.I0(\R_reg_n_0_[7][4] ),
        .I1(\R_reg_n_0_[6][4] ),
        .I2(Q[1]),
        .I3(\R_reg_n_0_[5][4] ),
        .I4(Q[0]),
        .I5(\R_reg_n_0_[4][4] ),
        .O(plusOp_carry__0_i_21_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp_carry__0_i_3
       (.I0(plusOp_carry__0_i_12_n_0),
        .I1(Q[10]),
        .I2(plusOp_carry__0_i_13_n_0),
        .O(plusOp_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    plusOp_carry__0_i_4__0
       (.I0(\R[0]__55 ),
        .I1(plusOp_carry__0_i_14_n_0),
        .I2(Q[2]),
        .I3(plusOp_carry__0_i_15_n_0),
        .O(plusOp_carry__0_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    plusOp_carry__0_i_5
       (.I0(\R[0]_0 [6]),
        .I1(plusOp_carry__0_i_16_n_0),
        .I2(Q[2]),
        .I3(plusOp_carry__0_i_17_n_0),
        .O(plusOp_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    plusOp_carry__0_i_6
       (.I0(\R[0]_0 [5]),
        .I1(plusOp_carry__0_i_18_n_0),
        .I2(Q[2]),
        .I3(plusOp_carry__0_i_19_n_0),
        .O(plusOp_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    plusOp_carry__0_i_7
       (.I0(\R[0]_0 [4]),
        .I1(plusOp_carry__0_i_20_n_0),
        .I2(Q[2]),
        .I3(plusOp_carry__0_i_21_n_0),
        .O(plusOp_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry__0_i_8
       (.I0(\R_reg_n_0_[7][6] ),
        .I1(\R_reg_n_0_[6][6] ),
        .I2(Q[9]),
        .I3(\R_reg_n_0_[5][6] ),
        .I4(Q[8]),
        .I5(\R_reg_n_0_[4][6] ),
        .O(plusOp_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry__0_i_9
       (.I0(\R_reg_n_0_[3][6] ),
        .I1(\R_reg_n_0_[2][6] ),
        .I2(Q[9]),
        .I3(\R_reg_n_0_[1][6] ),
        .I4(Q[8]),
        .I5(\R_reg_n_0_[0][6] ),
        .O(plusOp_carry__0_i_9_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp_carry_i_1
       (.I0(plusOp_carry_i_9_n_0),
        .I1(Q[10]),
        .I2(plusOp_carry_i_10_n_0),
        .O(plusOp_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry_i_10
       (.I0(\R_reg_n_0_[3][3] ),
        .I1(\R_reg_n_0_[2][3] ),
        .I2(Q[9]),
        .I3(\R_reg_n_0_[1][3] ),
        .I4(Q[8]),
        .I5(\R_reg_n_0_[0][3] ),
        .O(plusOp_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry_i_11
       (.I0(\R_reg_n_0_[7][2] ),
        .I1(\R_reg_n_0_[6][2] ),
        .I2(Q[9]),
        .I3(\R_reg_n_0_[5][2] ),
        .I4(Q[8]),
        .I5(\R_reg_n_0_[4][2] ),
        .O(plusOp_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry_i_12
       (.I0(\R_reg_n_0_[3][2] ),
        .I1(\R_reg_n_0_[2][2] ),
        .I2(Q[9]),
        .I3(\R_reg_n_0_[1][2] ),
        .I4(Q[8]),
        .I5(\R_reg_n_0_[0][2] ),
        .O(plusOp_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry_i_13
       (.I0(\R_reg_n_0_[7][1] ),
        .I1(\R_reg_n_0_[6][1] ),
        .I2(Q[9]),
        .I3(\R_reg_n_0_[5][1] ),
        .I4(Q[8]),
        .I5(\R_reg_n_0_[4][1] ),
        .O(plusOp_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry_i_14
       (.I0(\R_reg_n_0_[3][1] ),
        .I1(\R_reg_n_0_[2][1] ),
        .I2(Q[9]),
        .I3(\R_reg_n_0_[1][1] ),
        .I4(Q[8]),
        .I5(\R_reg_n_0_[0][1] ),
        .O(plusOp_carry_i_14_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry_i_15
       (.I0(\R_reg_n_0_[7][0] ),
        .I1(\R_reg_n_0_[6][0] ),
        .I2(Q[9]),
        .I3(\R_reg_n_0_[5][0] ),
        .I4(Q[8]),
        .I5(\R_reg_n_0_[4][0] ),
        .O(plusOp_carry_i_15_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry_i_16
       (.I0(\R_reg_n_0_[3][0] ),
        .I1(\R_reg_n_0_[2][0] ),
        .I2(Q[9]),
        .I3(\R_reg_n_0_[1][0] ),
        .I4(Q[8]),
        .I5(\R_reg_n_0_[0][0] ),
        .O(plusOp_carry_i_16_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry_i_17
       (.I0(\R_reg_n_0_[3][3] ),
        .I1(\R_reg_n_0_[2][3] ),
        .I2(Q[1]),
        .I3(\R_reg_n_0_[1][3] ),
        .I4(Q[0]),
        .I5(\R_reg_n_0_[0][3] ),
        .O(plusOp_carry_i_17_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry_i_18
       (.I0(\R_reg_n_0_[7][3] ),
        .I1(\R_reg_n_0_[6][3] ),
        .I2(Q[1]),
        .I3(\R_reg_n_0_[5][3] ),
        .I4(Q[0]),
        .I5(\R_reg_n_0_[4][3] ),
        .O(plusOp_carry_i_18_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry_i_19
       (.I0(\R_reg_n_0_[3][2] ),
        .I1(\R_reg_n_0_[2][2] ),
        .I2(Q[1]),
        .I3(\R_reg_n_0_[1][2] ),
        .I4(Q[0]),
        .I5(\R_reg_n_0_[0][2] ),
        .O(plusOp_carry_i_19_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp_carry_i_2
       (.I0(plusOp_carry_i_11_n_0),
        .I1(Q[10]),
        .I2(plusOp_carry_i_12_n_0),
        .O(plusOp_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry_i_20
       (.I0(\R_reg_n_0_[7][2] ),
        .I1(\R_reg_n_0_[6][2] ),
        .I2(Q[1]),
        .I3(\R_reg_n_0_[5][2] ),
        .I4(Q[0]),
        .I5(\R_reg_n_0_[4][2] ),
        .O(plusOp_carry_i_20_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry_i_21
       (.I0(\R_reg_n_0_[3][1] ),
        .I1(\R_reg_n_0_[2][1] ),
        .I2(Q[1]),
        .I3(\R_reg_n_0_[1][1] ),
        .I4(Q[0]),
        .I5(\R_reg_n_0_[0][1] ),
        .O(plusOp_carry_i_21_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry_i_22
       (.I0(\R_reg_n_0_[7][1] ),
        .I1(\R_reg_n_0_[6][1] ),
        .I2(Q[1]),
        .I3(\R_reg_n_0_[5][1] ),
        .I4(Q[0]),
        .I5(\R_reg_n_0_[4][1] ),
        .O(plusOp_carry_i_22_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry_i_23
       (.I0(\R_reg_n_0_[3][0] ),
        .I1(\R_reg_n_0_[2][0] ),
        .I2(Q[1]),
        .I3(\R_reg_n_0_[1][0] ),
        .I4(Q[0]),
        .I5(\R_reg_n_0_[0][0] ),
        .O(plusOp_carry_i_23_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry_i_24
       (.I0(\R_reg_n_0_[7][0] ),
        .I1(\R_reg_n_0_[6][0] ),
        .I2(Q[1]),
        .I3(\R_reg_n_0_[5][0] ),
        .I4(Q[0]),
        .I5(\R_reg_n_0_[4][0] ),
        .O(plusOp_carry_i_24_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp_carry_i_3
       (.I0(plusOp_carry_i_13_n_0),
        .I1(Q[10]),
        .I2(plusOp_carry_i_14_n_0),
        .O(plusOp_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp_carry_i_4
       (.I0(plusOp_carry_i_15_n_0),
        .I1(Q[10]),
        .I2(plusOp_carry_i_16_n_0),
        .O(plusOp_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    plusOp_carry_i_5
       (.I0(\R[0]_0 [3]),
        .I1(plusOp_carry_i_17_n_0),
        .I2(Q[2]),
        .I3(plusOp_carry_i_18_n_0),
        .O(plusOp_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    plusOp_carry_i_6
       (.I0(\R[0]_0 [2]),
        .I1(plusOp_carry_i_19_n_0),
        .I2(Q[2]),
        .I3(plusOp_carry_i_20_n_0),
        .O(plusOp_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    plusOp_carry_i_7
       (.I0(\R[0]_0 [1]),
        .I1(plusOp_carry_i_21_n_0),
        .I2(Q[2]),
        .I3(plusOp_carry_i_22_n_0),
        .O(plusOp_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    plusOp_carry_i_8
       (.I0(\R[0]_0 [0]),
        .I1(plusOp_carry_i_23_n_0),
        .I2(Q[2]),
        .I3(plusOp_carry_i_24_n_0),
        .O(plusOp_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry_i_9
       (.I0(\R_reg_n_0_[7][3] ),
        .I1(\R_reg_n_0_[6][3] ),
        .I2(Q[9]),
        .I3(\R_reg_n_0_[5][3] ),
        .I4(Q[8]),
        .I5(\R_reg_n_0_[4][3] ),
        .O(plusOp_carry_i_9_n_0));
endmodule

(* ECO_CHECKSUM = "656dd07f" *) 
(* NotValidForBitStream *)
module cpu
   (I_CLK,
    I_RST,
    I_K0,
    I_K1,
    I_K2,
    I_K3,
    O_S0,
    O_S1,
    O_S2,
    O_S3,
    O_ram_ADDR,
    IO_ram_DATA,
    O_ram_NCS,
    O_ram_NRD,
    O_ram_NWR,
    O_ram_NBH,
    O_ram_NBL);
  input I_CLK;
  input I_RST;
  input [7:0]I_K0;
  input [7:0]I_K1;
  input [7:0]I_K2;
  input [7:0]I_K3;
  output [7:0]O_S0;
  output [7:0]O_S1;
  output [7:0]O_S2;
  output [7:0]O_S3;
  output [15:0]O_ram_ADDR;
  inout [15:0]IO_ram_DATA;
  output O_ram_NCS;
  output O_ram_NRD;
  output O_ram_NWR;
  output O_ram_NBH;
  output O_ram_NBL;

  wire [15:0]IO_ram_DATA;
  wire [15:8]IO_ram_DATA_IBUF;
  wire [7:0]IO_ram_DATA_IBUF__0;
  wire [7:0]IO_ram_DATA_OBUF;
  wire \IO_ram_DATA_TRI[0] ;
  wire I_CLK;
  wire I_CLK_IBUF;
  wire I_CLK_IBUF_BUFG;
  wire [7:0]I_K0;
  wire [7:0]I_K0_IBUF;
  wire [7:0]I_K1;
  wire [7:0]I_K1_IBUF;
  wire [7:0]I_K2;
  wire [7:0]I_K2_IBUF;
  wire [7:0]I_K3;
  wire [7:0]I_K3_IBUF;
  wire I_RST;
  wire I_RST_IBUF;
  wire [15:0]O_ADDR;
  wire [12:0]O_IR;
  wire [7:0]O_REG_new;
  wire [7:0]O_RTEMP;
  wire O_RTEMP0;
  wire [7:0]O_S0;
  wire \O_S0_TRI[0] ;
  wire [7:0]O_S1;
  wire \O_S1_TRI[0] ;
  wire [7:0]O_S2;
  wire \O_S2_TRI[0] ;
  wire [7:0]O_S3;
  wire \O_S3_TRI[0] ;
  wire [15:0]O_ram_ADDR;
  wire [15:0]O_ram_ADDR_OBUF;
  wire O_ram_NBH;
  wire O_ram_NBL;
  wire O_ram_NCS;
  wire O_ram_NCS_OBUF;
  wire O_ram_NRD;
  wire O_ram_NRD_OBUF;
  wire O_ram_NWR;
  wire O_ram_NWR_OBUF;
  wire O_t1;
  wire O_t1_BUFG;
  wire O_t2;
  wire O_t3;
  wire O_t4;
  wire [6:0]\R[0]_0 ;
  wire [7:7]\R[0]__55 ;
  wire \R[1]_7 ;
  wire \R[2]_6 ;
  wire \R[3]_5 ;
  wire \R[4]_4 ;
  wire \R[5]_3 ;
  wire \R[6]_2 ;
  wire \R[7]_1 ;
  wire [7:0]data1;
  wire [7:0]data2;
  wire [15:0]ram_IR;
  wire [7:0]refer_RTEMP;
  wire uut_alu_n_23;
  wire uut_fetch_n_13;
  wire uut_fetch_n_23;
  wire uut_fetch_n_24;
  wire uut_fetch_n_25;
  wire uut_fetch_n_26;
  wire uut_fetch_n_27;
  wire uut_fetch_n_28;
  wire uut_fetch_n_29;
  wire uut_fetch_n_30;
  wire uut_fetch_n_31;
  wire uut_fetch_n_32;
  wire uut_fetch_n_33;
  wire uut_fetch_n_34;
  wire uut_fetch_n_35;
  wire uut_fetch_n_36;
  wire uut_fetch_n_37;
  wire uut_fetch_n_38;
  wire uut_fetch_n_39;
  wire uut_fetch_n_40;
  wire uut_fetch_n_41;
  wire uut_fetch_n_42;
  wire uut_fetch_n_43;
  wire uut_fetch_n_44;
  wire uut_fetch_n_45;
  wire uut_fetch_n_46;
  wire uut_fetch_n_47;
  wire uut_fetch_n_48;
  wire uut_fetch_n_49;
  wire uut_fetch_n_50;
  wire uut_fetch_n_51;
  wire uut_fetch_n_52;
  wire uut_fetch_n_53;
  wire uut_fetch_n_54;
  wire uut_fetch_n_55;
  wire uut_fetch_n_56;
  wire uut_fetch_n_57;
  wire uut_fetch_n_58;
  wire uut_fetch_n_59;
  wire uut_fetch_n_60;
  wire uut_fetch_n_61;
  wire uut_fetch_n_62;
  wire uut_fetch_n_63;
  wire uut_fetch_n_64;
  wire uut_fetch_n_65;
  wire uut_fetch_n_66;
  wire uut_fetch_n_67;

initial begin
 $sdf_annotate("tb_cpu_time_impl.sdf",,,,"tool_control");
end
  IBUF \IO_ram_DATA_IBUF[10]_inst 
       (.I(IO_ram_DATA[10]),
        .O(IO_ram_DATA_IBUF[10]));
  IBUF \IO_ram_DATA_IBUF[12]_inst 
       (.I(IO_ram_DATA[12]),
        .O(IO_ram_DATA_IBUF[12]));
  IBUF \IO_ram_DATA_IBUF[13]_inst 
       (.I(IO_ram_DATA[13]),
        .O(IO_ram_DATA_IBUF[13]));
  IBUF \IO_ram_DATA_IBUF[14]_inst 
       (.I(IO_ram_DATA[14]),
        .O(IO_ram_DATA_IBUF[14]));
  IBUF \IO_ram_DATA_IBUF[15]_inst 
       (.I(IO_ram_DATA[15]),
        .O(IO_ram_DATA_IBUF[15]));
  IBUF \IO_ram_DATA_IBUF[8]_inst 
       (.I(IO_ram_DATA[8]),
        .O(IO_ram_DATA_IBUF[8]));
  IBUF \IO_ram_DATA_IBUF[9]_inst 
       (.I(IO_ram_DATA[9]),
        .O(IO_ram_DATA_IBUF[9]));
  IOBUF_UNIQ_BASE_ \IO_ram_DATA_IOBUF[0]_inst 
       (.I(IO_ram_DATA_OBUF[0]),
        .IO(IO_ram_DATA[0]),
        .O(IO_ram_DATA_IBUF__0[0]),
        .T(\IO_ram_DATA_TRI[0] ));
  IOBUF_HD1 \IO_ram_DATA_IOBUF[1]_inst 
       (.I(IO_ram_DATA_OBUF[1]),
        .IO(IO_ram_DATA[1]),
        .O(IO_ram_DATA_IBUF__0[1]),
        .T(\IO_ram_DATA_TRI[0] ));
  IOBUF_HD2 \IO_ram_DATA_IOBUF[2]_inst 
       (.I(IO_ram_DATA_OBUF[2]),
        .IO(IO_ram_DATA[2]),
        .O(IO_ram_DATA_IBUF__0[2]),
        .T(\IO_ram_DATA_TRI[0] ));
  IOBUF_HD3 \IO_ram_DATA_IOBUF[3]_inst 
       (.I(IO_ram_DATA_OBUF[3]),
        .IO(IO_ram_DATA[3]),
        .O(IO_ram_DATA_IBUF__0[3]),
        .T(\IO_ram_DATA_TRI[0] ));
  IOBUF_HD4 \IO_ram_DATA_IOBUF[4]_inst 
       (.I(IO_ram_DATA_OBUF[4]),
        .IO(IO_ram_DATA[4]),
        .O(IO_ram_DATA_IBUF__0[4]),
        .T(\IO_ram_DATA_TRI[0] ));
  IOBUF_HD5 \IO_ram_DATA_IOBUF[5]_inst 
       (.I(IO_ram_DATA_OBUF[5]),
        .IO(IO_ram_DATA[5]),
        .O(IO_ram_DATA_IBUF__0[5]),
        .T(\IO_ram_DATA_TRI[0] ));
  IOBUF_HD6 \IO_ram_DATA_IOBUF[6]_inst 
       (.I(IO_ram_DATA_OBUF[6]),
        .IO(IO_ram_DATA[6]),
        .O(IO_ram_DATA_IBUF__0[6]),
        .T(\IO_ram_DATA_TRI[0] ));
  IOBUF_HD7 \IO_ram_DATA_IOBUF[7]_inst 
       (.I(IO_ram_DATA_OBUF[7]),
        .IO(IO_ram_DATA[7]),
        .O(IO_ram_DATA_IBUF__0[7]),
        .T(\IO_ram_DATA_TRI[0] ));
  BUFG I_CLK_IBUF_BUFG_inst
       (.I(I_CLK_IBUF),
        .O(I_CLK_IBUF_BUFG));
  IBUF I_CLK_IBUF_inst
       (.I(I_CLK),
        .O(I_CLK_IBUF));
  IBUF \I_K0_IBUF[0]_inst 
       (.I(I_K0[0]),
        .O(I_K0_IBUF[0]));
  IBUF \I_K0_IBUF[1]_inst 
       (.I(I_K0[1]),
        .O(I_K0_IBUF[1]));
  IBUF \I_K0_IBUF[2]_inst 
       (.I(I_K0[2]),
        .O(I_K0_IBUF[2]));
  IBUF \I_K0_IBUF[3]_inst 
       (.I(I_K0[3]),
        .O(I_K0_IBUF[3]));
  IBUF \I_K0_IBUF[4]_inst 
       (.I(I_K0[4]),
        .O(I_K0_IBUF[4]));
  IBUF \I_K0_IBUF[5]_inst 
       (.I(I_K0[5]),
        .O(I_K0_IBUF[5]));
  IBUF \I_K0_IBUF[6]_inst 
       (.I(I_K0[6]),
        .O(I_K0_IBUF[6]));
  IBUF \I_K0_IBUF[7]_inst 
       (.I(I_K0[7]),
        .O(I_K0_IBUF[7]));
  IBUF \I_K1_IBUF[0]_inst 
       (.I(I_K1[0]),
        .O(I_K1_IBUF[0]));
  IBUF \I_K1_IBUF[1]_inst 
       (.I(I_K1[1]),
        .O(I_K1_IBUF[1]));
  IBUF \I_K1_IBUF[2]_inst 
       (.I(I_K1[2]),
        .O(I_K1_IBUF[2]));
  IBUF \I_K1_IBUF[3]_inst 
       (.I(I_K1[3]),
        .O(I_K1_IBUF[3]));
  IBUF \I_K1_IBUF[4]_inst 
       (.I(I_K1[4]),
        .O(I_K1_IBUF[4]));
  IBUF \I_K1_IBUF[5]_inst 
       (.I(I_K1[5]),
        .O(I_K1_IBUF[5]));
  IBUF \I_K1_IBUF[6]_inst 
       (.I(I_K1[6]),
        .O(I_K1_IBUF[6]));
  IBUF \I_K1_IBUF[7]_inst 
       (.I(I_K1[7]),
        .O(I_K1_IBUF[7]));
  IBUF \I_K2_IBUF[0]_inst 
       (.I(I_K2[0]),
        .O(I_K2_IBUF[0]));
  IBUF \I_K2_IBUF[1]_inst 
       (.I(I_K2[1]),
        .O(I_K2_IBUF[1]));
  IBUF \I_K2_IBUF[2]_inst 
       (.I(I_K2[2]),
        .O(I_K2_IBUF[2]));
  IBUF \I_K2_IBUF[3]_inst 
       (.I(I_K2[3]),
        .O(I_K2_IBUF[3]));
  IBUF \I_K2_IBUF[4]_inst 
       (.I(I_K2[4]),
        .O(I_K2_IBUF[4]));
  IBUF \I_K2_IBUF[5]_inst 
       (.I(I_K2[5]),
        .O(I_K2_IBUF[5]));
  IBUF \I_K2_IBUF[6]_inst 
       (.I(I_K2[6]),
        .O(I_K2_IBUF[6]));
  IBUF \I_K2_IBUF[7]_inst 
       (.I(I_K2[7]),
        .O(I_K2_IBUF[7]));
  IBUF \I_K3_IBUF[0]_inst 
       (.I(I_K3[0]),
        .O(I_K3_IBUF[0]));
  IBUF \I_K3_IBUF[1]_inst 
       (.I(I_K3[1]),
        .O(I_K3_IBUF[1]));
  IBUF \I_K3_IBUF[2]_inst 
       (.I(I_K3[2]),
        .O(I_K3_IBUF[2]));
  IBUF \I_K3_IBUF[3]_inst 
       (.I(I_K3[3]),
        .O(I_K3_IBUF[3]));
  IBUF \I_K3_IBUF[4]_inst 
       (.I(I_K3[4]),
        .O(I_K3_IBUF[4]));
  IBUF \I_K3_IBUF[5]_inst 
       (.I(I_K3[5]),
        .O(I_K3_IBUF[5]));
  IBUF \I_K3_IBUF[6]_inst 
       (.I(I_K3[6]),
        .O(I_K3_IBUF[6]));
  IBUF \I_K3_IBUF[7]_inst 
       (.I(I_K3[7]),
        .O(I_K3_IBUF[7]));
  IBUF I_RST_IBUF_inst
       (.I(I_RST),
        .O(I_RST_IBUF));
  OBUFT \O_S0_OBUFT[0]_inst 
       (.I(IO_ram_DATA_OBUF[0]),
        .O(O_S0[0]),
        .T(\O_S0_TRI[0] ));
  OBUFT \O_S0_OBUFT[1]_inst 
       (.I(IO_ram_DATA_OBUF[1]),
        .O(O_S0[1]),
        .T(\O_S0_TRI[0] ));
  OBUFT \O_S0_OBUFT[2]_inst 
       (.I(IO_ram_DATA_OBUF[2]),
        .O(O_S0[2]),
        .T(\O_S0_TRI[0] ));
  OBUFT \O_S0_OBUFT[3]_inst 
       (.I(IO_ram_DATA_OBUF[3]),
        .O(O_S0[3]),
        .T(\O_S0_TRI[0] ));
  OBUFT \O_S0_OBUFT[4]_inst 
       (.I(IO_ram_DATA_OBUF[4]),
        .O(O_S0[4]),
        .T(\O_S0_TRI[0] ));
  OBUFT \O_S0_OBUFT[5]_inst 
       (.I(IO_ram_DATA_OBUF[5]),
        .O(O_S0[5]),
        .T(\O_S0_TRI[0] ));
  OBUFT \O_S0_OBUFT[6]_inst 
       (.I(IO_ram_DATA_OBUF[6]),
        .O(O_S0[6]),
        .T(\O_S0_TRI[0] ));
  OBUFT \O_S0_OBUFT[7]_inst 
       (.I(IO_ram_DATA_OBUF[7]),
        .O(O_S0[7]),
        .T(\O_S0_TRI[0] ));
  OBUFT \O_S1_OBUFT[0]_inst 
       (.I(IO_ram_DATA_OBUF[0]),
        .O(O_S1[0]),
        .T(\O_S1_TRI[0] ));
  OBUFT \O_S1_OBUFT[1]_inst 
       (.I(IO_ram_DATA_OBUF[1]),
        .O(O_S1[1]),
        .T(\O_S1_TRI[0] ));
  OBUFT \O_S1_OBUFT[2]_inst 
       (.I(IO_ram_DATA_OBUF[2]),
        .O(O_S1[2]),
        .T(\O_S1_TRI[0] ));
  OBUFT \O_S1_OBUFT[3]_inst 
       (.I(IO_ram_DATA_OBUF[3]),
        .O(O_S1[3]),
        .T(\O_S1_TRI[0] ));
  OBUFT \O_S1_OBUFT[4]_inst 
       (.I(IO_ram_DATA_OBUF[4]),
        .O(O_S1[4]),
        .T(\O_S1_TRI[0] ));
  OBUFT \O_S1_OBUFT[5]_inst 
       (.I(IO_ram_DATA_OBUF[5]),
        .O(O_S1[5]),
        .T(\O_S1_TRI[0] ));
  OBUFT \O_S1_OBUFT[6]_inst 
       (.I(IO_ram_DATA_OBUF[6]),
        .O(O_S1[6]),
        .T(\O_S1_TRI[0] ));
  OBUFT \O_S1_OBUFT[7]_inst 
       (.I(IO_ram_DATA_OBUF[7]),
        .O(O_S1[7]),
        .T(\O_S1_TRI[0] ));
  OBUFT \O_S2_OBUFT[0]_inst 
       (.I(IO_ram_DATA_OBUF[0]),
        .O(O_S2[0]),
        .T(\O_S2_TRI[0] ));
  OBUFT \O_S2_OBUFT[1]_inst 
       (.I(IO_ram_DATA_OBUF[1]),
        .O(O_S2[1]),
        .T(\O_S2_TRI[0] ));
  OBUFT \O_S2_OBUFT[2]_inst 
       (.I(IO_ram_DATA_OBUF[2]),
        .O(O_S2[2]),
        .T(\O_S2_TRI[0] ));
  OBUFT \O_S2_OBUFT[3]_inst 
       (.I(IO_ram_DATA_OBUF[3]),
        .O(O_S2[3]),
        .T(\O_S2_TRI[0] ));
  OBUFT \O_S2_OBUFT[4]_inst 
       (.I(IO_ram_DATA_OBUF[4]),
        .O(O_S2[4]),
        .T(\O_S2_TRI[0] ));
  OBUFT \O_S2_OBUFT[5]_inst 
       (.I(IO_ram_DATA_OBUF[5]),
        .O(O_S2[5]),
        .T(\O_S2_TRI[0] ));
  OBUFT \O_S2_OBUFT[6]_inst 
       (.I(IO_ram_DATA_OBUF[6]),
        .O(O_S2[6]),
        .T(\O_S2_TRI[0] ));
  OBUFT \O_S2_OBUFT[7]_inst 
       (.I(IO_ram_DATA_OBUF[7]),
        .O(O_S2[7]),
        .T(\O_S2_TRI[0] ));
  OBUFT \O_S3_OBUFT[0]_inst 
       (.I(IO_ram_DATA_OBUF[0]),
        .O(O_S3[0]),
        .T(\O_S3_TRI[0] ));
  OBUFT \O_S3_OBUFT[1]_inst 
       (.I(IO_ram_DATA_OBUF[1]),
        .O(O_S3[1]),
        .T(\O_S3_TRI[0] ));
  OBUFT \O_S3_OBUFT[2]_inst 
       (.I(IO_ram_DATA_OBUF[2]),
        .O(O_S3[2]),
        .T(\O_S3_TRI[0] ));
  OBUFT \O_S3_OBUFT[3]_inst 
       (.I(IO_ram_DATA_OBUF[3]),
        .O(O_S3[3]),
        .T(\O_S3_TRI[0] ));
  OBUFT \O_S3_OBUFT[4]_inst 
       (.I(IO_ram_DATA_OBUF[4]),
        .O(O_S3[4]),
        .T(\O_S3_TRI[0] ));
  OBUFT \O_S3_OBUFT[5]_inst 
       (.I(IO_ram_DATA_OBUF[5]),
        .O(O_S3[5]),
        .T(\O_S3_TRI[0] ));
  OBUFT \O_S3_OBUFT[6]_inst 
       (.I(IO_ram_DATA_OBUF[6]),
        .O(O_S3[6]),
        .T(\O_S3_TRI[0] ));
  OBUFT \O_S3_OBUFT[7]_inst 
       (.I(IO_ram_DATA_OBUF[7]),
        .O(O_S3[7]),
        .T(\O_S3_TRI[0] ));
  OBUF \O_ram_ADDR_OBUF[0]_inst 
       (.I(O_ram_ADDR_OBUF[0]),
        .O(O_ram_ADDR[0]));
  OBUF \O_ram_ADDR_OBUF[10]_inst 
       (.I(O_ram_ADDR_OBUF[10]),
        .O(O_ram_ADDR[10]));
  OBUF \O_ram_ADDR_OBUF[11]_inst 
       (.I(O_ram_ADDR_OBUF[11]),
        .O(O_ram_ADDR[11]));
  OBUF \O_ram_ADDR_OBUF[12]_inst 
       (.I(O_ram_ADDR_OBUF[12]),
        .O(O_ram_ADDR[12]));
  OBUF \O_ram_ADDR_OBUF[13]_inst 
       (.I(O_ram_ADDR_OBUF[13]),
        .O(O_ram_ADDR[13]));
  OBUF \O_ram_ADDR_OBUF[14]_inst 
       (.I(O_ram_ADDR_OBUF[14]),
        .O(O_ram_ADDR[14]));
  OBUF \O_ram_ADDR_OBUF[15]_inst 
       (.I(O_ram_ADDR_OBUF[15]),
        .O(O_ram_ADDR[15]));
  OBUF \O_ram_ADDR_OBUF[1]_inst 
       (.I(O_ram_ADDR_OBUF[1]),
        .O(O_ram_ADDR[1]));
  OBUF \O_ram_ADDR_OBUF[2]_inst 
       (.I(O_ram_ADDR_OBUF[2]),
        .O(O_ram_ADDR[2]));
  OBUF \O_ram_ADDR_OBUF[3]_inst 
       (.I(O_ram_ADDR_OBUF[3]),
        .O(O_ram_ADDR[3]));
  OBUF \O_ram_ADDR_OBUF[4]_inst 
       (.I(O_ram_ADDR_OBUF[4]),
        .O(O_ram_ADDR[4]));
  OBUF \O_ram_ADDR_OBUF[5]_inst 
       (.I(O_ram_ADDR_OBUF[5]),
        .O(O_ram_ADDR[5]));
  OBUF \O_ram_ADDR_OBUF[6]_inst 
       (.I(O_ram_ADDR_OBUF[6]),
        .O(O_ram_ADDR[6]));
  OBUF \O_ram_ADDR_OBUF[7]_inst 
       (.I(O_ram_ADDR_OBUF[7]),
        .O(O_ram_ADDR[7]));
  OBUF \O_ram_ADDR_OBUF[8]_inst 
       (.I(O_ram_ADDR_OBUF[8]),
        .O(O_ram_ADDR[8]));
  OBUF \O_ram_ADDR_OBUF[9]_inst 
       (.I(O_ram_ADDR_OBUF[9]),
        .O(O_ram_ADDR[9]));
  OBUF O_ram_NBH_OBUF_inst
       (.I(1'b0),
        .O(O_ram_NBH));
  OBUF O_ram_NBL_OBUF_inst
       (.I(1'b0),
        .O(O_ram_NBL));
  OBUF O_ram_NCS_OBUF_inst
       (.I(O_ram_NCS_OBUF),
        .O(O_ram_NCS));
  OBUF O_ram_NRD_OBUF_inst
       (.I(O_ram_NRD_OBUF),
        .O(O_ram_NRD));
  OBUF O_ram_NWR_OBUF_inst
       (.I(O_ram_NWR_OBUF),
        .O(O_ram_NWR));
  BUFG O_t1_BUFG_inst
       (.I(O_t1),
        .O(O_t1_BUFG));
  alu uut_alu
       (.D({uut_fetch_n_42,uut_fetch_n_43,uut_fetch_n_44,uut_fetch_n_45,uut_fetch_n_46,uut_fetch_n_47,uut_fetch_n_48,uut_fetch_n_49}),
        .E(uut_fetch_n_41),
        .\O_S0[4] (IO_ram_DATA_OBUF),
        .\O_ram_ADDR[0] (uut_alu_n_23),
        .\O_ram_ADDR[13] (O_ADDR),
        .Q({O_IR[12],O_IR[10:0]}),
        .\R[0]_0 (\R[0]_0 ),
        .\R[0]__55 (\R[0]__55 ),
        .data1(data1),
        .data2(data2),
        .tt2_reg(uut_fetch_n_50),
        .tt2_reg_0(O_REG_new),
        .tt4_reg(uut_fetch_n_13),
        .tt4_reg_0(\R[1]_7 ),
        .tt4_reg_1(\R[2]_6 ),
        .tt4_reg_2(\R[3]_5 ),
        .tt4_reg_3(\R[4]_4 ),
        .tt4_reg_4(\R[5]_3 ),
        .tt4_reg_5(\R[6]_2 ),
        .tt4_reg_6(\R[7]_1 ));
  fetch uut_fetch
       (.AR(I_RST_IBUF),
        .D({uut_fetch_n_23,uut_fetch_n_24,uut_fetch_n_25,uut_fetch_n_26,uut_fetch_n_27,uut_fetch_n_28,uut_fetch_n_29,uut_fetch_n_30}),
        .E(O_RTEMP0),
        .\IO_ram_DATA_TRI[0] (\IO_ram_DATA_TRI[0] ),
        .I_K0_IBUF(I_K0_IBUF),
        .I_K1_IBUF(I_K1_IBUF),
        .I_K2_IBUF(I_K2_IBUF),
        .I_K3_IBUF(I_K3_IBUF),
        .\O_S0[4] ({uut_fetch_n_42,uut_fetch_n_43,uut_fetch_n_44,uut_fetch_n_45,uut_fetch_n_46,uut_fetch_n_47,uut_fetch_n_48,uut_fetch_n_49}),
        .\O_S0_TRI[0] (\O_S0_TRI[0] ),
        .\O_S1_TRI[0] (\O_S1_TRI[0] ),
        .\O_S2_TRI[0] (\O_S2_TRI[0] ),
        .\O_S3_TRI[0] (\O_S3_TRI[0] ),
        .\O_ram_ADDR[0] (uut_fetch_n_13),
        .\O_ram_ADDR[0]_0 (uut_fetch_n_31),
        .\O_ram_ADDR[0]_1 ({uut_fetch_n_32,uut_fetch_n_33,uut_fetch_n_34,uut_fetch_n_35,uut_fetch_n_36,uut_fetch_n_37,uut_fetch_n_38,uut_fetch_n_39}),
        .\O_ram_ADDR[0]_2 (uut_fetch_n_40),
        .\O_ram_ADDR[0]_3 (uut_fetch_n_41),
        .\O_ram_ADDR[0]_4 (uut_fetch_n_50),
        .\O_ram_ADDR[0]_5 (uut_fetch_n_67),
        .\O_ram_ADDR[15] ({uut_fetch_n_51,uut_fetch_n_52,uut_fetch_n_53,uut_fetch_n_54,uut_fetch_n_55,uut_fetch_n_56,uut_fetch_n_57,uut_fetch_n_58,uut_fetch_n_59,uut_fetch_n_60,uut_fetch_n_61,uut_fetch_n_62,uut_fetch_n_63,uut_fetch_n_64,uut_fetch_n_65,uut_fetch_n_66}),
        .\O_ram_ADDR[4] (\R[1]_7 ),
        .\O_ram_ADDR[4]_0 (\R[2]_6 ),
        .\O_ram_ADDR[4]_1 (\R[3]_5 ),
        .\O_ram_ADDR[4]_2 (\R[4]_4 ),
        .\O_ram_ADDR[4]_3 (\R[5]_3 ),
        .\O_ram_ADDR[4]_4 (\R[6]_2 ),
        .\O_ram_ADDR[4]_5 (\R[7]_1 ),
        .O_ram_NCS_OBUF(O_ram_NCS_OBUF),
        .O_ram_NRD_OBUF(O_ram_NRD_OBUF),
        .O_ram_NWR_OBUF(O_ram_NWR_OBUF),
        .O_t1(O_t1),
        .O_t2(O_t2),
        .O_t3(O_t3),
        .O_t4(O_t4),
        .Q({O_IR[12],O_IR[10:0]}),
        .\R[0]_0 (\R[0]_0 ),
        .\R[0]__55 (\R[0]__55 ),
        .data1(data1),
        .data2(data2),
        .tt1_reg(uut_alu_n_23),
        .tt1_reg_0({ram_IR[15:12],ram_IR[10:0]}),
        .tt1_reg_1(O_t1_BUFG),
        .tt2_reg(IO_ram_DATA_OBUF),
        .tt2_reg_0(O_ADDR),
        .tt3_reg(O_RTEMP),
        .tt3_reg_0(refer_RTEMP));
  mod4 uut_mod4
       (.AR(I_RST_IBUF),
        .E(O_t1_BUFG),
        .I_CLK_IBUF_BUFG(I_CLK_IBUF_BUFG),
        .O_t1(O_t1),
        .O_t2(O_t2),
        .O_t3(O_t3),
        .O_t4(O_t4));
  ram_ctrl uut_ram_ctrl
       (.D({IO_ram_DATA_IBUF[15:12],IO_ram_DATA_IBUF[10:8],IO_ram_DATA_IBUF__0}),
        .E(O_t1_BUFG),
        .\O_ram_ADDR[0] (O_RTEMP),
        .\O_ram_ADDR[15] (O_ram_ADDR_OBUF),
        .Q({ram_IR[15:12],ram_IR[10:0]}),
        .tt1_reg({uut_fetch_n_51,uut_fetch_n_52,uut_fetch_n_53,uut_fetch_n_54,uut_fetch_n_55,uut_fetch_n_56,uut_fetch_n_57,uut_fetch_n_58,uut_fetch_n_59,uut_fetch_n_60,uut_fetch_n_61,uut_fetch_n_62,uut_fetch_n_63,uut_fetch_n_64,uut_fetch_n_65,uut_fetch_n_66}),
        .tt3_reg(O_RTEMP0),
        .tt3_reg_0(uut_fetch_n_67));
  refer uut_refer
       (.D({uut_fetch_n_23,uut_fetch_n_24,uut_fetch_n_25,uut_fetch_n_26,uut_fetch_n_27,uut_fetch_n_28,uut_fetch_n_29,uut_fetch_n_30}),
        .E(uut_fetch_n_31),
        .Q(refer_RTEMP));
  write_back uut_write_back
       (.D({uut_fetch_n_32,uut_fetch_n_33,uut_fetch_n_34,uut_fetch_n_35,uut_fetch_n_36,uut_fetch_n_37,uut_fetch_n_38,uut_fetch_n_39}),
        .E(uut_fetch_n_40),
        .Q(O_REG_new));
endmodule

module fetch
   (O_ram_NRD_OBUF,
    Q,
    \O_ram_ADDR[0] ,
    \O_ram_ADDR[4] ,
    \O_ram_ADDR[4]_0 ,
    \O_ram_ADDR[4]_1 ,
    \O_ram_ADDR[4]_2 ,
    \O_ram_ADDR[4]_3 ,
    \O_ram_ADDR[4]_4 ,
    \O_ram_ADDR[4]_5 ,
    O_ram_NWR_OBUF,
    E,
    D,
    \O_ram_ADDR[0]_0 ,
    \O_ram_ADDR[0]_1 ,
    \O_ram_ADDR[0]_2 ,
    \O_ram_ADDR[0]_3 ,
    \O_S0[4] ,
    \O_ram_ADDR[0]_4 ,
    \O_ram_ADDR[15] ,
    \O_ram_ADDR[0]_5 ,
    O_ram_NCS_OBUF,
    \O_S0_TRI[0] ,
    \O_S1_TRI[0] ,
    \O_S2_TRI[0] ,
    \O_S3_TRI[0] ,
    \IO_ram_DATA_TRI[0] ,
    O_t1,
    O_t3,
    tt3_reg,
    tt2_reg,
    tt3_reg_0,
    O_t4,
    O_t2,
    I_K1_IBUF,
    I_K0_IBUF,
    I_K3_IBUF,
    I_K2_IBUF,
    data1,
    \R[0]__55 ,
    \R[0]_0 ,
    data2,
    tt2_reg_0,
    tt1_reg,
    tt1_reg_0,
    tt1_reg_1,
    AR);
  output O_ram_NRD_OBUF;
  output [11:0]Q;
  output [0:0]\O_ram_ADDR[0] ;
  output [0:0]\O_ram_ADDR[4] ;
  output [0:0]\O_ram_ADDR[4]_0 ;
  output [0:0]\O_ram_ADDR[4]_1 ;
  output [0:0]\O_ram_ADDR[4]_2 ;
  output [0:0]\O_ram_ADDR[4]_3 ;
  output [0:0]\O_ram_ADDR[4]_4 ;
  output [0:0]\O_ram_ADDR[4]_5 ;
  output O_ram_NWR_OBUF;
  output [0:0]E;
  output [7:0]D;
  output [0:0]\O_ram_ADDR[0]_0 ;
  output [7:0]\O_ram_ADDR[0]_1 ;
  output [0:0]\O_ram_ADDR[0]_2 ;
  output [0:0]\O_ram_ADDR[0]_3 ;
  output [7:0]\O_S0[4] ;
  output [0:0]\O_ram_ADDR[0]_4 ;
  output [15:0]\O_ram_ADDR[15] ;
  output [0:0]\O_ram_ADDR[0]_5 ;
  output O_ram_NCS_OBUF;
  output \O_S0_TRI[0] ;
  output \O_S1_TRI[0] ;
  output \O_S2_TRI[0] ;
  output \O_S3_TRI[0] ;
  output \IO_ram_DATA_TRI[0] ;
  input O_t1;
  input O_t3;
  input [7:0]tt3_reg;
  input [7:0]tt2_reg;
  input [7:0]tt3_reg_0;
  input O_t4;
  input O_t2;
  input [7:0]I_K1_IBUF;
  input [7:0]I_K0_IBUF;
  input [7:0]I_K3_IBUF;
  input [7:0]I_K2_IBUF;
  input [7:0]data1;
  input [0:0]\R[0]__55 ;
  input [6:0]\R[0]_0 ;
  input [7:0]data2;
  input [15:0]tt2_reg_0;
  input tt1_reg;
  input [14:0]tt1_reg_0;
  input [0:0]tt1_reg_1;
  input [0:0]AR;

  wire [0:0]AR;
  wire [7:0]D;
  wire [0:0]E;
  wire \IO_ram_DATA_TRI[0] ;
  wire [7:0]I_K0_IBUF;
  wire [7:0]I_K1_IBUF;
  wire [7:0]I_K2_IBUF;
  wire [7:0]I_K3_IBUF;
  wire \O_ALU_reg[0]_i_2_n_0 ;
  wire \O_ALU_reg[1]_i_2_n_0 ;
  wire \O_ALU_reg[2]_i_2_n_0 ;
  wire \O_ALU_reg[3]_i_2_n_0 ;
  wire \O_ALU_reg[4]_i_2_n_0 ;
  wire \O_ALU_reg[5]_i_2_n_0 ;
  wire \O_ALU_reg[6]_i_2_n_0 ;
  wire \O_ALU_reg[7]_i_3_n_0 ;
  wire \O_ALU_reg[7]_i_5_n_0 ;
  wire \O_ALU_reg[7]_i_6_n_0 ;
  wire [15:13]O_IR;
  wire [15:0]O_PC;
  wire O_PC_update;
  wire O_RD_ram;
  wire \O_RTEMP_reg[0]_i_3_n_0 ;
  wire \O_RTEMP_reg[1]_i_3_n_0 ;
  wire \O_RTEMP_reg[2]_i_3_n_0 ;
  wire \O_RTEMP_reg[3]_i_3_n_0 ;
  wire \O_RTEMP_reg[4]_i_3_n_0 ;
  wire \O_RTEMP_reg[5]_i_3_n_0 ;
  wire \O_RTEMP_reg[6]_i_3_n_0 ;
  wire \O_RTEMP_reg[7]_i_5_n_0 ;
  wire \O_RTEMP_reg[7]_i_6_n_0 ;
  wire [7:0]\O_S0[4] ;
  wire \O_S0_OBUFT[7]_inst_i_3_n_0 ;
  wire \O_S0_TRI[0] ;
  wire \O_S1_OBUFT[7]_inst_i_3_n_0 ;
  wire \O_S1_TRI[0] ;
  wire \O_S2_TRI[0] ;
  wire \O_S3_OBUFT[7]_inst_i_3_n_0 ;
  wire \O_S3_TRI[0] ;
  wire [0:0]\O_ram_ADDR[0] ;
  wire [0:0]\O_ram_ADDR[0]_0 ;
  wire [7:0]\O_ram_ADDR[0]_1 ;
  wire [0:0]\O_ram_ADDR[0]_2 ;
  wire [0:0]\O_ram_ADDR[0]_3 ;
  wire [0:0]\O_ram_ADDR[0]_4 ;
  wire [0:0]\O_ram_ADDR[0]_5 ;
  wire [15:0]\O_ram_ADDR[15] ;
  wire [0:0]\O_ram_ADDR[4] ;
  wire [0:0]\O_ram_ADDR[4]_0 ;
  wire [0:0]\O_ram_ADDR[4]_1 ;
  wire [0:0]\O_ram_ADDR[4]_2 ;
  wire [0:0]\O_ram_ADDR[4]_3 ;
  wire [0:0]\O_ram_ADDR[4]_4 ;
  wire [0:0]\O_ram_ADDR[4]_5 ;
  wire O_ram_NCS_OBUF;
  wire O_ram_NRD_OBUF;
  wire O_ram_NWR_OBUF;
  wire O_t1;
  wire O_t2;
  wire O_t3;
  wire O_t4;
  wire \PC_reg[0]_i_1_n_0 ;
  wire \PC_reg[10]_i_1_n_0 ;
  wire \PC_reg[11]_i_1_n_0 ;
  wire \PC_reg[12]_i_1_n_0 ;
  wire \PC_reg[13]_i_1_n_0 ;
  wire \PC_reg[14]_i_1_n_0 ;
  wire \PC_reg[15]_i_1_n_0 ;
  wire \PC_reg[15]_i_2_n_0 ;
  wire \PC_reg[1]_i_1_n_0 ;
  wire \PC_reg[2]_i_1_n_0 ;
  wire \PC_reg[3]_i_1_n_0 ;
  wire \PC_reg[4]_i_1_n_0 ;
  wire \PC_reg[5]_i_1_n_0 ;
  wire \PC_reg[6]_i_1_n_0 ;
  wire \PC_reg[7]_i_1_n_0 ;
  wire \PC_reg[8]_i_1_n_0 ;
  wire \PC_reg[9]_i_1_n_0 ;
  wire [15:0]PC_t;
  wire [11:0]Q;
  wire [6:0]\R[0]_0 ;
  wire [0:0]\R[0]__55 ;
  wire [7:0]data1;
  wire [7:0]data2;
  wire [7:0]io_RTEMP;
  wire [15:0]plusOp;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry_n_0;
  wire tt1_reg;
  wire [14:0]tt1_reg_0;
  wire [0:0]tt1_reg_1;
  wire [7:0]tt2_reg;
  wire [15:0]tt2_reg_0;
  wire [7:0]tt3_reg;
  wire [7:0]tt3_reg_0;
  wire \uut_write_back/O_REG_addr1__2 ;
  wire [2:0]NLW_plusOp_carry_CO_UNCONNECTED;
  wire [2:0]NLW_plusOp_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_plusOp_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_plusOp_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__2_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFDFFF)) 
    \IO_ram_DATA_IOBUF[7]_inst_i_2 
       (.I0(O_t3),
        .I1(O_IR[15]),
        .I2(O_IR[14]),
        .I3(O_IR[13]),
        .I4(Q[11]),
        .O(\IO_ram_DATA_TRI[0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \IR_reg[0] 
       (.CLR(1'b0),
        .D(tt1_reg_0[0]),
        .G(tt1_reg_1),
        .GE(1'b1),
        .Q(Q[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \IR_reg[10] 
       (.CLR(1'b0),
        .D(tt1_reg_0[10]),
        .G(tt1_reg_1),
        .GE(1'b1),
        .Q(Q[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \IR_reg[12] 
       (.CLR(1'b0),
        .D(tt1_reg_0[11]),
        .G(tt1_reg_1),
        .GE(1'b1),
        .Q(Q[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \IR_reg[13] 
       (.CLR(1'b0),
        .D(tt1_reg_0[12]),
        .G(tt1_reg_1),
        .GE(1'b1),
        .Q(O_IR[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \IR_reg[14] 
       (.CLR(1'b0),
        .D(tt1_reg_0[13]),
        .G(tt1_reg_1),
        .GE(1'b1),
        .Q(O_IR[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \IR_reg[15] 
       (.CLR(1'b0),
        .D(tt1_reg_0[14]),
        .G(tt1_reg_1),
        .GE(1'b1),
        .Q(O_IR[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \IR_reg[1] 
       (.CLR(1'b0),
        .D(tt1_reg_0[1]),
        .G(tt1_reg_1),
        .GE(1'b1),
        .Q(Q[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \IR_reg[2] 
       (.CLR(1'b0),
        .D(tt1_reg_0[2]),
        .G(tt1_reg_1),
        .GE(1'b1),
        .Q(Q[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \IR_reg[3] 
       (.CLR(1'b0),
        .D(tt1_reg_0[3]),
        .G(tt1_reg_1),
        .GE(1'b1),
        .Q(Q[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \IR_reg[4] 
       (.CLR(1'b0),
        .D(tt1_reg_0[4]),
        .G(tt1_reg_1),
        .GE(1'b1),
        .Q(Q[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \IR_reg[5] 
       (.CLR(1'b0),
        .D(tt1_reg_0[5]),
        .G(tt1_reg_1),
        .GE(1'b1),
        .Q(Q[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \IR_reg[6] 
       (.CLR(1'b0),
        .D(tt1_reg_0[6]),
        .G(tt1_reg_1),
        .GE(1'b1),
        .Q(Q[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \IR_reg[7] 
       (.CLR(1'b0),
        .D(tt1_reg_0[7]),
        .G(tt1_reg_1),
        .GE(1'b1),
        .Q(Q[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \IR_reg[8] 
       (.CLR(1'b0),
        .D(tt1_reg_0[8]),
        .G(tt1_reg_1),
        .GE(1'b1),
        .Q(Q[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \IR_reg[9] 
       (.CLR(1'b0),
        .D(tt1_reg_0[9]),
        .G(tt1_reg_1),
        .GE(1'b1),
        .Q(Q[9]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \O_ADDR_reg[0]_i_1 
       (.I0(O_PC[0]),
        .I1(tt2_reg_0[0]),
        .I2(O_t1),
        .O(\O_ram_ADDR[15] [0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \O_ADDR_reg[10]_i_1 
       (.I0(O_PC[10]),
        .I1(tt2_reg_0[10]),
        .I2(O_t1),
        .O(\O_ram_ADDR[15] [10]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \O_ADDR_reg[11]_i_1 
       (.I0(O_PC[11]),
        .I1(tt2_reg_0[11]),
        .I2(O_t1),
        .O(\O_ram_ADDR[15] [11]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \O_ADDR_reg[12]_i_1 
       (.I0(O_PC[12]),
        .I1(tt2_reg_0[12]),
        .I2(O_t1),
        .O(\O_ram_ADDR[15] [12]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \O_ADDR_reg[13]_i_1 
       (.I0(O_PC[13]),
        .I1(tt2_reg_0[13]),
        .I2(O_t1),
        .O(\O_ram_ADDR[15] [13]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \O_ADDR_reg[14]_i_1 
       (.I0(O_PC[14]),
        .I1(tt2_reg_0[14]),
        .I2(O_t1),
        .O(\O_ram_ADDR[15] [14]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4004)) 
    \O_ADDR_reg[15]_i_1 
       (.I0(O_IR[15]),
        .I1(O_t2),
        .I2(O_IR[13]),
        .I3(O_IR[14]),
        .O(\O_ram_ADDR[0]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \O_ADDR_reg[15]_i_1__0 
       (.I0(O_PC[15]),
        .I1(tt2_reg_0[15]),
        .I2(O_t1),
        .O(\O_ram_ADDR[15] [15]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \O_ADDR_reg[15]_i_2 
       (.I0(O_t3),
        .I1(O_IR[15]),
        .I2(O_IR[14]),
        .I3(O_IR[13]),
        .I4(O_t1),
        .O(\O_ram_ADDR[0]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \O_ADDR_reg[1]_i_1 
       (.I0(O_PC[1]),
        .I1(tt2_reg_0[1]),
        .I2(O_t1),
        .O(\O_ram_ADDR[15] [1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \O_ADDR_reg[2]_i_1 
       (.I0(O_PC[2]),
        .I1(tt2_reg_0[2]),
        .I2(O_t1),
        .O(\O_ram_ADDR[15] [2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \O_ADDR_reg[3]_i_1 
       (.I0(O_PC[3]),
        .I1(tt2_reg_0[3]),
        .I2(O_t1),
        .O(\O_ram_ADDR[15] [3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \O_ADDR_reg[4]_i_1 
       (.I0(O_PC[4]),
        .I1(tt2_reg_0[4]),
        .I2(O_t1),
        .O(\O_ram_ADDR[15] [4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \O_ADDR_reg[5]_i_1 
       (.I0(O_PC[5]),
        .I1(tt2_reg_0[5]),
        .I2(O_t1),
        .O(\O_ram_ADDR[15] [5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \O_ADDR_reg[6]_i_1 
       (.I0(O_PC[6]),
        .I1(tt2_reg_0[6]),
        .I2(O_t1),
        .O(\O_ram_ADDR[15] [6]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \O_ADDR_reg[7]_i_1 
       (.I0(O_PC[7]),
        .I1(tt2_reg_0[7]),
        .I2(O_t1),
        .O(\O_ram_ADDR[15] [7]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \O_ADDR_reg[8]_i_1 
       (.I0(O_PC[8]),
        .I1(tt2_reg_0[8]),
        .I2(O_t1),
        .O(\O_ram_ADDR[15] [8]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \O_ADDR_reg[9]_i_1 
       (.I0(O_PC[9]),
        .I1(tt2_reg_0[9]),
        .I2(O_t1),
        .O(\O_ram_ADDR[15] [9]));
  LUT6 #(
    .INIT(64'hFF55FF55FF40EA40)) 
    \O_ALU_reg[0]_i_1 
       (.I0(O_IR[15]),
        .I1(data1[0]),
        .I2(\O_ALU_reg[7]_i_3_n_0 ),
        .I3(\R[0]_0 [0]),
        .I4(\O_ALU_reg[7]_i_5_n_0 ),
        .I5(\O_ALU_reg[0]_i_2_n_0 ),
        .O(\O_S0[4] [0]));
  LUT6 #(
    .INIT(64'h0300800000008000)) 
    \O_ALU_reg[0]_i_2 
       (.I0(data2[0]),
        .I1(Q[11]),
        .I2(O_IR[13]),
        .I3(O_t2),
        .I4(O_IR[14]),
        .I5(Q[0]),
        .O(\O_ALU_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FF55FF40EA40)) 
    \O_ALU_reg[1]_i_1 
       (.I0(O_IR[15]),
        .I1(data1[1]),
        .I2(\O_ALU_reg[7]_i_3_n_0 ),
        .I3(\R[0]_0 [1]),
        .I4(\O_ALU_reg[7]_i_5_n_0 ),
        .I5(\O_ALU_reg[1]_i_2_n_0 ),
        .O(\O_S0[4] [1]));
  LUT6 #(
    .INIT(64'h0300800000008000)) 
    \O_ALU_reg[1]_i_2 
       (.I0(data2[1]),
        .I1(Q[11]),
        .I2(O_IR[13]),
        .I3(O_t2),
        .I4(O_IR[14]),
        .I5(Q[1]),
        .O(\O_ALU_reg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FF55FF40EA40)) 
    \O_ALU_reg[2]_i_1 
       (.I0(O_IR[15]),
        .I1(data1[2]),
        .I2(\O_ALU_reg[7]_i_3_n_0 ),
        .I3(\R[0]_0 [2]),
        .I4(\O_ALU_reg[7]_i_5_n_0 ),
        .I5(\O_ALU_reg[2]_i_2_n_0 ),
        .O(\O_S0[4] [2]));
  LUT6 #(
    .INIT(64'h0300800000008000)) 
    \O_ALU_reg[2]_i_2 
       (.I0(data2[2]),
        .I1(Q[11]),
        .I2(O_IR[13]),
        .I3(O_t2),
        .I4(O_IR[14]),
        .I5(Q[2]),
        .O(\O_ALU_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FF55FF40EA40)) 
    \O_ALU_reg[3]_i_1 
       (.I0(O_IR[15]),
        .I1(data1[3]),
        .I2(\O_ALU_reg[7]_i_3_n_0 ),
        .I3(\R[0]_0 [3]),
        .I4(\O_ALU_reg[7]_i_5_n_0 ),
        .I5(\O_ALU_reg[3]_i_2_n_0 ),
        .O(\O_S0[4] [3]));
  LUT6 #(
    .INIT(64'h0300800000008000)) 
    \O_ALU_reg[3]_i_2 
       (.I0(data2[3]),
        .I1(Q[11]),
        .I2(O_IR[13]),
        .I3(O_t2),
        .I4(O_IR[14]),
        .I5(Q[3]),
        .O(\O_ALU_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FF55FF40EA40)) 
    \O_ALU_reg[4]_i_1 
       (.I0(O_IR[15]),
        .I1(data1[4]),
        .I2(\O_ALU_reg[7]_i_3_n_0 ),
        .I3(\R[0]_0 [4]),
        .I4(\O_ALU_reg[7]_i_5_n_0 ),
        .I5(\O_ALU_reg[4]_i_2_n_0 ),
        .O(\O_S0[4] [4]));
  LUT6 #(
    .INIT(64'h0300800000008000)) 
    \O_ALU_reg[4]_i_2 
       (.I0(data2[4]),
        .I1(Q[11]),
        .I2(O_IR[13]),
        .I3(O_t2),
        .I4(O_IR[14]),
        .I5(Q[4]),
        .O(\O_ALU_reg[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FF55FF40EA40)) 
    \O_ALU_reg[5]_i_1 
       (.I0(O_IR[15]),
        .I1(data1[5]),
        .I2(\O_ALU_reg[7]_i_3_n_0 ),
        .I3(\R[0]_0 [5]),
        .I4(\O_ALU_reg[7]_i_5_n_0 ),
        .I5(\O_ALU_reg[5]_i_2_n_0 ),
        .O(\O_S0[4] [5]));
  LUT6 #(
    .INIT(64'h0300800000008000)) 
    \O_ALU_reg[5]_i_2 
       (.I0(data2[5]),
        .I1(Q[11]),
        .I2(O_IR[13]),
        .I3(O_t2),
        .I4(O_IR[14]),
        .I5(Q[5]),
        .O(\O_ALU_reg[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FF55FF40EA40)) 
    \O_ALU_reg[6]_i_1 
       (.I0(O_IR[15]),
        .I1(data1[6]),
        .I2(\O_ALU_reg[7]_i_3_n_0 ),
        .I3(\R[0]_0 [6]),
        .I4(\O_ALU_reg[7]_i_5_n_0 ),
        .I5(\O_ALU_reg[6]_i_2_n_0 ),
        .O(\O_S0[4] [6]));
  LUT6 #(
    .INIT(64'h0300800000008000)) 
    \O_ALU_reg[6]_i_2 
       (.I0(data2[6]),
        .I1(Q[11]),
        .I2(O_IR[13]),
        .I3(O_t2),
        .I4(O_IR[14]),
        .I5(Q[6]),
        .O(\O_ALU_reg[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FF55FF40EA40)) 
    \O_ALU_reg[7]_i_1 
       (.I0(O_IR[15]),
        .I1(data1[7]),
        .I2(\O_ALU_reg[7]_i_3_n_0 ),
        .I3(\R[0]__55 ),
        .I4(\O_ALU_reg[7]_i_5_n_0 ),
        .I5(\O_ALU_reg[7]_i_6_n_0 ),
        .O(\O_S0[4] [7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h15160000)) 
    \O_ALU_reg[7]_i_2 
       (.I0(O_IR[15]),
        .I1(Q[11]),
        .I2(O_IR[14]),
        .I3(O_IR[13]),
        .I4(O_t2),
        .O(\O_ram_ADDR[0]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \O_ALU_reg[7]_i_3 
       (.I0(O_IR[14]),
        .I1(O_IR[13]),
        .I2(Q[11]),
        .I3(O_t2),
        .O(\O_ALU_reg[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hEF3F)) 
    \O_ALU_reg[7]_i_5 
       (.I0(Q[11]),
        .I1(O_IR[13]),
        .I2(O_t2),
        .I3(O_IR[14]),
        .O(\O_ALU_reg[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0300800000008000)) 
    \O_ALU_reg[7]_i_6 
       (.I0(data2[7]),
        .I1(Q[11]),
        .I2(O_IR[13]),
        .I3(O_t2),
        .I4(O_IR[14]),
        .I5(Q[7]),
        .O(\O_ALU_reg[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hCCCCCAAC)) 
    \O_REG_new_reg[0]_i_1 
       (.I0(tt2_reg[0]),
        .I1(tt3_reg_0[0]),
        .I2(O_IR[14]),
        .I3(O_IR[13]),
        .I4(O_IR[15]),
        .O(\O_ram_ADDR[0]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCCCCCAAC)) 
    \O_REG_new_reg[1]_i_1 
       (.I0(tt2_reg[1]),
        .I1(tt3_reg_0[1]),
        .I2(O_IR[14]),
        .I3(O_IR[13]),
        .I4(O_IR[15]),
        .O(\O_ram_ADDR[0]_1 [1]));
  LUT5 #(
    .INIT(32'hCCCCCAAC)) 
    \O_REG_new_reg[2]_i_1 
       (.I0(tt2_reg[2]),
        .I1(tt3_reg_0[2]),
        .I2(O_IR[14]),
        .I3(O_IR[13]),
        .I4(O_IR[15]),
        .O(\O_ram_ADDR[0]_1 [2]));
  LUT5 #(
    .INIT(32'hCCCCCAAC)) 
    \O_REG_new_reg[3]_i_1 
       (.I0(tt2_reg[3]),
        .I1(tt3_reg_0[3]),
        .I2(O_IR[14]),
        .I3(O_IR[13]),
        .I4(O_IR[15]),
        .O(\O_ram_ADDR[0]_1 [3]));
  LUT5 #(
    .INIT(32'hCCCCCAAC)) 
    \O_REG_new_reg[4]_i_1 
       (.I0(tt2_reg[4]),
        .I1(tt3_reg_0[4]),
        .I2(O_IR[14]),
        .I3(O_IR[13]),
        .I4(O_IR[15]),
        .O(\O_ram_ADDR[0]_1 [4]));
  LUT5 #(
    .INIT(32'hCCCCCAAC)) 
    \O_REG_new_reg[5]_i_1 
       (.I0(tt2_reg[5]),
        .I1(tt3_reg_0[5]),
        .I2(O_IR[14]),
        .I3(O_IR[13]),
        .I4(O_IR[15]),
        .O(\O_ram_ADDR[0]_1 [5]));
  LUT5 #(
    .INIT(32'hCCCCCAAC)) 
    \O_REG_new_reg[6]_i_1 
       (.I0(tt2_reg[6]),
        .I1(tt3_reg_0[6]),
        .I2(O_IR[14]),
        .I3(O_IR[13]),
        .I4(O_IR[15]),
        .O(\O_ram_ADDR[0]_1 [6]));
  LUT5 #(
    .INIT(32'hCCCCCAAC)) 
    \O_REG_new_reg[7]_i_1 
       (.I0(tt2_reg[7]),
        .I1(tt3_reg_0[7]),
        .I2(O_IR[14]),
        .I3(O_IR[13]),
        .I4(O_IR[15]),
        .O(\O_ram_ADDR[0]_1 [7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h5614)) 
    \O_REG_new_reg[7]_i_2 
       (.I0(O_IR[15]),
        .I1(O_IR[14]),
        .I2(O_IR[13]),
        .I3(Q[11]),
        .O(\O_ram_ADDR[0]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \O_RTEMP_reg[0]_i_1 
       (.I0(tt3_reg[0]),
        .I1(io_RTEMP[0]),
        .I2(O_RD_ram),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \O_RTEMP_reg[0]_i_2 
       (.I0(\O_RTEMP_reg[0]_i_3_n_0 ),
        .I1(\O_RTEMP_reg[7]_i_6_n_0 ),
        .O(io_RTEMP[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \O_RTEMP_reg[0]_i_3 
       (.I0(I_K1_IBUF[0]),
        .I1(I_K0_IBUF[0]),
        .I2(I_K3_IBUF[0]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(I_K2_IBUF[0]),
        .O(\O_RTEMP_reg[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \O_RTEMP_reg[1]_i_1 
       (.I0(tt3_reg[1]),
        .I1(io_RTEMP[1]),
        .I2(O_RD_ram),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \O_RTEMP_reg[1]_i_2 
       (.I0(\O_RTEMP_reg[1]_i_3_n_0 ),
        .I1(\O_RTEMP_reg[7]_i_6_n_0 ),
        .O(io_RTEMP[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \O_RTEMP_reg[1]_i_3 
       (.I0(I_K1_IBUF[1]),
        .I1(I_K0_IBUF[1]),
        .I2(I_K3_IBUF[1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(I_K2_IBUF[1]),
        .O(\O_RTEMP_reg[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \O_RTEMP_reg[2]_i_1 
       (.I0(tt3_reg[2]),
        .I1(io_RTEMP[2]),
        .I2(O_RD_ram),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \O_RTEMP_reg[2]_i_2 
       (.I0(\O_RTEMP_reg[2]_i_3_n_0 ),
        .I1(\O_RTEMP_reg[7]_i_6_n_0 ),
        .O(io_RTEMP[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \O_RTEMP_reg[2]_i_3 
       (.I0(I_K1_IBUF[2]),
        .I1(I_K0_IBUF[2]),
        .I2(I_K3_IBUF[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(I_K2_IBUF[2]),
        .O(\O_RTEMP_reg[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \O_RTEMP_reg[3]_i_1 
       (.I0(tt3_reg[3]),
        .I1(io_RTEMP[3]),
        .I2(O_RD_ram),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \O_RTEMP_reg[3]_i_2 
       (.I0(\O_RTEMP_reg[3]_i_3_n_0 ),
        .I1(\O_RTEMP_reg[7]_i_6_n_0 ),
        .O(io_RTEMP[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \O_RTEMP_reg[3]_i_3 
       (.I0(I_K1_IBUF[3]),
        .I1(I_K0_IBUF[3]),
        .I2(I_K3_IBUF[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(I_K2_IBUF[3]),
        .O(\O_RTEMP_reg[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \O_RTEMP_reg[4]_i_1 
       (.I0(tt3_reg[4]),
        .I1(io_RTEMP[4]),
        .I2(O_RD_ram),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \O_RTEMP_reg[4]_i_2 
       (.I0(\O_RTEMP_reg[4]_i_3_n_0 ),
        .I1(\O_RTEMP_reg[7]_i_6_n_0 ),
        .O(io_RTEMP[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \O_RTEMP_reg[4]_i_3 
       (.I0(I_K1_IBUF[4]),
        .I1(I_K0_IBUF[4]),
        .I2(I_K3_IBUF[4]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(I_K2_IBUF[4]),
        .O(\O_RTEMP_reg[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \O_RTEMP_reg[5]_i_1 
       (.I0(tt3_reg[5]),
        .I1(io_RTEMP[5]),
        .I2(O_RD_ram),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \O_RTEMP_reg[5]_i_2 
       (.I0(\O_RTEMP_reg[5]_i_3_n_0 ),
        .I1(\O_RTEMP_reg[7]_i_6_n_0 ),
        .O(io_RTEMP[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \O_RTEMP_reg[5]_i_3 
       (.I0(I_K1_IBUF[5]),
        .I1(I_K0_IBUF[5]),
        .I2(I_K3_IBUF[5]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(I_K2_IBUF[5]),
        .O(\O_RTEMP_reg[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \O_RTEMP_reg[6]_i_1 
       (.I0(tt3_reg[6]),
        .I1(io_RTEMP[6]),
        .I2(O_RD_ram),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \O_RTEMP_reg[6]_i_2 
       (.I0(\O_RTEMP_reg[6]_i_3_n_0 ),
        .I1(\O_RTEMP_reg[7]_i_6_n_0 ),
        .O(io_RTEMP[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \O_RTEMP_reg[6]_i_3 
       (.I0(I_K1_IBUF[6]),
        .I1(I_K0_IBUF[6]),
        .I2(I_K3_IBUF[6]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(I_K2_IBUF[6]),
        .O(\O_RTEMP_reg[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \O_RTEMP_reg[7]_i_1 
       (.I0(O_t3),
        .I1(O_IR[15]),
        .I2(O_IR[14]),
        .I3(O_IR[13]),
        .I4(Q[11]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \O_RTEMP_reg[7]_i_1__0 
       (.I0(tt3_reg[7]),
        .I1(io_RTEMP[7]),
        .I2(O_RD_ram),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h18000000)) 
    \O_RTEMP_reg[7]_i_2 
       (.I0(O_IR[14]),
        .I1(O_IR[13]),
        .I2(O_IR[15]),
        .I3(Q[11]),
        .I4(O_t3),
        .O(\O_ram_ADDR[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \O_RTEMP_reg[7]_i_3 
       (.I0(\O_RTEMP_reg[7]_i_5_n_0 ),
        .I1(\O_RTEMP_reg[7]_i_6_n_0 ),
        .O(io_RTEMP[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \O_RTEMP_reg[7]_i_4 
       (.I0(O_t3),
        .I1(Q[11]),
        .I2(O_IR[13]),
        .I3(O_IR[14]),
        .I4(O_IR[15]),
        .O(O_RD_ram));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \O_RTEMP_reg[7]_i_5 
       (.I0(I_K1_IBUF[7]),
        .I1(I_K0_IBUF[7]),
        .I2(I_K3_IBUF[7]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(I_K2_IBUF[7]),
        .O(\O_RTEMP_reg[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \O_RTEMP_reg[7]_i_6 
       (.I0(O_IR[14]),
        .I1(O_IR[13]),
        .I2(O_IR[15]),
        .I3(Q[11]),
        .I4(O_t3),
        .O(\O_RTEMP_reg[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \O_S0_OBUFT[7]_inst_i_2 
       (.I0(\O_S0_OBUFT[7]_inst_i_3_n_0 ),
        .I1(O_IR[14]),
        .I2(O_IR[13]),
        .I3(O_IR[15]),
        .I4(Q[11]),
        .I5(O_t3),
        .O(\O_S0_TRI[0] ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \O_S0_OBUFT[7]_inst_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\O_S0_OBUFT[7]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFFFFFFFFFF)) 
    \O_S1_OBUFT[7]_inst_i_2 
       (.I0(Q[1]),
        .I1(O_t3),
        .I2(\O_S1_OBUFT[7]_inst_i_3_n_0 ),
        .I3(O_IR[15]),
        .I4(Q[11]),
        .I5(Q[0]),
        .O(\O_S1_TRI[0] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \O_S1_OBUFT[7]_inst_i_3 
       (.I0(O_IR[13]),
        .I1(O_IR[14]),
        .O(\O_S1_OBUFT[7]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFFFFFFFFFF)) 
    \O_S2_OBUFT[7]_inst_i_2 
       (.I0(Q[0]),
        .I1(O_t3),
        .I2(\O_S1_OBUFT[7]_inst_i_3_n_0 ),
        .I3(O_IR[15]),
        .I4(Q[11]),
        .I5(Q[1]),
        .O(\O_S2_TRI[0] ));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    \O_S3_OBUFT[7]_inst_i_2 
       (.I0(\O_S3_OBUFT[7]_inst_i_3_n_0 ),
        .I1(O_IR[14]),
        .I2(O_IR[13]),
        .I3(O_IR[15]),
        .I4(Q[11]),
        .I5(O_t3),
        .O(\O_S3_TRI[0] ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \O_S3_OBUFT[7]_inst_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\O_S3_OBUFT[7]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h55155555)) 
    O_ram_NCS_OBUF_inst_i_1
       (.I0(O_t1),
        .I1(O_IR[13]),
        .I2(O_IR[14]),
        .I3(O_IR[15]),
        .I4(O_t3),
        .O(O_ram_NCS_OBUF));
  LUT6 #(
    .INIT(64'h5555155555555555)) 
    O_ram_NRD_OBUF_inst_i_1
       (.I0(O_t1),
        .I1(Q[11]),
        .I2(O_IR[13]),
        .I3(O_IR[14]),
        .I4(O_IR[15]),
        .I5(O_t3),
        .O(O_ram_NRD_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFBFFFFF)) 
    O_ram_NWR_OBUF_inst_i_1
       (.I0(Q[11]),
        .I1(O_IR[13]),
        .I2(O_IR[14]),
        .I3(O_IR[15]),
        .I4(O_t3),
        .O(O_ram_NWR_OBUF));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[0] 
       (.CLR(AR),
        .D(\PC_reg[0]_i_1_n_0 ),
        .G(\PC_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(O_PC[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_reg[0]_i_1 
       (.I0(tt2_reg_0[0]),
        .I1(PC_t[0]),
        .I2(O_PC_update),
        .O(\PC_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[10] 
       (.CLR(AR),
        .D(\PC_reg[10]_i_1_n_0 ),
        .G(\PC_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(O_PC[10]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_reg[10]_i_1 
       (.I0(tt2_reg_0[10]),
        .I1(PC_t[10]),
        .I2(O_PC_update),
        .O(\PC_reg[10]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[11] 
       (.CLR(AR),
        .D(\PC_reg[11]_i_1_n_0 ),
        .G(\PC_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(O_PC[11]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_reg[11]_i_1 
       (.I0(tt2_reg_0[11]),
        .I1(PC_t[11]),
        .I2(O_PC_update),
        .O(\PC_reg[11]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[12] 
       (.CLR(AR),
        .D(\PC_reg[12]_i_1_n_0 ),
        .G(\PC_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(O_PC[12]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_reg[12]_i_1 
       (.I0(tt2_reg_0[12]),
        .I1(PC_t[12]),
        .I2(O_PC_update),
        .O(\PC_reg[12]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[13] 
       (.CLR(AR),
        .D(\PC_reg[13]_i_1_n_0 ),
        .G(\PC_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(O_PC[13]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_reg[13]_i_1 
       (.I0(tt2_reg_0[13]),
        .I1(PC_t[13]),
        .I2(O_PC_update),
        .O(\PC_reg[13]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[14] 
       (.CLR(AR),
        .D(\PC_reg[14]_i_1_n_0 ),
        .G(\PC_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(O_PC[14]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_reg[14]_i_1 
       (.I0(tt2_reg_0[14]),
        .I1(PC_t[14]),
        .I2(O_PC_update),
        .O(\PC_reg[14]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[15] 
       (.CLR(AR),
        .D(\PC_reg[15]_i_1_n_0 ),
        .G(\PC_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(O_PC[15]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_reg[15]_i_1 
       (.I0(tt2_reg_0[15]),
        .I1(PC_t[15]),
        .I2(O_PC_update),
        .O(\PC_reg[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \PC_reg[15]_i_2 
       (.I0(O_PC_update),
        .I1(O_t3),
        .O(\PC_reg[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \PC_reg[15]_i_3 
       (.I0(O_IR[13]),
        .I1(O_t4),
        .I2(O_IR[14]),
        .I3(O_IR[15]),
        .I4(tt1_reg),
        .O(O_PC_update));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[1] 
       (.CLR(AR),
        .D(\PC_reg[1]_i_1_n_0 ),
        .G(\PC_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(O_PC[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_reg[1]_i_1 
       (.I0(tt2_reg_0[1]),
        .I1(PC_t[1]),
        .I2(O_PC_update),
        .O(\PC_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[2] 
       (.CLR(AR),
        .D(\PC_reg[2]_i_1_n_0 ),
        .G(\PC_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(O_PC[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_reg[2]_i_1 
       (.I0(tt2_reg_0[2]),
        .I1(PC_t[2]),
        .I2(O_PC_update),
        .O(\PC_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[3] 
       (.CLR(AR),
        .D(\PC_reg[3]_i_1_n_0 ),
        .G(\PC_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(O_PC[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_reg[3]_i_1 
       (.I0(tt2_reg_0[3]),
        .I1(PC_t[3]),
        .I2(O_PC_update),
        .O(\PC_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[4] 
       (.CLR(AR),
        .D(\PC_reg[4]_i_1_n_0 ),
        .G(\PC_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(O_PC[4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_reg[4]_i_1 
       (.I0(tt2_reg_0[4]),
        .I1(PC_t[4]),
        .I2(O_PC_update),
        .O(\PC_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[5] 
       (.CLR(AR),
        .D(\PC_reg[5]_i_1_n_0 ),
        .G(\PC_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(O_PC[5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_reg[5]_i_1 
       (.I0(tt2_reg_0[5]),
        .I1(PC_t[5]),
        .I2(O_PC_update),
        .O(\PC_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[6] 
       (.CLR(AR),
        .D(\PC_reg[6]_i_1_n_0 ),
        .G(\PC_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(O_PC[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_reg[6]_i_1 
       (.I0(tt2_reg_0[6]),
        .I1(PC_t[6]),
        .I2(O_PC_update),
        .O(\PC_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[7] 
       (.CLR(AR),
        .D(\PC_reg[7]_i_1_n_0 ),
        .G(\PC_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(O_PC[7]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_reg[7]_i_1 
       (.I0(tt2_reg_0[7]),
        .I1(PC_t[7]),
        .I2(O_PC_update),
        .O(\PC_reg[7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[8] 
       (.CLR(AR),
        .D(\PC_reg[8]_i_1_n_0 ),
        .G(\PC_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(O_PC[8]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_reg[8]_i_1 
       (.I0(tt2_reg_0[8]),
        .I1(PC_t[8]),
        .I2(O_PC_update),
        .O(\PC_reg[8]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_reg[9] 
       (.CLR(AR),
        .D(\PC_reg[9]_i_1_n_0 ),
        .G(\PC_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(O_PC[9]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \PC_reg[9]_i_1 
       (.I0(tt2_reg_0[9]),
        .I1(PC_t[9]),
        .I2(O_PC_update),
        .O(\PC_reg[9]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_t_reg[0] 
       (.CLR(1'b0),
        .D(plusOp[0]),
        .G(tt1_reg_1),
        .GE(1'b1),
        .Q(PC_t[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \PC_t_reg[0]_i_1 
       (.I0(O_PC[0]),
        .O(plusOp[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_t_reg[10] 
       (.CLR(1'b0),
        .D(plusOp[10]),
        .G(tt1_reg_1),
        .GE(1'b1),
        .Q(PC_t[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_t_reg[11] 
       (.CLR(1'b0),
        .D(plusOp[11]),
        .G(tt1_reg_1),
        .GE(1'b1),
        .Q(PC_t[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_t_reg[12] 
       (.CLR(1'b0),
        .D(plusOp[12]),
        .G(tt1_reg_1),
        .GE(1'b1),
        .Q(PC_t[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_t_reg[13] 
       (.CLR(1'b0),
        .D(plusOp[13]),
        .G(tt1_reg_1),
        .GE(1'b1),
        .Q(PC_t[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_t_reg[14] 
       (.CLR(1'b0),
        .D(plusOp[14]),
        .G(tt1_reg_1),
        .GE(1'b1),
        .Q(PC_t[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_t_reg[15] 
       (.CLR(1'b0),
        .D(plusOp[15]),
        .G(tt1_reg_1),
        .GE(1'b1),
        .Q(PC_t[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_t_reg[1] 
       (.CLR(1'b0),
        .D(plusOp[1]),
        .G(tt1_reg_1),
        .GE(1'b1),
        .Q(PC_t[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_t_reg[2] 
       (.CLR(1'b0),
        .D(plusOp[2]),
        .G(tt1_reg_1),
        .GE(1'b1),
        .Q(PC_t[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_t_reg[3] 
       (.CLR(1'b0),
        .D(plusOp[3]),
        .G(tt1_reg_1),
        .GE(1'b1),
        .Q(PC_t[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_t_reg[4] 
       (.CLR(1'b0),
        .D(plusOp[4]),
        .G(tt1_reg_1),
        .GE(1'b1),
        .Q(PC_t[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_t_reg[5] 
       (.CLR(1'b0),
        .D(plusOp[5]),
        .G(tt1_reg_1),
        .GE(1'b1),
        .Q(PC_t[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_t_reg[6] 
       (.CLR(1'b0),
        .D(plusOp[6]),
        .G(tt1_reg_1),
        .GE(1'b1),
        .Q(PC_t[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_t_reg[7] 
       (.CLR(1'b0),
        .D(plusOp[7]),
        .G(tt1_reg_1),
        .GE(1'b1),
        .Q(PC_t[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_t_reg[8] 
       (.CLR(1'b0),
        .D(plusOp[8]),
        .G(tt1_reg_1),
        .GE(1'b1),
        .Q(PC_t[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \PC_t_reg[9] 
       (.CLR(1'b0),
        .D(plusOp[9]),
        .G(tt1_reg_1),
        .GE(1'b1),
        .Q(PC_t[9]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \R_reg[0][7]_i_1 
       (.I0(Q[10]),
        .I1(Q[8]),
        .I2(\uut_write_back/O_REG_addr1__2 ),
        .I3(Q[9]),
        .O(\O_ram_ADDR[0] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h22280220)) 
    \R_reg[0][7]_i_2 
       (.I0(O_t4),
        .I1(O_IR[15]),
        .I2(O_IR[14]),
        .I3(O_IR[13]),
        .I4(Q[11]),
        .O(\uut_write_back/O_REG_addr1__2 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \R_reg[1][7]_i_1 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(\uut_write_back/O_REG_addr1__2 ),
        .I3(Q[8]),
        .O(\O_ram_ADDR[4] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \R_reg[2][7]_i_1 
       (.I0(Q[10]),
        .I1(Q[8]),
        .I2(\uut_write_back/O_REG_addr1__2 ),
        .I3(Q[9]),
        .O(\O_ram_ADDR[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \R_reg[3][7]_i_1 
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(\uut_write_back/O_REG_addr1__2 ),
        .I3(Q[10]),
        .O(\O_ram_ADDR[4]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \R_reg[4][7]_i_1 
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(\uut_write_back/O_REG_addr1__2 ),
        .I3(Q[10]),
        .O(\O_ram_ADDR[4]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \R_reg[5][7]_i_1 
       (.I0(Q[10]),
        .I1(Q[8]),
        .I2(\uut_write_back/O_REG_addr1__2 ),
        .I3(Q[9]),
        .O(\O_ram_ADDR[4]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \R_reg[6][7]_i_1 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(\uut_write_back/O_REG_addr1__2 ),
        .I3(Q[8]),
        .O(\O_ram_ADDR[4]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \R_reg[7][7]_i_1 
       (.I0(Q[10]),
        .I1(Q[8]),
        .I2(\uut_write_back/O_REG_addr1__2 ),
        .I3(Q[9]),
        .O(\O_ram_ADDR[4]_5 ));
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,NLW_plusOp_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(O_PC[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[4:1]),
        .S(O_PC[4:1]));
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,NLW_plusOp_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:5]),
        .S(O_PC[8:5]));
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,NLW_plusOp_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[12:9]),
        .S(O_PC[12:9]));
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO(NLW_plusOp_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__2_O_UNCONNECTED[3],plusOp[15:13]}),
        .S({1'b0,O_PC[15:13]}));
endmodule

module mod4
   (O_t2,
    O_t3,
    O_t4,
    O_t1,
    E,
    I_CLK_IBUF_BUFG,
    AR);
  output O_t2;
  output O_t3;
  output O_t4;
  output O_t1;
  input [0:0]E;
  input I_CLK_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire I_CLK_IBUF_BUFG;
  wire O_t1;
  wire O_t2;
  wire O_t3;
  wire O_t4;
  wire tt1_i_1_n_0;

  LUT4 #(
    .INIT(16'hFF01)) 
    tt1_i_1
       (.I0(O_t1),
        .I1(O_t3),
        .I2(O_t2),
        .I3(O_t4),
        .O(tt1_i_1_n_0));
  FDCE #(
    .INIT(1'b1)) 
    tt1_reg
       (.C(I_CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(tt1_i_1_n_0),
        .Q(O_t1));
  FDCE #(
    .INIT(1'b0)) 
    tt2_reg
       (.C(I_CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(E),
        .Q(O_t2));
  FDCE #(
    .INIT(1'b0)) 
    tt3_reg
       (.C(I_CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(O_t2),
        .Q(O_t3));
  FDCE #(
    .INIT(1'b0)) 
    tt4_reg
       (.C(I_CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(O_t3),
        .Q(O_t4));
endmodule

module ram_ctrl
   (Q,
    \O_ram_ADDR[0] ,
    \O_ram_ADDR[15] ,
    D,
    E,
    tt3_reg,
    tt1_reg,
    tt3_reg_0);
  output [14:0]Q;
  output [7:0]\O_ram_ADDR[0] ;
  output [15:0]\O_ram_ADDR[15] ;
  input [14:0]D;
  input [0:0]E;
  input [0:0]tt3_reg;
  input [15:0]tt1_reg;
  input [0:0]tt3_reg_0;

  wire [14:0]D;
  wire [0:0]E;
  wire [7:0]\O_ram_ADDR[0] ;
  wire [15:0]\O_ram_ADDR[15] ;
  wire [14:0]Q;
  wire [15:0]tt1_reg;
  wire [0:0]tt3_reg;
  wire [0:0]tt3_reg_0;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ADDR_reg[0] 
       (.CLR(1'b0),
        .D(tt1_reg[0]),
        .G(tt3_reg_0),
        .GE(1'b1),
        .Q(\O_ram_ADDR[15] [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ADDR_reg[10] 
       (.CLR(1'b0),
        .D(tt1_reg[10]),
        .G(tt3_reg_0),
        .GE(1'b1),
        .Q(\O_ram_ADDR[15] [10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ADDR_reg[11] 
       (.CLR(1'b0),
        .D(tt1_reg[11]),
        .G(tt3_reg_0),
        .GE(1'b1),
        .Q(\O_ram_ADDR[15] [11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ADDR_reg[12] 
       (.CLR(1'b0),
        .D(tt1_reg[12]),
        .G(tt3_reg_0),
        .GE(1'b1),
        .Q(\O_ram_ADDR[15] [12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ADDR_reg[13] 
       (.CLR(1'b0),
        .D(tt1_reg[13]),
        .G(tt3_reg_0),
        .GE(1'b1),
        .Q(\O_ram_ADDR[15] [13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ADDR_reg[14] 
       (.CLR(1'b0),
        .D(tt1_reg[14]),
        .G(tt3_reg_0),
        .GE(1'b1),
        .Q(\O_ram_ADDR[15] [14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ADDR_reg[15] 
       (.CLR(1'b0),
        .D(tt1_reg[15]),
        .G(tt3_reg_0),
        .GE(1'b1),
        .Q(\O_ram_ADDR[15] [15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ADDR_reg[1] 
       (.CLR(1'b0),
        .D(tt1_reg[1]),
        .G(tt3_reg_0),
        .GE(1'b1),
        .Q(\O_ram_ADDR[15] [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ADDR_reg[2] 
       (.CLR(1'b0),
        .D(tt1_reg[2]),
        .G(tt3_reg_0),
        .GE(1'b1),
        .Q(\O_ram_ADDR[15] [2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ADDR_reg[3] 
       (.CLR(1'b0),
        .D(tt1_reg[3]),
        .G(tt3_reg_0),
        .GE(1'b1),
        .Q(\O_ram_ADDR[15] [3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ADDR_reg[4] 
       (.CLR(1'b0),
        .D(tt1_reg[4]),
        .G(tt3_reg_0),
        .GE(1'b1),
        .Q(\O_ram_ADDR[15] [4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ADDR_reg[5] 
       (.CLR(1'b0),
        .D(tt1_reg[5]),
        .G(tt3_reg_0),
        .GE(1'b1),
        .Q(\O_ram_ADDR[15] [5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ADDR_reg[6] 
       (.CLR(1'b0),
        .D(tt1_reg[6]),
        .G(tt3_reg_0),
        .GE(1'b1),
        .Q(\O_ram_ADDR[15] [6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ADDR_reg[7] 
       (.CLR(1'b0),
        .D(tt1_reg[7]),
        .G(tt3_reg_0),
        .GE(1'b1),
        .Q(\O_ram_ADDR[15] [7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ADDR_reg[8] 
       (.CLR(1'b0),
        .D(tt1_reg[8]),
        .G(tt3_reg_0),
        .GE(1'b1),
        .Q(\O_ram_ADDR[15] [8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_ADDR_reg[9] 
       (.CLR(1'b0),
        .D(tt1_reg[9]),
        .G(tt3_reg_0),
        .GE(1'b1),
        .Q(\O_ram_ADDR[15] [9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_IR_reg[0] 
       (.CLR(1'b0),
        .D(D[0]),
        .G(E),
        .GE(1'b1),
        .Q(Q[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_IR_reg[10] 
       (.CLR(1'b0),
        .D(D[10]),
        .G(E),
        .GE(1'b1),
        .Q(Q[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_IR_reg[12] 
       (.CLR(1'b0),
        .D(D[11]),
        .G(E),
        .GE(1'b1),
        .Q(Q[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_IR_reg[13] 
       (.CLR(1'b0),
        .D(D[12]),
        .G(E),
        .GE(1'b1),
        .Q(Q[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_IR_reg[14] 
       (.CLR(1'b0),
        .D(D[13]),
        .G(E),
        .GE(1'b1),
        .Q(Q[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_IR_reg[15] 
       (.CLR(1'b0),
        .D(D[14]),
        .G(E),
        .GE(1'b1),
        .Q(Q[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_IR_reg[1] 
       (.CLR(1'b0),
        .D(D[1]),
        .G(E),
        .GE(1'b1),
        .Q(Q[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_IR_reg[2] 
       (.CLR(1'b0),
        .D(D[2]),
        .G(E),
        .GE(1'b1),
        .Q(Q[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_IR_reg[3] 
       (.CLR(1'b0),
        .D(D[3]),
        .G(E),
        .GE(1'b1),
        .Q(Q[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_IR_reg[4] 
       (.CLR(1'b0),
        .D(D[4]),
        .G(E),
        .GE(1'b1),
        .Q(Q[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_IR_reg[5] 
       (.CLR(1'b0),
        .D(D[5]),
        .G(E),
        .GE(1'b1),
        .Q(Q[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_IR_reg[6] 
       (.CLR(1'b0),
        .D(D[6]),
        .G(E),
        .GE(1'b1),
        .Q(Q[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_IR_reg[7] 
       (.CLR(1'b0),
        .D(D[7]),
        .G(E),
        .GE(1'b1),
        .Q(Q[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_IR_reg[8] 
       (.CLR(1'b0),
        .D(D[8]),
        .G(E),
        .GE(1'b1),
        .Q(Q[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_IR_reg[9] 
       (.CLR(1'b0),
        .D(D[9]),
        .G(E),
        .GE(1'b1),
        .Q(Q[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_RTEMP_reg[0] 
       (.CLR(1'b0),
        .D(D[0]),
        .G(tt3_reg),
        .GE(1'b1),
        .Q(\O_ram_ADDR[0] [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_RTEMP_reg[1] 
       (.CLR(1'b0),
        .D(D[1]),
        .G(tt3_reg),
        .GE(1'b1),
        .Q(\O_ram_ADDR[0] [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_RTEMP_reg[2] 
       (.CLR(1'b0),
        .D(D[2]),
        .G(tt3_reg),
        .GE(1'b1),
        .Q(\O_ram_ADDR[0] [2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_RTEMP_reg[3] 
       (.CLR(1'b0),
        .D(D[3]),
        .G(tt3_reg),
        .GE(1'b1),
        .Q(\O_ram_ADDR[0] [3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_RTEMP_reg[4] 
       (.CLR(1'b0),
        .D(D[4]),
        .G(tt3_reg),
        .GE(1'b1),
        .Q(\O_ram_ADDR[0] [4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_RTEMP_reg[5] 
       (.CLR(1'b0),
        .D(D[5]),
        .G(tt3_reg),
        .GE(1'b1),
        .Q(\O_ram_ADDR[0] [5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_RTEMP_reg[6] 
       (.CLR(1'b0),
        .D(D[6]),
        .G(tt3_reg),
        .GE(1'b1),
        .Q(\O_ram_ADDR[0] [6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_RTEMP_reg[7] 
       (.CLR(1'b0),
        .D(D[7]),
        .G(tt3_reg),
        .GE(1'b1),
        .Q(\O_ram_ADDR[0] [7]));
endmodule

module refer
   (Q,
    D,
    E);
  output [7:0]Q;
  input [7:0]D;
  input [0:0]E;

  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_RTEMP_reg[0] 
       (.CLR(1'b0),
        .D(D[0]),
        .G(E),
        .GE(1'b1),
        .Q(Q[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_RTEMP_reg[1] 
       (.CLR(1'b0),
        .D(D[1]),
        .G(E),
        .GE(1'b1),
        .Q(Q[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_RTEMP_reg[2] 
       (.CLR(1'b0),
        .D(D[2]),
        .G(E),
        .GE(1'b1),
        .Q(Q[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_RTEMP_reg[3] 
       (.CLR(1'b0),
        .D(D[3]),
        .G(E),
        .GE(1'b1),
        .Q(Q[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_RTEMP_reg[4] 
       (.CLR(1'b0),
        .D(D[4]),
        .G(E),
        .GE(1'b1),
        .Q(Q[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_RTEMP_reg[5] 
       (.CLR(1'b0),
        .D(D[5]),
        .G(E),
        .GE(1'b1),
        .Q(Q[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_RTEMP_reg[6] 
       (.CLR(1'b0),
        .D(D[6]),
        .G(E),
        .GE(1'b1),
        .Q(Q[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_RTEMP_reg[7] 
       (.CLR(1'b0),
        .D(D[7]),
        .G(E),
        .GE(1'b1),
        .Q(Q[7]));
endmodule

module write_back
   (Q,
    D,
    E);
  output [7:0]Q;
  input [7:0]D;
  input [0:0]E;

  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_REG_new_reg[0] 
       (.CLR(1'b0),
        .D(D[0]),
        .G(E),
        .GE(1'b1),
        .Q(Q[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_REG_new_reg[1] 
       (.CLR(1'b0),
        .D(D[1]),
        .G(E),
        .GE(1'b1),
        .Q(Q[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_REG_new_reg[2] 
       (.CLR(1'b0),
        .D(D[2]),
        .G(E),
        .GE(1'b1),
        .Q(Q[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_REG_new_reg[3] 
       (.CLR(1'b0),
        .D(D[3]),
        .G(E),
        .GE(1'b1),
        .Q(Q[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_REG_new_reg[4] 
       (.CLR(1'b0),
        .D(D[4]),
        .G(E),
        .GE(1'b1),
        .Q(Q[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_REG_new_reg[5] 
       (.CLR(1'b0),
        .D(D[5]),
        .G(E),
        .GE(1'b1),
        .Q(Q[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_REG_new_reg[6] 
       (.CLR(1'b0),
        .D(D[6]),
        .G(E),
        .GE(1'b1),
        .Q(Q[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \O_REG_new_reg[7] 
       (.CLR(1'b0),
        .D(D[7]),
        .G(E),
        .GE(1'b1),
        .Q(Q[7]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
