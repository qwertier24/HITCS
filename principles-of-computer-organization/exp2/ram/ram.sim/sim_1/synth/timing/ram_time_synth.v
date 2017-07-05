// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Wed May 03 01:36:30 2017
// Host        : DESKTOP-IQ9RCDV running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               E:/HITCS/principles-of-computer-organization/exp2/ram/ram.sim/sim_1/synth/timing/ram_time_synth.v
// Design      : perform
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module perform
   (led,
    clk,
    seg,
    an,
    swt,
    btn);
  output [15:0]led;
  input clk;
  output [6:0]seg;
  output [7:0]an;
  input [15:0]swt;
  input [4:0]btn;

  wire [3:0]IO;
  wire [7:0]an;
  wire [4:0]btn;
  wire [4:0]btn_IBUF;
  wire [15:0]led;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;
  wire [15:0]swt;
  wire [15:12]swt_IBUF;
  wire \tIO_reg[3]_i_1_n_0 ;
  wire \tIO_reg_n_0_[0] ;
  wire \tIO_reg_n_0_[1] ;
  wire \tIO_reg_n_0_[2] ;
  wire \tIO_reg_n_0_[3] ;

initial begin
 $sdf_annotate("ram_time_synth.sdf",,,,"tool_control");
end
  OBUF \an_OBUF[0]_inst 
       (.I(1'b0),
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
       (.I(1'b1),
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
  IBUF \btn_IBUF[0]_inst 
       (.I(btn[0]),
        .O(btn_IBUF[0]));
  IBUF \btn_IBUF[1]_inst 
       (.I(btn[1]),
        .O(btn_IBUF[1]));
  IBUF \btn_IBUF[2]_inst 
       (.I(btn[2]),
        .O(btn_IBUF[2]));
  IBUF \btn_IBUF[3]_inst 
       (.I(btn[3]),
        .O(btn_IBUF[3]));
  IBUF \btn_IBUF[4]_inst 
       (.I(btn[4]),
        .O(btn_IBUF[4]));
  LUT4 #(
    .INIT(16'h2812)) 
    g0_b0
       (.I0(IO[0]),
        .I1(IO[1]),
        .I2(IO[2]),
        .I3(IO[3]),
        .O(seg_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hD860)) 
    g0_b1
       (.I0(IO[0]),
        .I1(IO[1]),
        .I2(IO[2]),
        .I3(IO[3]),
        .O(seg_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hD004)) 
    g0_b2
       (.I0(IO[0]),
        .I1(IO[1]),
        .I2(IO[2]),
        .I3(IO[3]),
        .O(seg_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8692)) 
    g0_b3
       (.I0(IO[0]),
        .I1(IO[1]),
        .I2(IO[2]),
        .I3(IO[3]),
        .O(seg_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h02BA)) 
    g0_b4
       (.I0(IO[0]),
        .I1(IO[1]),
        .I2(IO[2]),
        .I3(IO[3]),
        .O(seg_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h208E)) 
    g0_b5
       (.I0(IO[0]),
        .I1(IO[1]),
        .I2(IO[2]),
        .I3(IO[3]),
        .O(seg_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1083)) 
    g0_b6
       (.I0(IO[0]),
        .I1(IO[1]),
        .I2(IO[2]),
        .I3(IO[3]),
        .O(seg_OBUF[6]));
  LUT1 #(
    .INIT(2'h2)) 
    g0_b6_i_1
       (.I0(\tIO_reg_n_0_[0] ),
        .O(IO[0]));
  LUT1 #(
    .INIT(2'h2)) 
    g0_b6_i_2
       (.I0(\tIO_reg_n_0_[1] ),
        .O(IO[1]));
  LUT1 #(
    .INIT(2'h2)) 
    g0_b6_i_3
       (.I0(\tIO_reg_n_0_[2] ),
        .O(IO[2]));
  LUT1 #(
    .INIT(2'h2)) 
    g0_b6_i_4
       (.I0(\tIO_reg_n_0_[3] ),
        .O(IO[3]));
  OBUFT \led_OBUF[0]_inst 
       (.I(1'b0),
        .O(led[0]),
        .T(1'b1));
  OBUFT \led_OBUF[10]_inst 
       (.I(1'b0),
        .O(led[10]),
        .T(1'b1));
  OBUFT \led_OBUF[11]_inst 
       (.I(1'b0),
        .O(led[11]),
        .T(1'b1));
  OBUFT \led_OBUF[12]_inst 
       (.I(1'b0),
        .O(led[12]),
        .T(1'b1));
  OBUFT \led_OBUF[13]_inst 
       (.I(1'b0),
        .O(led[13]),
        .T(1'b1));
  OBUFT \led_OBUF[14]_inst 
       (.I(1'b0),
        .O(led[14]),
        .T(1'b1));
  OBUFT \led_OBUF[15]_inst 
       (.I(1'b0),
        .O(led[15]),
        .T(1'b1));
  OBUFT \led_OBUF[1]_inst 
       (.I(1'b0),
        .O(led[1]),
        .T(1'b1));
  OBUFT \led_OBUF[2]_inst 
       (.I(1'b0),
        .O(led[2]),
        .T(1'b1));
  OBUFT \led_OBUF[3]_inst 
       (.I(1'b0),
        .O(led[3]),
        .T(1'b1));
  OBUFT \led_OBUF[4]_inst 
       (.I(1'b0),
        .O(led[4]),
        .T(1'b1));
  OBUFT \led_OBUF[5]_inst 
       (.I(1'b0),
        .O(led[5]),
        .T(1'b1));
  OBUFT \led_OBUF[6]_inst 
       (.I(1'b0),
        .O(led[6]),
        .T(1'b1));
  OBUFT \led_OBUF[7]_inst 
       (.I(1'b0),
        .O(led[7]),
        .T(1'b1));
  OBUFT \led_OBUF[8]_inst 
       (.I(1'b0),
        .O(led[8]),
        .T(1'b1));
  OBUFT \led_OBUF[9]_inst 
       (.I(1'b0),
        .O(led[9]),
        .T(1'b1));
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[2]),
        .O(seg[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[3]),
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
  IBUF \swt_IBUF[12]_inst 
       (.I(swt[12]),
        .O(swt_IBUF[12]));
  IBUF \swt_IBUF[13]_inst 
       (.I(swt[13]),
        .O(swt_IBUF[13]));
  IBUF \swt_IBUF[14]_inst 
       (.I(swt[14]),
        .O(swt_IBUF[14]));
  IBUF \swt_IBUF[15]_inst 
       (.I(swt[15]),
        .O(swt_IBUF[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tIO_reg[0] 
       (.CLR(1'b0),
        .D(swt_IBUF[12]),
        .G(\tIO_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\tIO_reg_n_0_[0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tIO_reg[1] 
       (.CLR(1'b0),
        .D(swt_IBUF[13]),
        .G(\tIO_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\tIO_reg_n_0_[1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tIO_reg[2] 
       (.CLR(1'b0),
        .D(swt_IBUF[14]),
        .G(\tIO_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\tIO_reg_n_0_[2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tIO_reg[3] 
       (.CLR(1'b0),
        .D(swt_IBUF[15]),
        .G(\tIO_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\tIO_reg_n_0_[3] ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \tIO_reg[3]_i_1 
       (.I0(btn_IBUF[2]),
        .I1(btn_IBUF[0]),
        .I2(btn_IBUF[1]),
        .I3(btn_IBUF[4]),
        .I4(btn_IBUF[3]),
        .O(\tIO_reg[3]_i_1_n_0 ));
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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
