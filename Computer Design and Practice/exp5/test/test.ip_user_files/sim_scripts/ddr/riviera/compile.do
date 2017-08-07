vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/clocking/mig_7series_v4_0_clk_ibuf.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/clocking/mig_7series_v4_0_infrastructure.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/clocking/mig_7series_v4_0_iodelay_ctrl.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/clocking/mig_7series_v4_0_tempmon.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_0_arb_mux.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_0_arb_row_col.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_0_arb_select.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_0_bank_cntrl.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_0_bank_common.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_0_bank_compare.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_0_bank_mach.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_0_bank_queue.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_0_bank_state.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_0_col_mach.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_0_mc.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_0_rank_cntrl.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_0_rank_common.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_0_rank_mach.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_0_round_robin_arb.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ecc/mig_7series_v4_0_ecc_buf.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ecc/mig_7series_v4_0_ecc_dec_fix.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ecc/mig_7series_v4_0_ecc_gen.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ecc/mig_7series_v4_0_ecc_merge_enc.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ecc/mig_7series_v4_0_fi_xor.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ip_top/mig_7series_v4_0_memc_ui_top_std.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ip_top/mig_7series_v4_0_mem_intfc.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_byte_group_io.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_byte_lane.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_calib_top.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_if_post_fifo.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_mc_phy.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_mc_phy_wrapper.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_of_pre_fifo.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_4lanes.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ck_addr_cmd_delay.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_dqs_found_cal.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_dqs_found_cal_hr.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_init.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_cntlr.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_data.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_edge.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_lim.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_mux.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_po_cntlr.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_samp.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_oclkdelay_cal.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_prbs_rdlvl.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_rdlvl.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_tempmon.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrcal.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrlvl.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrlvl_off_delay.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_prbs_gen.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_poc_cc.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_poc_edge_store.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_poc_meta.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_poc_pd.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_poc_tap_base.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_poc_top.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ui/mig_7series_v4_0_ui_cmd.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ui/mig_7series_v4_0_ui_rd_data.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ui/mig_7series_v4_0_ui_top.v" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ui/mig_7series_v4_0_ui_wr_data.v" \

vcom -work xil_defaultlib -93 \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_top.vhd" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ddr_mig_sim.vhd" \
"../../../../test.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ddr.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

