vlib work
vlib msim

vlib msim/xil_defaultlib

vmap xil_defaultlib msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../ipcore_dir/ddr/user_design/rtl/clocking/mig_7series_v4_0_clk_ibuf.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/clocking/mig_7series_v4_0_infrastructure.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/clocking/mig_7series_v4_0_iodelay_ctrl.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/clocking/mig_7series_v4_0_tempmon.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/controller/mig_7series_v4_0_arb_mux.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/controller/mig_7series_v4_0_arb_row_col.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/controller/mig_7series_v4_0_arb_select.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/controller/mig_7series_v4_0_bank_cntrl.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/controller/mig_7series_v4_0_bank_common.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/controller/mig_7series_v4_0_bank_compare.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/controller/mig_7series_v4_0_bank_mach.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/controller/mig_7series_v4_0_bank_queue.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/controller/mig_7series_v4_0_bank_state.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/controller/mig_7series_v4_0_col_mach.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/controller/mig_7series_v4_0_mc.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/controller/mig_7series_v4_0_rank_cntrl.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/controller/mig_7series_v4_0_rank_common.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/controller/mig_7series_v4_0_rank_mach.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/controller/mig_7series_v4_0_round_robin_arb.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/ecc/mig_7series_v4_0_ecc_buf.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/ecc/mig_7series_v4_0_ecc_dec_fix.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/ecc/mig_7series_v4_0_ecc_gen.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/ecc/mig_7series_v4_0_ecc_merge_enc.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/ecc/mig_7series_v4_0_fi_xor.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/ip_top/mig_7series_v4_0_memc_ui_top_std.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/ip_top/mig_7series_v4_0_mem_intfc.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_byte_group_io.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_byte_lane.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_calib_top.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_if_post_fifo.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_mc_phy.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_mc_phy_wrapper.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_of_pre_fifo.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_4lanes.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ck_addr_cmd_delay.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_dqs_found_cal.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_dqs_found_cal_hr.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_init.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_cntlr.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_data.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_edge.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_lim.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_mux.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_po_cntlr.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_samp.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_oclkdelay_cal.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_prbs_rdlvl.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_rdlvl.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_tempmon.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrcal.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrlvl.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrlvl_off_delay.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_prbs_gen.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_0_poc_cc.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_0_poc_edge_store.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_0_poc_meta.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_0_poc_pd.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_0_poc_tap_base.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_0_poc_top.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/ui/mig_7series_v4_0_ui_cmd.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/ui/mig_7series_v4_0_ui_rd_data.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/ui/mig_7series_v4_0_ui_top.v" \
"../../../../ipcore_dir/ddr/user_design/rtl/ui/mig_7series_v4_0_ui_wr_data.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../../ipcore_dir/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_top.vhd" \
"../../../../ipcore_dir/ddr/user_design/rtl/ddr_mig_sim.vhd" \
"../../../../ipcore_dir/ddr/user_design/rtl/ddr.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

