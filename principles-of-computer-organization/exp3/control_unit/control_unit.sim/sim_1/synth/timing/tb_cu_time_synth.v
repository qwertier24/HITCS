// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
// Date        : Sat Jun 17 13:39:03 2017
// Host        : DESKTOP-3F16N34 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               E:/principles-of-computer-organization/exp3/control_unit/control_unit.sim/sim_1/synth/timing/tb_cu_time_synth.v
// Design      : perform
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module perform
   (clk,
    led,
    seg,
    an,
    swt,
    btnu,
    btnc,
    btnl,
    btnr,
    btnd);
  input clk;
  output [15:0]led;
  output [6:0]seg;
  output [7:0]an;
  input [15:0]swt;
  input btnu;
  input btnc;
  input btnl;
  input btnr;
  input btnd;

  wire [1:0]M;
  wire \M[0]_i_1_n_0 ;
  wire \M[1]_i_1_n_0 ;
  wire [1:0]T;
  wire \T[0]_i_1_n_0 ;
  wire \T[1]_i_1_n_0 ;
  wire \T[1]_i_2_n_0 ;
  wire [7:0]an;
  wire [4:0]an_OBUF;
  wire btnd;
  wire btnd_IBUF;
  wire btnl;
  wire btnl_IBUF;
  wire btnr;
  wire btnr_IBUF;
  wire btnu;
  wire btnu_IBUF;
  wire btnu_IBUF_BUFG;
  wire clear;
  wire clk;
  wire clk1khz;
  wire \clk1khz_i[0]_i_3_n_0 ;
  wire \clk1khz_i[0]_i_4_n_0 ;
  wire \clk1khz_i[0]_i_5_n_0 ;
  wire \clk1khz_i[0]_i_6_n_0 ;
  wire \clk1khz_i[0]_i_7_n_0 ;
  wire \clk1khz_i[0]_i_8_n_0 ;
  wire \clk1khz_i[0]_i_9_n_0 ;
  wire \clk1khz_i[12]_i_2_n_0 ;
  wire \clk1khz_i[12]_i_3_n_0 ;
  wire \clk1khz_i[12]_i_4_n_0 ;
  wire \clk1khz_i[12]_i_5_n_0 ;
  wire \clk1khz_i[16]_i_2_n_0 ;
  wire \clk1khz_i[4]_i_2_n_0 ;
  wire \clk1khz_i[4]_i_3_n_0 ;
  wire \clk1khz_i[4]_i_4_n_0 ;
  wire \clk1khz_i[4]_i_5_n_0 ;
  wire \clk1khz_i[8]_i_2_n_0 ;
  wire \clk1khz_i[8]_i_3_n_0 ;
  wire \clk1khz_i[8]_i_4_n_0 ;
  wire \clk1khz_i[8]_i_5_n_0 ;
  wire clk1khz_i_1_n_0;
  wire [16:0]clk1khz_i_reg;
  wire \clk1khz_i_reg[0]_i_2_n_0 ;
  wire \clk1khz_i_reg[0]_i_2_n_1 ;
  wire \clk1khz_i_reg[0]_i_2_n_2 ;
  wire \clk1khz_i_reg[0]_i_2_n_3 ;
  wire \clk1khz_i_reg[0]_i_2_n_4 ;
  wire \clk1khz_i_reg[0]_i_2_n_5 ;
  wire \clk1khz_i_reg[0]_i_2_n_6 ;
  wire \clk1khz_i_reg[0]_i_2_n_7 ;
  wire \clk1khz_i_reg[12]_i_1_n_0 ;
  wire \clk1khz_i_reg[12]_i_1_n_1 ;
  wire \clk1khz_i_reg[12]_i_1_n_2 ;
  wire \clk1khz_i_reg[12]_i_1_n_3 ;
  wire \clk1khz_i_reg[12]_i_1_n_4 ;
  wire \clk1khz_i_reg[12]_i_1_n_5 ;
  wire \clk1khz_i_reg[12]_i_1_n_6 ;
  wire \clk1khz_i_reg[12]_i_1_n_7 ;
  wire \clk1khz_i_reg[16]_i_1_n_7 ;
  wire \clk1khz_i_reg[4]_i_1_n_0 ;
  wire \clk1khz_i_reg[4]_i_1_n_1 ;
  wire \clk1khz_i_reg[4]_i_1_n_2 ;
  wire \clk1khz_i_reg[4]_i_1_n_3 ;
  wire \clk1khz_i_reg[4]_i_1_n_4 ;
  wire \clk1khz_i_reg[4]_i_1_n_5 ;
  wire \clk1khz_i_reg[4]_i_1_n_6 ;
  wire \clk1khz_i_reg[4]_i_1_n_7 ;
  wire \clk1khz_i_reg[8]_i_1_n_0 ;
  wire \clk1khz_i_reg[8]_i_1_n_1 ;
  wire \clk1khz_i_reg[8]_i_1_n_2 ;
  wire \clk1khz_i_reg[8]_i_1_n_3 ;
  wire \clk1khz_i_reg[8]_i_1_n_4 ;
  wire \clk1khz_i_reg[8]_i_1_n_5 ;
  wire \clk1khz_i_reg[8]_i_1_n_6 ;
  wire \clk1khz_i_reg[8]_i_1_n_7 ;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire first16_reg_i_1_n_0;
  wire first16_reg_i_2_n_0;
  wire [15:0]led;
  wire [5:5]led_OBUF;
  wire mark_q_d;
  wire mark_q_d_i_1_n_0;
  wire [6:0]seg;
  wire \seg[2]_i_1_n_0 ;
  wire \seg[3]_i_1_n_0 ;
  wire \seg[4]_i_1_n_0 ;
  wire \seg[5]_i_1_n_0 ;
  wire \seg[6]_i_1_n_0 ;
  wire [6:0]seg_OBUF;
  wire [15:0]swt;
  wire [15:15]swt_IBUF;
  wire [3:0]\NLW_clk1khz_i_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_clk1khz_i_reg[16]_i_1_O_UNCONNECTED ;

initial begin
 $sdf_annotate("tb_cu_time_synth.sdf",,,,"tool_control");
end
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF2F0030)) 
    \M[0]_i_1 
       (.I0(swt_IBUF),
        .I1(M[1]),
        .I2(T[1]),
        .I3(T[0]),
        .I4(M[0]),
        .O(\M[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF0F0020)) 
    \M[1]_i_1 
       (.I0(M[0]),
        .I1(swt_IBUF),
        .I2(T[1]),
        .I3(T[0]),
        .I4(M[1]),
        .O(\M[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \M_reg[0] 
       (.C(btnu_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\T[1]_i_2_n_0 ),
        .D(\M[0]_i_1_n_0 ),
        .Q(M[0]));
  FDCE #(
    .INIT(1'b0)) 
    \M_reg[1] 
       (.C(btnu_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\T[1]_i_2_n_0 ),
        .D(\M[1]_i_1_n_0 ),
        .Q(M[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \T[0]_i_1 
       (.I0(T[0]),
        .I1(T[1]),
        .O(\T[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \T[1]_i_1 
       (.I0(T[0]),
        .I1(T[1]),
        .O(\T[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \T[1]_i_2 
       (.I0(btnd_IBUF),
        .O(\T[1]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \T_reg[0] 
       (.C(btnu_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\T[1]_i_2_n_0 ),
        .D(\T[0]_i_1_n_0 ),
        .Q(T[0]));
  FDCE #(
    .INIT(1'b0)) 
    \T_reg[1] 
       (.C(btnu_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\T[1]_i_2_n_0 ),
        .D(\T[1]_i_1_n_0 ),
        .Q(T[1]));
  OBUF \an_OBUF[0]_inst 
       (.I(an_OBUF[0]),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(1'b1),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(1'b1),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(1'b1),
        .O(an[3]));
  OBUF \an_OBUF[4]_inst 
       (.I(an_OBUF[4]),
        .O(an[4]));
  OBUF \an_OBUF[5]_inst 
       (.I(1'b1),
        .O(an[5]));
  OBUF \an_OBUF[6]_inst 
       (.I(1'b1),
        .O(an[6]));
  OBUF \an_OBUF[7]_inst 
       (.I(1'b1),
        .O(an[7]));
  FDRE #(
    .INIT(1'b0)) 
    \an_reg[0] 
       (.C(clk1khz),
        .CE(1'b1),
        .D(1'b1),
        .Q(an_OBUF[0]),
        .R(mark_q_d));
  FDRE #(
    .INIT(1'b0)) 
    \an_reg[4] 
       (.C(clk1khz),
        .CE(1'b1),
        .D(mark_q_d),
        .Q(an_OBUF[4]),
        .R(1'b0));
  IBUF btnd_IBUF_inst
       (.I(btnd),
        .O(btnd_IBUF));
  IBUF btnl_IBUF_inst
       (.I(btnl),
        .O(btnl_IBUF));
  IBUF btnr_IBUF_inst
       (.I(btnr),
        .O(btnr_IBUF));
  BUFG btnu_IBUF_BUFG_inst
       (.I(btnu_IBUF),
        .O(btnu_IBUF_BUFG));
  IBUF btnu_IBUF_inst
       (.I(btnu),
        .O(btnu_IBUF));
  LUT3 #(
    .INIT(8'h80)) 
    \clk1khz_i[0]_i_1 
       (.I0(\clk1khz_i[0]_i_3_n_0 ),
        .I1(\clk1khz_i[0]_i_4_n_0 ),
        .I2(\clk1khz_i[0]_i_5_n_0 ),
        .O(clear));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \clk1khz_i[0]_i_3 
       (.I0(clk1khz_i_reg[7]),
        .I1(clk1khz_i_reg[8]),
        .I2(clk1khz_i_reg[5]),
        .I3(clk1khz_i_reg[6]),
        .I4(clk1khz_i_reg[10]),
        .I5(clk1khz_i_reg[9]),
        .O(\clk1khz_i[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \clk1khz_i[0]_i_4 
       (.I0(clk1khz_i_reg[0]),
        .I1(clk1khz_i_reg[1]),
        .I2(clk1khz_i_reg[2]),
        .I3(clk1khz_i_reg[4]),
        .I4(clk1khz_i_reg[3]),
        .O(\clk1khz_i[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \clk1khz_i[0]_i_5 
       (.I0(clk1khz_i_reg[13]),
        .I1(clk1khz_i_reg[14]),
        .I2(clk1khz_i_reg[11]),
        .I3(clk1khz_i_reg[12]),
        .I4(clk1khz_i_reg[16]),
        .I5(clk1khz_i_reg[15]),
        .O(\clk1khz_i[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \clk1khz_i[0]_i_6 
       (.I0(clk1khz_i_reg[3]),
        .O(\clk1khz_i[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \clk1khz_i[0]_i_7 
       (.I0(clk1khz_i_reg[2]),
        .O(\clk1khz_i[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \clk1khz_i[0]_i_8 
       (.I0(clk1khz_i_reg[1]),
        .O(\clk1khz_i[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk1khz_i[0]_i_9 
       (.I0(clk1khz_i_reg[0]),
        .O(\clk1khz_i[0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \clk1khz_i[12]_i_2 
       (.I0(clk1khz_i_reg[15]),
        .O(\clk1khz_i[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \clk1khz_i[12]_i_3 
       (.I0(clk1khz_i_reg[14]),
        .O(\clk1khz_i[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \clk1khz_i[12]_i_4 
       (.I0(clk1khz_i_reg[13]),
        .O(\clk1khz_i[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \clk1khz_i[12]_i_5 
       (.I0(clk1khz_i_reg[12]),
        .O(\clk1khz_i[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \clk1khz_i[16]_i_2 
       (.I0(clk1khz_i_reg[16]),
        .O(\clk1khz_i[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \clk1khz_i[4]_i_2 
       (.I0(clk1khz_i_reg[7]),
        .O(\clk1khz_i[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \clk1khz_i[4]_i_3 
       (.I0(clk1khz_i_reg[6]),
        .O(\clk1khz_i[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \clk1khz_i[4]_i_4 
       (.I0(clk1khz_i_reg[5]),
        .O(\clk1khz_i[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \clk1khz_i[4]_i_5 
       (.I0(clk1khz_i_reg[4]),
        .O(\clk1khz_i[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \clk1khz_i[8]_i_2 
       (.I0(clk1khz_i_reg[11]),
        .O(\clk1khz_i[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \clk1khz_i[8]_i_3 
       (.I0(clk1khz_i_reg[10]),
        .O(\clk1khz_i[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \clk1khz_i[8]_i_4 
       (.I0(clk1khz_i_reg[9]),
        .O(\clk1khz_i[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \clk1khz_i[8]_i_5 
       (.I0(clk1khz_i_reg[8]),
        .O(\clk1khz_i[8]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    clk1khz_i_1
       (.I0(\clk1khz_i[0]_i_5_n_0 ),
        .I1(\clk1khz_i[0]_i_4_n_0 ),
        .I2(\clk1khz_i[0]_i_3_n_0 ),
        .I3(clk1khz),
        .O(clk1khz_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk1khz_i_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk1khz_i_reg[0]_i_2_n_7 ),
        .Q(clk1khz_i_reg[0]),
        .R(clear));
  CARRY4 \clk1khz_i_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\clk1khz_i_reg[0]_i_2_n_0 ,\clk1khz_i_reg[0]_i_2_n_1 ,\clk1khz_i_reg[0]_i_2_n_2 ,\clk1khz_i_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\clk1khz_i_reg[0]_i_2_n_4 ,\clk1khz_i_reg[0]_i_2_n_5 ,\clk1khz_i_reg[0]_i_2_n_6 ,\clk1khz_i_reg[0]_i_2_n_7 }),
        .S({\clk1khz_i[0]_i_6_n_0 ,\clk1khz_i[0]_i_7_n_0 ,\clk1khz_i[0]_i_8_n_0 ,\clk1khz_i[0]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk1khz_i_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk1khz_i_reg[8]_i_1_n_5 ),
        .Q(clk1khz_i_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clk1khz_i_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk1khz_i_reg[8]_i_1_n_4 ),
        .Q(clk1khz_i_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clk1khz_i_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk1khz_i_reg[12]_i_1_n_7 ),
        .Q(clk1khz_i_reg[12]),
        .R(clear));
  CARRY4 \clk1khz_i_reg[12]_i_1 
       (.CI(\clk1khz_i_reg[8]_i_1_n_0 ),
        .CO({\clk1khz_i_reg[12]_i_1_n_0 ,\clk1khz_i_reg[12]_i_1_n_1 ,\clk1khz_i_reg[12]_i_1_n_2 ,\clk1khz_i_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk1khz_i_reg[12]_i_1_n_4 ,\clk1khz_i_reg[12]_i_1_n_5 ,\clk1khz_i_reg[12]_i_1_n_6 ,\clk1khz_i_reg[12]_i_1_n_7 }),
        .S({\clk1khz_i[12]_i_2_n_0 ,\clk1khz_i[12]_i_3_n_0 ,\clk1khz_i[12]_i_4_n_0 ,\clk1khz_i[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk1khz_i_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk1khz_i_reg[12]_i_1_n_6 ),
        .Q(clk1khz_i_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clk1khz_i_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk1khz_i_reg[12]_i_1_n_5 ),
        .Q(clk1khz_i_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clk1khz_i_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk1khz_i_reg[12]_i_1_n_4 ),
        .Q(clk1khz_i_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clk1khz_i_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk1khz_i_reg[16]_i_1_n_7 ),
        .Q(clk1khz_i_reg[16]),
        .R(clear));
  CARRY4 \clk1khz_i_reg[16]_i_1 
       (.CI(\clk1khz_i_reg[12]_i_1_n_0 ),
        .CO(\NLW_clk1khz_i_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_clk1khz_i_reg[16]_i_1_O_UNCONNECTED [3:1],\clk1khz_i_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\clk1khz_i[16]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk1khz_i_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk1khz_i_reg[0]_i_2_n_6 ),
        .Q(clk1khz_i_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clk1khz_i_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk1khz_i_reg[0]_i_2_n_5 ),
        .Q(clk1khz_i_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clk1khz_i_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk1khz_i_reg[0]_i_2_n_4 ),
        .Q(clk1khz_i_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clk1khz_i_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk1khz_i_reg[4]_i_1_n_7 ),
        .Q(clk1khz_i_reg[4]),
        .R(clear));
  CARRY4 \clk1khz_i_reg[4]_i_1 
       (.CI(\clk1khz_i_reg[0]_i_2_n_0 ),
        .CO({\clk1khz_i_reg[4]_i_1_n_0 ,\clk1khz_i_reg[4]_i_1_n_1 ,\clk1khz_i_reg[4]_i_1_n_2 ,\clk1khz_i_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk1khz_i_reg[4]_i_1_n_4 ,\clk1khz_i_reg[4]_i_1_n_5 ,\clk1khz_i_reg[4]_i_1_n_6 ,\clk1khz_i_reg[4]_i_1_n_7 }),
        .S({\clk1khz_i[4]_i_2_n_0 ,\clk1khz_i[4]_i_3_n_0 ,\clk1khz_i[4]_i_4_n_0 ,\clk1khz_i[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk1khz_i_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk1khz_i_reg[4]_i_1_n_6 ),
        .Q(clk1khz_i_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clk1khz_i_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk1khz_i_reg[4]_i_1_n_5 ),
        .Q(clk1khz_i_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clk1khz_i_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk1khz_i_reg[4]_i_1_n_4 ),
        .Q(clk1khz_i_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clk1khz_i_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk1khz_i_reg[8]_i_1_n_7 ),
        .Q(clk1khz_i_reg[8]),
        .R(clear));
  CARRY4 \clk1khz_i_reg[8]_i_1 
       (.CI(\clk1khz_i_reg[4]_i_1_n_0 ),
        .CO({\clk1khz_i_reg[8]_i_1_n_0 ,\clk1khz_i_reg[8]_i_1_n_1 ,\clk1khz_i_reg[8]_i_1_n_2 ,\clk1khz_i_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk1khz_i_reg[8]_i_1_n_4 ,\clk1khz_i_reg[8]_i_1_n_5 ,\clk1khz_i_reg[8]_i_1_n_6 ,\clk1khz_i_reg[8]_i_1_n_7 }),
        .S({\clk1khz_i[8]_i_2_n_0 ,\clk1khz_i[8]_i_3_n_0 ,\clk1khz_i[8]_i_4_n_0 ,\clk1khz_i[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk1khz_i_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk1khz_i_reg[8]_i_1_n_6 ),
        .Q(clk1khz_i_reg[9]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    clk1khz_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk1khz_i_1_n_0),
        .Q(clk1khz),
        .R(1'b0));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    first16_reg
       (.CLR(1'b0),
        .D(first16_reg_i_1_n_0),
        .G(first16_reg_i_2_n_0),
        .GE(1'b1),
        .Q(led_OBUF));
  LUT1 #(
    .INIT(2'h1)) 
    first16_reg_i_1
       (.I0(led_OBUF),
        .O(first16_reg_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    first16_reg_i_2
       (.I0(btnr_IBUF),
        .I1(btnl_IBUF),
        .O(first16_reg_i_2_n_0));
  OBUF \led_OBUF[0]_inst 
       (.I(1'b1),
        .O(led[0]));
  OBUF \led_OBUF[10]_inst 
       (.I(led_OBUF),
        .O(led[10]));
  OBUF \led_OBUF[11]_inst 
       (.I(led_OBUF),
        .O(led[11]));
  OBUF \led_OBUF[12]_inst 
       (.I(led_OBUF),
        .O(led[12]));
  OBUF \led_OBUF[13]_inst 
       (.I(led_OBUF),
        .O(led[13]));
  OBUF \led_OBUF[14]_inst 
       (.I(led_OBUF),
        .O(led[14]));
  OBUF \led_OBUF[15]_inst 
       (.I(led_OBUF),
        .O(led[15]));
  OBUF \led_OBUF[1]_inst 
       (.I(1'b1),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(1'b1),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(1'b1),
        .O(led[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(1'b1),
        .O(led[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(led_OBUF),
        .O(led[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(led_OBUF),
        .O(led[6]));
  OBUF \led_OBUF[7]_inst 
       (.I(led_OBUF),
        .O(led[7]));
  OBUF \led_OBUF[8]_inst 
       (.I(led_OBUF),
        .O(led[8]));
  OBUF \led_OBUF[9]_inst 
       (.I(led_OBUF),
        .O(led[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    mark_q_d_i_1
       (.I0(mark_q_d),
        .O(mark_q_d_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mark_q_d_reg
       (.C(clk1khz),
        .CE(1'b1),
        .D(mark_q_d_i_1_n_0),
        .Q(mark_q_d),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h20202F20)) 
    \seg[2]_i_1 
       (.I0(T[1]),
        .I1(T[0]),
        .I2(mark_q_d),
        .I3(M[1]),
        .I4(M[0]),
        .O(\seg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h20202F20)) 
    \seg[3]_i_1 
       (.I0(T[0]),
        .I1(T[1]),
        .I2(mark_q_d),
        .I3(M[0]),
        .I4(M[1]),
        .O(\seg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \seg[4]_i_1 
       (.I0(T[0]),
        .I1(M[0]),
        .I2(mark_q_d),
        .O(\seg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hEEEEFFF0)) 
    \seg[5]_i_1 
       (.I0(T[0]),
        .I1(T[1]),
        .I2(M[1]),
        .I3(M[0]),
        .I4(mark_q_d),
        .O(\seg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \seg[6]_i_1 
       (.I0(T[1]),
        .I1(mark_q_d),
        .I2(M[1]),
        .O(\seg[6]_i_1_n_0 ));
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(1'b0),
        .O(seg[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[2]),
        .O(seg[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[4]),
        .O(seg[4]));
  OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[5]),
        .O(seg[5]));
  OBUF \seg_OBUF[6]_inst 
       (.I(seg_OBUF[6]),
        .O(seg[6]));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[2] 
       (.C(clk1khz),
        .CE(1'b1),
        .D(\seg[2]_i_1_n_0 ),
        .Q(seg_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[3] 
       (.C(clk1khz),
        .CE(1'b1),
        .D(\seg[3]_i_1_n_0 ),
        .Q(seg_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[4] 
       (.C(clk1khz),
        .CE(1'b1),
        .D(\seg[4]_i_1_n_0 ),
        .Q(seg_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[5] 
       (.C(clk1khz),
        .CE(1'b1),
        .D(\seg[5]_i_1_n_0 ),
        .Q(seg_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[6] 
       (.C(clk1khz),
        .CE(1'b1),
        .D(\seg[6]_i_1_n_0 ),
        .Q(seg_OBUF[6]),
        .R(1'b0));
  IBUF \swt_IBUF[15]_inst 
       (.I(swt[15]),
        .O(swt_IBUF));
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
