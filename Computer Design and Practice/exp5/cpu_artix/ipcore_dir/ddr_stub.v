// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
// Date        : Sun Jul 23 10:58:19 2017
// Host        : DESKTOP-IQ9RCDV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top ddr -prefix
//               ddr_ ddr_stub.v
// Design      : ddr
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module ddr(ddr2_dq, ddr2_dqs_p, ddr2_dqs_n, ddr2_addr, 
  ddr2_ba, ddr2_ras_n, ddr2_cas_n, ddr2_we_n, ddr2_ck_p, ddr2_ck_n, ddr2_cke, ddr2_cs_n, ddr2_dm, 
  ddr2_odt, app_addr, app_cmd, app_en, app_wdf_data, app_wdf_end, app_wdf_mask, app_wdf_wren, 
  app_rd_data, app_rd_data_end, app_rd_data_valid, app_rdy, app_wdf_rdy, app_sr_req, 
  app_ref_req, app_zq_req, app_sr_active, app_ref_ack, app_zq_ack, ui_clk, ui_clk_sync_rst, 
  init_calib_complete, sys_clk_i, device_temp_i, sys_rst)
/* synthesis syn_black_box black_box_pad_pin="ddr2_dq[15:0],ddr2_dqs_p[1:0],ddr2_dqs_n[1:0],ddr2_addr[12:0],ddr2_ba[2:0],ddr2_ras_n,ddr2_cas_n,ddr2_we_n,ddr2_ck_p[0:0],ddr2_ck_n[0:0],ddr2_cke[0:0],ddr2_cs_n[0:0],ddr2_dm[1:0],ddr2_odt[0:0],app_addr[26:0],app_cmd[2:0],app_en,app_wdf_data[63:0],app_wdf_end,app_wdf_mask[7:0],app_wdf_wren,app_rd_data[63:0],app_rd_data_end,app_rd_data_valid,app_rdy,app_wdf_rdy,app_sr_req,app_ref_req,app_zq_req,app_sr_active,app_ref_ack,app_zq_ack,ui_clk,ui_clk_sync_rst,init_calib_complete,sys_clk_i,device_temp_i[11:0],sys_rst" */;
  inout [15:0]ddr2_dq;
  inout [1:0]ddr2_dqs_p;
  inout [1:0]ddr2_dqs_n;
  output [12:0]ddr2_addr;
  output [2:0]ddr2_ba;
  output ddr2_ras_n;
  output ddr2_cas_n;
  output ddr2_we_n;
  output [0:0]ddr2_ck_p;
  output [0:0]ddr2_ck_n;
  output [0:0]ddr2_cke;
  output [0:0]ddr2_cs_n;
  output [1:0]ddr2_dm;
  output [0:0]ddr2_odt;
  input [26:0]app_addr;
  input [2:0]app_cmd;
  input app_en;
  input [63:0]app_wdf_data;
  input app_wdf_end;
  input [7:0]app_wdf_mask;
  input app_wdf_wren;
  output [63:0]app_rd_data;
  output app_rd_data_end;
  output app_rd_data_valid;
  output app_rdy;
  output app_wdf_rdy;
  input app_sr_req;
  input app_ref_req;
  input app_zq_req;
  output app_sr_active;
  output app_ref_ack;
  output app_zq_ack;
  output ui_clk;
  output ui_clk_sync_rst;
  output init_calib_complete;
  input sys_clk_i;
  input [11:0]device_temp_i;
  input sys_rst;
endmodule
