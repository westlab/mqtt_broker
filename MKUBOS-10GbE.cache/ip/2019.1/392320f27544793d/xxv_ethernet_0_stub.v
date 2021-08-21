// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Tue Dec  1 15:56:42 2020
// Host        : hien running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ xxv_ethernet_0_stub.v
// Design      : xxv_ethernet_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu19eg-ffvc1760-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xxv_ethernet_v3_0_0,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(gt_rxp_in_0, gt_rxn_in_0, gt_txp_out_0, 
  gt_txn_out_0, gt_rxp_in_1, gt_rxn_in_1, gt_txp_out_1, gt_txn_out_1, gt_rxp_in_2, gt_rxn_in_2, 
  gt_txp_out_2, gt_txn_out_2, gt_rxp_in_3, gt_rxn_in_3, gt_txp_out_3, gt_txn_out_3, 
  tx_clk_out_0, rx_core_clk_0, rx_clk_out_0, gt_loopback_in_0, rx_reset_0, user_rx_reset_0, 
  rxrecclkout_0, rx_axis_tvalid_0, rx_axis_tdata_0, rx_axis_tlast_0, rx_axis_tkeep_0, 
  rx_axis_tuser_0, rx_preambleout_0, ctl_rx_test_pattern_0, ctl_rx_test_pattern_enable_0, 
  ctl_rx_data_pattern_select_0, ctl_rx_enable_0, ctl_rx_delete_fcs_0, 
  ctl_rx_ignore_fcs_0, ctl_rx_max_packet_len_0, ctl_rx_min_packet_len_0, 
  ctl_rx_custom_preamble_enable_0, ctl_rx_check_sfd_0, ctl_rx_check_preamble_0, 
  ctl_rx_process_lfi_0, ctl_rx_force_resync_0, stat_rx_block_lock_0, 
  stat_rx_framing_err_valid_0, stat_rx_framing_err_0, stat_rx_hi_ber_0, 
  stat_rx_valid_ctrl_code_0, stat_rx_bad_code_0, stat_rx_total_packets_0, 
  stat_rx_total_good_packets_0, stat_rx_total_bytes_0, stat_rx_total_good_bytes_0, 
  stat_rx_packet_small_0, stat_rx_jabber_0, stat_rx_packet_large_0, stat_rx_oversize_0, 
  stat_rx_undersize_0, stat_rx_toolong_0, stat_rx_fragment_0, stat_rx_packet_64_bytes_0, 
  stat_rx_packet_65_127_bytes_0, stat_rx_packet_128_255_bytes_0, 
  stat_rx_packet_256_511_bytes_0, stat_rx_packet_512_1023_bytes_0, 
  stat_rx_packet_1024_1518_bytes_0, stat_rx_packet_1519_1522_bytes_0, 
  stat_rx_packet_1523_1548_bytes_0, stat_rx_bad_fcs_0, stat_rx_packet_bad_fcs_0, 
  stat_rx_stomped_fcs_0, stat_rx_packet_1549_2047_bytes_0, 
  stat_rx_packet_2048_4095_bytes_0, stat_rx_packet_4096_8191_bytes_0, 
  stat_rx_packet_8192_9215_bytes_0, stat_rx_unicast_0, stat_rx_multicast_0, 
  stat_rx_broadcast_0, stat_rx_vlan_0, stat_rx_inrangeerr_0, stat_rx_bad_preamble_0, 
  stat_rx_bad_sfd_0, stat_rx_got_signal_os_0, stat_rx_test_pattern_mismatch_0, 
  stat_rx_truncated_0, stat_rx_local_fault_0, stat_rx_remote_fault_0, 
  stat_rx_internal_local_fault_0, stat_rx_received_local_fault_0, stat_rx_status_0, 
  tx_reset_0, user_tx_reset_0, tx_axis_tready_0, tx_axis_tvalid_0, tx_axis_tdata_0, 
  tx_axis_tlast_0, tx_axis_tkeep_0, tx_axis_tuser_0, tx_unfout_0, tx_preamblein_0, 
  ctl_tx_test_pattern_0, ctl_tx_test_pattern_enable_0, ctl_tx_test_pattern_select_0, 
  ctl_tx_data_pattern_select_0, ctl_tx_test_pattern_seed_a_0, 
  ctl_tx_test_pattern_seed_b_0, ctl_tx_enable_0, ctl_tx_fcs_ins_enable_0, 
  ctl_tx_ipg_value_0, ctl_tx_send_lfi_0, ctl_tx_send_rfi_0, ctl_tx_send_idle_0, 
  ctl_tx_custom_preamble_enable_0, ctl_tx_ignore_fcs_0, stat_tx_total_packets_0, 
  stat_tx_total_bytes_0, stat_tx_total_good_packets_0, stat_tx_total_good_bytes_0, 
  stat_tx_packet_64_bytes_0, stat_tx_packet_65_127_bytes_0, 
  stat_tx_packet_128_255_bytes_0, stat_tx_packet_256_511_bytes_0, 
  stat_tx_packet_512_1023_bytes_0, stat_tx_packet_1024_1518_bytes_0, 
  stat_tx_packet_1519_1522_bytes_0, stat_tx_packet_1523_1548_bytes_0, 
  stat_tx_packet_small_0, stat_tx_packet_large_0, stat_tx_packet_1549_2047_bytes_0, 
  stat_tx_packet_2048_4095_bytes_0, stat_tx_packet_4096_8191_bytes_0, 
  stat_tx_packet_8192_9215_bytes_0, stat_tx_unicast_0, stat_tx_multicast_0, 
  stat_tx_broadcast_0, stat_tx_vlan_0, stat_tx_bad_fcs_0, stat_tx_frame_error_0, 
  stat_tx_local_fault_0, gt_dmonitorout_0, gt_eyescandataerror_0, gt_eyescanreset_0, 
  gt_eyescantrigger_0, gt_pcsrsvdin_0, gt_rxbufreset_0, gt_rxbufstatus_0, gt_rxcdrhold_0, 
  gt_rxcommadeten_0, gt_rxdfeagchold_0, gt_rxdfelpmreset_0, gt_rxlatclk_0, gt_rxlpmen_0, 
  gt_rxpcsreset_0, gt_rxpmareset_0, gt_rxpolarity_0, gt_rxprbscntreset_0, gt_rxprbserr_0, 
  gt_rxprbssel_0, gt_rxrate_0, gt_rxslide_in_0, gt_rxstartofseq_0, gt_txbufstatus_0, 
  gt_txinhibit_0, gt_txlatclk_0, gt_txmaincursor_0, gt_txpcsreset_0, gt_txpmareset_0, 
  gt_txpolarity_0, gt_txpostcursor_0, gt_txprbsforceerr_0, gt_txprbssel_0, 
  gt_txprecursor_0, gt_txdiffctrl_0, gt_drpdo_0, gt_drprdy_0, gt_drpen_0, gt_drpwe_0, 
  gt_drpaddr_0, gt_drpdi_0, gt_drpclk_0, gtwiz_reset_tx_datapath_0, 
  gtwiz_reset_rx_datapath_0, gtpowergood_out_0, txoutclksel_in_0, rxoutclksel_in_0, 
  tx_clk_out_1, rx_core_clk_1, rx_clk_out_1, gt_loopback_in_1, rx_reset_1, user_rx_reset_1, 
  rxrecclkout_1, rx_axis_tvalid_1, rx_axis_tdata_1, rx_axis_tlast_1, rx_axis_tkeep_1, 
  rx_axis_tuser_1, rx_preambleout_1, ctl_rx_test_pattern_1, ctl_rx_test_pattern_enable_1, 
  ctl_rx_data_pattern_select_1, ctl_rx_enable_1, ctl_rx_delete_fcs_1, 
  ctl_rx_ignore_fcs_1, ctl_rx_max_packet_len_1, ctl_rx_min_packet_len_1, 
  ctl_rx_custom_preamble_enable_1, ctl_rx_check_sfd_1, ctl_rx_check_preamble_1, 
  ctl_rx_process_lfi_1, ctl_rx_force_resync_1, stat_rx_block_lock_1, 
  stat_rx_framing_err_valid_1, stat_rx_framing_err_1, stat_rx_hi_ber_1, 
  stat_rx_valid_ctrl_code_1, stat_rx_bad_code_1, stat_rx_total_packets_1, 
  stat_rx_total_good_packets_1, stat_rx_total_bytes_1, stat_rx_total_good_bytes_1, 
  stat_rx_packet_small_1, stat_rx_jabber_1, stat_rx_packet_large_1, stat_rx_oversize_1, 
  stat_rx_undersize_1, stat_rx_toolong_1, stat_rx_fragment_1, stat_rx_packet_64_bytes_1, 
  stat_rx_packet_65_127_bytes_1, stat_rx_packet_128_255_bytes_1, 
  stat_rx_packet_256_511_bytes_1, stat_rx_packet_512_1023_bytes_1, 
  stat_rx_packet_1024_1518_bytes_1, stat_rx_packet_1519_1522_bytes_1, 
  stat_rx_packet_1523_1548_bytes_1, stat_rx_bad_fcs_1, stat_rx_packet_bad_fcs_1, 
  stat_rx_stomped_fcs_1, stat_rx_packet_1549_2047_bytes_1, 
  stat_rx_packet_2048_4095_bytes_1, stat_rx_packet_4096_8191_bytes_1, 
  stat_rx_packet_8192_9215_bytes_1, stat_rx_unicast_1, stat_rx_multicast_1, 
  stat_rx_broadcast_1, stat_rx_vlan_1, stat_rx_inrangeerr_1, stat_rx_bad_preamble_1, 
  stat_rx_bad_sfd_1, stat_rx_got_signal_os_1, stat_rx_test_pattern_mismatch_1, 
  stat_rx_truncated_1, stat_rx_local_fault_1, stat_rx_remote_fault_1, 
  stat_rx_internal_local_fault_1, stat_rx_received_local_fault_1, stat_rx_status_1, 
  tx_reset_1, user_tx_reset_1, tx_axis_tready_1, tx_axis_tvalid_1, tx_axis_tdata_1, 
  tx_axis_tlast_1, tx_axis_tkeep_1, tx_axis_tuser_1, tx_unfout_1, tx_preamblein_1, 
  ctl_tx_test_pattern_1, ctl_tx_test_pattern_enable_1, ctl_tx_test_pattern_select_1, 
  ctl_tx_data_pattern_select_1, ctl_tx_test_pattern_seed_a_1, 
  ctl_tx_test_pattern_seed_b_1, ctl_tx_enable_1, ctl_tx_fcs_ins_enable_1, 
  ctl_tx_ipg_value_1, ctl_tx_send_lfi_1, ctl_tx_send_rfi_1, ctl_tx_send_idle_1, 
  ctl_tx_custom_preamble_enable_1, ctl_tx_ignore_fcs_1, stat_tx_total_packets_1, 
  stat_tx_total_bytes_1, stat_tx_total_good_packets_1, stat_tx_total_good_bytes_1, 
  stat_tx_packet_64_bytes_1, stat_tx_packet_65_127_bytes_1, 
  stat_tx_packet_128_255_bytes_1, stat_tx_packet_256_511_bytes_1, 
  stat_tx_packet_512_1023_bytes_1, stat_tx_packet_1024_1518_bytes_1, 
  stat_tx_packet_1519_1522_bytes_1, stat_tx_packet_1523_1548_bytes_1, 
  stat_tx_packet_small_1, stat_tx_packet_large_1, stat_tx_packet_1549_2047_bytes_1, 
  stat_tx_packet_2048_4095_bytes_1, stat_tx_packet_4096_8191_bytes_1, 
  stat_tx_packet_8192_9215_bytes_1, stat_tx_unicast_1, stat_tx_multicast_1, 
  stat_tx_broadcast_1, stat_tx_vlan_1, stat_tx_bad_fcs_1, stat_tx_frame_error_1, 
  stat_tx_local_fault_1, gt_dmonitorout_1, gt_eyescandataerror_1, gt_eyescanreset_1, 
  gt_eyescantrigger_1, gt_pcsrsvdin_1, gt_rxbufreset_1, gt_rxbufstatus_1, gt_rxcdrhold_1, 
  gt_rxcommadeten_1, gt_rxdfeagchold_1, gt_rxdfelpmreset_1, gt_rxlatclk_1, gt_rxlpmen_1, 
  gt_rxpcsreset_1, gt_rxpmareset_1, gt_rxpolarity_1, gt_rxprbscntreset_1, gt_rxprbserr_1, 
  gt_rxprbssel_1, gt_rxrate_1, gt_rxslide_in_1, gt_rxstartofseq_1, gt_txbufstatus_1, 
  gt_txinhibit_1, gt_txlatclk_1, gt_txmaincursor_1, gt_txpcsreset_1, gt_txpmareset_1, 
  gt_txpolarity_1, gt_txpostcursor_1, gt_txprbsforceerr_1, gt_txprbssel_1, 
  gt_txprecursor_1, gt_txdiffctrl_1, gt_drpdo_1, gt_drprdy_1, gt_drpen_1, gt_drpwe_1, 
  gt_drpaddr_1, gt_drpdi_1, gt_drpclk_1, gtwiz_reset_tx_datapath_1, 
  gtwiz_reset_rx_datapath_1, gtpowergood_out_1, txoutclksel_in_1, rxoutclksel_in_1, 
  tx_clk_out_2, rx_core_clk_2, rx_clk_out_2, gt_loopback_in_2, rx_reset_2, user_rx_reset_2, 
  rxrecclkout_2, rx_axis_tvalid_2, rx_axis_tdata_2, rx_axis_tlast_2, rx_axis_tkeep_2, 
  rx_axis_tuser_2, rx_preambleout_2, ctl_rx_test_pattern_2, ctl_rx_test_pattern_enable_2, 
  ctl_rx_data_pattern_select_2, ctl_rx_enable_2, ctl_rx_delete_fcs_2, 
  ctl_rx_ignore_fcs_2, ctl_rx_max_packet_len_2, ctl_rx_min_packet_len_2, 
  ctl_rx_custom_preamble_enable_2, ctl_rx_check_sfd_2, ctl_rx_check_preamble_2, 
  ctl_rx_process_lfi_2, ctl_rx_force_resync_2, stat_rx_block_lock_2, 
  stat_rx_framing_err_valid_2, stat_rx_framing_err_2, stat_rx_hi_ber_2, 
  stat_rx_valid_ctrl_code_2, stat_rx_bad_code_2, stat_rx_total_packets_2, 
  stat_rx_total_good_packets_2, stat_rx_total_bytes_2, stat_rx_total_good_bytes_2, 
  stat_rx_packet_small_2, stat_rx_jabber_2, stat_rx_packet_large_2, stat_rx_oversize_2, 
  stat_rx_undersize_2, stat_rx_toolong_2, stat_rx_fragment_2, stat_rx_packet_64_bytes_2, 
  stat_rx_packet_65_127_bytes_2, stat_rx_packet_128_255_bytes_2, 
  stat_rx_packet_256_511_bytes_2, stat_rx_packet_512_1023_bytes_2, 
  stat_rx_packet_1024_1518_bytes_2, stat_rx_packet_1519_1522_bytes_2, 
  stat_rx_packet_1523_1548_bytes_2, stat_rx_bad_fcs_2, stat_rx_packet_bad_fcs_2, 
  stat_rx_stomped_fcs_2, stat_rx_packet_1549_2047_bytes_2, 
  stat_rx_packet_2048_4095_bytes_2, stat_rx_packet_4096_8191_bytes_2, 
  stat_rx_packet_8192_9215_bytes_2, stat_rx_unicast_2, stat_rx_multicast_2, 
  stat_rx_broadcast_2, stat_rx_vlan_2, stat_rx_inrangeerr_2, stat_rx_bad_preamble_2, 
  stat_rx_bad_sfd_2, stat_rx_got_signal_os_2, stat_rx_test_pattern_mismatch_2, 
  stat_rx_truncated_2, stat_rx_local_fault_2, stat_rx_remote_fault_2, 
  stat_rx_internal_local_fault_2, stat_rx_received_local_fault_2, stat_rx_status_2, 
  tx_reset_2, user_tx_reset_2, tx_axis_tready_2, tx_axis_tvalid_2, tx_axis_tdata_2, 
  tx_axis_tlast_2, tx_axis_tkeep_2, tx_axis_tuser_2, tx_unfout_2, tx_preamblein_2, 
  ctl_tx_test_pattern_2, ctl_tx_test_pattern_enable_2, ctl_tx_test_pattern_select_2, 
  ctl_tx_data_pattern_select_2, ctl_tx_test_pattern_seed_a_2, 
  ctl_tx_test_pattern_seed_b_2, ctl_tx_enable_2, ctl_tx_fcs_ins_enable_2, 
  ctl_tx_ipg_value_2, ctl_tx_send_lfi_2, ctl_tx_send_rfi_2, ctl_tx_send_idle_2, 
  ctl_tx_custom_preamble_enable_2, ctl_tx_ignore_fcs_2, stat_tx_total_packets_2, 
  stat_tx_total_bytes_2, stat_tx_total_good_packets_2, stat_tx_total_good_bytes_2, 
  stat_tx_packet_64_bytes_2, stat_tx_packet_65_127_bytes_2, 
  stat_tx_packet_128_255_bytes_2, stat_tx_packet_256_511_bytes_2, 
  stat_tx_packet_512_1023_bytes_2, stat_tx_packet_1024_1518_bytes_2, 
  stat_tx_packet_1519_1522_bytes_2, stat_tx_packet_1523_1548_bytes_2, 
  stat_tx_packet_small_2, stat_tx_packet_large_2, stat_tx_packet_1549_2047_bytes_2, 
  stat_tx_packet_2048_4095_bytes_2, stat_tx_packet_4096_8191_bytes_2, 
  stat_tx_packet_8192_9215_bytes_2, stat_tx_unicast_2, stat_tx_multicast_2, 
  stat_tx_broadcast_2, stat_tx_vlan_2, stat_tx_bad_fcs_2, stat_tx_frame_error_2, 
  stat_tx_local_fault_2, gt_dmonitorout_2, gt_eyescandataerror_2, gt_eyescanreset_2, 
  gt_eyescantrigger_2, gt_pcsrsvdin_2, gt_rxbufreset_2, gt_rxbufstatus_2, gt_rxcdrhold_2, 
  gt_rxcommadeten_2, gt_rxdfeagchold_2, gt_rxdfelpmreset_2, gt_rxlatclk_2, gt_rxlpmen_2, 
  gt_rxpcsreset_2, gt_rxpmareset_2, gt_rxpolarity_2, gt_rxprbscntreset_2, gt_rxprbserr_2, 
  gt_rxprbssel_2, gt_rxrate_2, gt_rxslide_in_2, gt_rxstartofseq_2, gt_txbufstatus_2, 
  gt_txinhibit_2, gt_txlatclk_2, gt_txmaincursor_2, gt_txpcsreset_2, gt_txpmareset_2, 
  gt_txpolarity_2, gt_txpostcursor_2, gt_txprbsforceerr_2, gt_txprbssel_2, 
  gt_txprecursor_2, gt_txdiffctrl_2, gt_drpdo_2, gt_drprdy_2, gt_drpen_2, gt_drpwe_2, 
  gt_drpaddr_2, gt_drpdi_2, gt_drpclk_2, gtwiz_reset_tx_datapath_2, 
  gtwiz_reset_rx_datapath_2, gtpowergood_out_2, txoutclksel_in_2, rxoutclksel_in_2, 
  tx_clk_out_3, rx_core_clk_3, rx_clk_out_3, gt_loopback_in_3, rx_reset_3, user_rx_reset_3, 
  rxrecclkout_3, rx_axis_tvalid_3, rx_axis_tdata_3, rx_axis_tlast_3, rx_axis_tkeep_3, 
  rx_axis_tuser_3, rx_preambleout_3, ctl_rx_test_pattern_3, ctl_rx_test_pattern_enable_3, 
  ctl_rx_data_pattern_select_3, ctl_rx_enable_3, ctl_rx_delete_fcs_3, 
  ctl_rx_ignore_fcs_3, ctl_rx_max_packet_len_3, ctl_rx_min_packet_len_3, 
  ctl_rx_custom_preamble_enable_3, ctl_rx_check_sfd_3, ctl_rx_check_preamble_3, 
  ctl_rx_process_lfi_3, ctl_rx_force_resync_3, stat_rx_block_lock_3, 
  stat_rx_framing_err_valid_3, stat_rx_framing_err_3, stat_rx_hi_ber_3, 
  stat_rx_valid_ctrl_code_3, stat_rx_bad_code_3, stat_rx_total_packets_3, 
  stat_rx_total_good_packets_3, stat_rx_total_bytes_3, stat_rx_total_good_bytes_3, 
  stat_rx_packet_small_3, stat_rx_jabber_3, stat_rx_packet_large_3, stat_rx_oversize_3, 
  stat_rx_undersize_3, stat_rx_toolong_3, stat_rx_fragment_3, stat_rx_packet_64_bytes_3, 
  stat_rx_packet_65_127_bytes_3, stat_rx_packet_128_255_bytes_3, 
  stat_rx_packet_256_511_bytes_3, stat_rx_packet_512_1023_bytes_3, 
  stat_rx_packet_1024_1518_bytes_3, stat_rx_packet_1519_1522_bytes_3, 
  stat_rx_packet_1523_1548_bytes_3, stat_rx_bad_fcs_3, stat_rx_packet_bad_fcs_3, 
  stat_rx_stomped_fcs_3, stat_rx_packet_1549_2047_bytes_3, 
  stat_rx_packet_2048_4095_bytes_3, stat_rx_packet_4096_8191_bytes_3, 
  stat_rx_packet_8192_9215_bytes_3, stat_rx_unicast_3, stat_rx_multicast_3, 
  stat_rx_broadcast_3, stat_rx_vlan_3, stat_rx_inrangeerr_3, stat_rx_bad_preamble_3, 
  stat_rx_bad_sfd_3, stat_rx_got_signal_os_3, stat_rx_test_pattern_mismatch_3, 
  stat_rx_truncated_3, stat_rx_local_fault_3, stat_rx_remote_fault_3, 
  stat_rx_internal_local_fault_3, stat_rx_received_local_fault_3, stat_rx_status_3, 
  tx_reset_3, user_tx_reset_3, tx_axis_tready_3, tx_axis_tvalid_3, tx_axis_tdata_3, 
  tx_axis_tlast_3, tx_axis_tkeep_3, tx_axis_tuser_3, tx_unfout_3, tx_preamblein_3, 
  ctl_tx_test_pattern_3, ctl_tx_test_pattern_enable_3, ctl_tx_test_pattern_select_3, 
  ctl_tx_data_pattern_select_3, ctl_tx_test_pattern_seed_a_3, 
  ctl_tx_test_pattern_seed_b_3, ctl_tx_enable_3, ctl_tx_fcs_ins_enable_3, 
  ctl_tx_ipg_value_3, ctl_tx_send_lfi_3, ctl_tx_send_rfi_3, ctl_tx_send_idle_3, 
  ctl_tx_custom_preamble_enable_3, ctl_tx_ignore_fcs_3, stat_tx_total_packets_3, 
  stat_tx_total_bytes_3, stat_tx_total_good_packets_3, stat_tx_total_good_bytes_3, 
  stat_tx_packet_64_bytes_3, stat_tx_packet_65_127_bytes_3, 
  stat_tx_packet_128_255_bytes_3, stat_tx_packet_256_511_bytes_3, 
  stat_tx_packet_512_1023_bytes_3, stat_tx_packet_1024_1518_bytes_3, 
  stat_tx_packet_1519_1522_bytes_3, stat_tx_packet_1523_1548_bytes_3, 
  stat_tx_packet_small_3, stat_tx_packet_large_3, stat_tx_packet_1549_2047_bytes_3, 
  stat_tx_packet_2048_4095_bytes_3, stat_tx_packet_4096_8191_bytes_3, 
  stat_tx_packet_8192_9215_bytes_3, stat_tx_unicast_3, stat_tx_multicast_3, 
  stat_tx_broadcast_3, stat_tx_vlan_3, stat_tx_bad_fcs_3, stat_tx_frame_error_3, 
  stat_tx_local_fault_3, gt_dmonitorout_3, gt_eyescandataerror_3, gt_eyescanreset_3, 
  gt_eyescantrigger_3, gt_pcsrsvdin_3, gt_rxbufreset_3, gt_rxbufstatus_3, gt_rxcdrhold_3, 
  gt_rxcommadeten_3, gt_rxdfeagchold_3, gt_rxdfelpmreset_3, gt_rxlatclk_3, gt_rxlpmen_3, 
  gt_rxpcsreset_3, gt_rxpmareset_3, gt_rxpolarity_3, gt_rxprbscntreset_3, gt_rxprbserr_3, 
  gt_rxprbssel_3, gt_rxrate_3, gt_rxslide_in_3, gt_rxstartofseq_3, gt_txbufstatus_3, 
  gt_txinhibit_3, gt_txlatclk_3, gt_txmaincursor_3, gt_txpcsreset_3, gt_txpmareset_3, 
  gt_txpolarity_3, gt_txpostcursor_3, gt_txprbsforceerr_3, gt_txprbssel_3, 
  gt_txprecursor_3, gt_txdiffctrl_3, gt_drpdo_3, gt_drprdy_3, gt_drpen_3, gt_drpwe_3, 
  gt_drpaddr_3, gt_drpdi_3, gt_drpclk_3, gtwiz_reset_tx_datapath_3, 
  gtwiz_reset_rx_datapath_3, gtpowergood_out_3, txoutclksel_in_3, rxoutclksel_in_3, 
  gt_refclk_p, gt_refclk_n, gt_refclk_out, sys_reset, dclk)
/* synthesis syn_black_box black_box_pad_pin="gt_rxp_in_0,gt_rxn_in_0,gt_txp_out_0,gt_txn_out_0,gt_rxp_in_1,gt_rxn_in_1,gt_txp_out_1,gt_txn_out_1,gt_rxp_in_2,gt_rxn_in_2,gt_txp_out_2,gt_txn_out_2,gt_rxp_in_3,gt_rxn_in_3,gt_txp_out_3,gt_txn_out_3,tx_clk_out_0,rx_core_clk_0,rx_clk_out_0,gt_loopback_in_0[2:0],rx_reset_0,user_rx_reset_0,rxrecclkout_0,rx_axis_tvalid_0,rx_axis_tdata_0[63:0],rx_axis_tlast_0,rx_axis_tkeep_0[7:0],rx_axis_tuser_0,rx_preambleout_0[55:0],ctl_rx_test_pattern_0,ctl_rx_test_pattern_enable_0,ctl_rx_data_pattern_select_0,ctl_rx_enable_0,ctl_rx_delete_fcs_0,ctl_rx_ignore_fcs_0,ctl_rx_max_packet_len_0[14:0],ctl_rx_min_packet_len_0[7:0],ctl_rx_custom_preamble_enable_0,ctl_rx_check_sfd_0,ctl_rx_check_preamble_0,ctl_rx_process_lfi_0,ctl_rx_force_resync_0,stat_rx_block_lock_0,stat_rx_framing_err_valid_0,stat_rx_framing_err_0,stat_rx_hi_ber_0,stat_rx_valid_ctrl_code_0,stat_rx_bad_code_0,stat_rx_total_packets_0[1:0],stat_rx_total_good_packets_0,stat_rx_total_bytes_0[3:0],stat_rx_total_good_bytes_0[13:0],stat_rx_packet_small_0,stat_rx_jabber_0,stat_rx_packet_large_0,stat_rx_oversize_0,stat_rx_undersize_0,stat_rx_toolong_0,stat_rx_fragment_0,stat_rx_packet_64_bytes_0,stat_rx_packet_65_127_bytes_0,stat_rx_packet_128_255_bytes_0,stat_rx_packet_256_511_bytes_0,stat_rx_packet_512_1023_bytes_0,stat_rx_packet_1024_1518_bytes_0,stat_rx_packet_1519_1522_bytes_0,stat_rx_packet_1523_1548_bytes_0,stat_rx_bad_fcs_0[1:0],stat_rx_packet_bad_fcs_0,stat_rx_stomped_fcs_0[1:0],stat_rx_packet_1549_2047_bytes_0,stat_rx_packet_2048_4095_bytes_0,stat_rx_packet_4096_8191_bytes_0,stat_rx_packet_8192_9215_bytes_0,stat_rx_unicast_0,stat_rx_multicast_0,stat_rx_broadcast_0,stat_rx_vlan_0,stat_rx_inrangeerr_0,stat_rx_bad_preamble_0,stat_rx_bad_sfd_0,stat_rx_got_signal_os_0,stat_rx_test_pattern_mismatch_0,stat_rx_truncated_0,stat_rx_local_fault_0,stat_rx_remote_fault_0,stat_rx_internal_local_fault_0,stat_rx_received_local_fault_0,stat_rx_status_0,tx_reset_0,user_tx_reset_0,tx_axis_tready_0,tx_axis_tvalid_0,tx_axis_tdata_0[63:0],tx_axis_tlast_0,tx_axis_tkeep_0[7:0],tx_axis_tuser_0,tx_unfout_0,tx_preamblein_0[55:0],ctl_tx_test_pattern_0,ctl_tx_test_pattern_enable_0,ctl_tx_test_pattern_select_0,ctl_tx_data_pattern_select_0,ctl_tx_test_pattern_seed_a_0[57:0],ctl_tx_test_pattern_seed_b_0[57:0],ctl_tx_enable_0,ctl_tx_fcs_ins_enable_0,ctl_tx_ipg_value_0[3:0],ctl_tx_send_lfi_0,ctl_tx_send_rfi_0,ctl_tx_send_idle_0,ctl_tx_custom_preamble_enable_0,ctl_tx_ignore_fcs_0,stat_tx_total_packets_0,stat_tx_total_bytes_0[3:0],stat_tx_total_good_packets_0,stat_tx_total_good_bytes_0[13:0],stat_tx_packet_64_bytes_0,stat_tx_packet_65_127_bytes_0,stat_tx_packet_128_255_bytes_0,stat_tx_packet_256_511_bytes_0,stat_tx_packet_512_1023_bytes_0,stat_tx_packet_1024_1518_bytes_0,stat_tx_packet_1519_1522_bytes_0,stat_tx_packet_1523_1548_bytes_0,stat_tx_packet_small_0,stat_tx_packet_large_0,stat_tx_packet_1549_2047_bytes_0,stat_tx_packet_2048_4095_bytes_0,stat_tx_packet_4096_8191_bytes_0,stat_tx_packet_8192_9215_bytes_0,stat_tx_unicast_0,stat_tx_multicast_0,stat_tx_broadcast_0,stat_tx_vlan_0,stat_tx_bad_fcs_0,stat_tx_frame_error_0,stat_tx_local_fault_0,gt_dmonitorout_0[16:0],gt_eyescandataerror_0[0:0],gt_eyescanreset_0[0:0],gt_eyescantrigger_0[0:0],gt_pcsrsvdin_0[15:0],gt_rxbufreset_0[0:0],gt_rxbufstatus_0[2:0],gt_rxcdrhold_0[0:0],gt_rxcommadeten_0[0:0],gt_rxdfeagchold_0[0:0],gt_rxdfelpmreset_0[0:0],gt_rxlatclk_0[0:0],gt_rxlpmen_0[0:0],gt_rxpcsreset_0[0:0],gt_rxpmareset_0[0:0],gt_rxpolarity_0[0:0],gt_rxprbscntreset_0[0:0],gt_rxprbserr_0[0:0],gt_rxprbssel_0[3:0],gt_rxrate_0[2:0],gt_rxslide_in_0[0:0],gt_rxstartofseq_0[1:0],gt_txbufstatus_0[1:0],gt_txinhibit_0[0:0],gt_txlatclk_0[0:0],gt_txmaincursor_0[6:0],gt_txpcsreset_0[0:0],gt_txpmareset_0[0:0],gt_txpolarity_0[0:0],gt_txpostcursor_0[4:0],gt_txprbsforceerr_0[0:0],gt_txprbssel_0[3:0],gt_txprecursor_0[4:0],gt_txdiffctrl_0[4:0],gt_drpdo_0[15:0],gt_drprdy_0[0:0],gt_drpen_0[0:0],gt_drpwe_0[0:0],gt_drpaddr_0[9:0],gt_drpdi_0[15:0],gt_drpclk_0,gtwiz_reset_tx_datapath_0,gtwiz_reset_rx_datapath_0,gtpowergood_out_0,txoutclksel_in_0[2:0],rxoutclksel_in_0[2:0],tx_clk_out_1,rx_core_clk_1,rx_clk_out_1,gt_loopback_in_1[2:0],rx_reset_1,user_rx_reset_1,rxrecclkout_1,rx_axis_tvalid_1,rx_axis_tdata_1[63:0],rx_axis_tlast_1,rx_axis_tkeep_1[7:0],rx_axis_tuser_1,rx_preambleout_1[55:0],ctl_rx_test_pattern_1,ctl_rx_test_pattern_enable_1,ctl_rx_data_pattern_select_1,ctl_rx_enable_1,ctl_rx_delete_fcs_1,ctl_rx_ignore_fcs_1,ctl_rx_max_packet_len_1[14:0],ctl_rx_min_packet_len_1[7:0],ctl_rx_custom_preamble_enable_1,ctl_rx_check_sfd_1,ctl_rx_check_preamble_1,ctl_rx_process_lfi_1,ctl_rx_force_resync_1,stat_rx_block_lock_1,stat_rx_framing_err_valid_1,stat_rx_framing_err_1,stat_rx_hi_ber_1,stat_rx_valid_ctrl_code_1,stat_rx_bad_code_1,stat_rx_total_packets_1[1:0],stat_rx_total_good_packets_1,stat_rx_total_bytes_1[3:0],stat_rx_total_good_bytes_1[13:0],stat_rx_packet_small_1,stat_rx_jabber_1,stat_rx_packet_large_1,stat_rx_oversize_1,stat_rx_undersize_1,stat_rx_toolong_1,stat_rx_fragment_1,stat_rx_packet_64_bytes_1,stat_rx_packet_65_127_bytes_1,stat_rx_packet_128_255_bytes_1,stat_rx_packet_256_511_bytes_1,stat_rx_packet_512_1023_bytes_1,stat_rx_packet_1024_1518_bytes_1,stat_rx_packet_1519_1522_bytes_1,stat_rx_packet_1523_1548_bytes_1,stat_rx_bad_fcs_1[1:0],stat_rx_packet_bad_fcs_1,stat_rx_stomped_fcs_1[1:0],stat_rx_packet_1549_2047_bytes_1,stat_rx_packet_2048_4095_bytes_1,stat_rx_packet_4096_8191_bytes_1,stat_rx_packet_8192_9215_bytes_1,stat_rx_unicast_1,stat_rx_multicast_1,stat_rx_broadcast_1,stat_rx_vlan_1,stat_rx_inrangeerr_1,stat_rx_bad_preamble_1,stat_rx_bad_sfd_1,stat_rx_got_signal_os_1,stat_rx_test_pattern_mismatch_1,stat_rx_truncated_1,stat_rx_local_fault_1,stat_rx_remote_fault_1,stat_rx_internal_local_fault_1,stat_rx_received_local_fault_1,stat_rx_status_1,tx_reset_1,user_tx_reset_1,tx_axis_tready_1,tx_axis_tvalid_1,tx_axis_tdata_1[63:0],tx_axis_tlast_1,tx_axis_tkeep_1[7:0],tx_axis_tuser_1,tx_unfout_1,tx_preamblein_1[55:0],ctl_tx_test_pattern_1,ctl_tx_test_pattern_enable_1,ctl_tx_test_pattern_select_1,ctl_tx_data_pattern_select_1,ctl_tx_test_pattern_seed_a_1[57:0],ctl_tx_test_pattern_seed_b_1[57:0],ctl_tx_enable_1,ctl_tx_fcs_ins_enable_1,ctl_tx_ipg_value_1[3:0],ctl_tx_send_lfi_1,ctl_tx_send_rfi_1,ctl_tx_send_idle_1,ctl_tx_custom_preamble_enable_1,ctl_tx_ignore_fcs_1,stat_tx_total_packets_1,stat_tx_total_bytes_1[3:0],stat_tx_total_good_packets_1,stat_tx_total_good_bytes_1[13:0],stat_tx_packet_64_bytes_1,stat_tx_packet_65_127_bytes_1,stat_tx_packet_128_255_bytes_1,stat_tx_packet_256_511_bytes_1,stat_tx_packet_512_1023_bytes_1,stat_tx_packet_1024_1518_bytes_1,stat_tx_packet_1519_1522_bytes_1,stat_tx_packet_1523_1548_bytes_1,stat_tx_packet_small_1,stat_tx_packet_large_1,stat_tx_packet_1549_2047_bytes_1,stat_tx_packet_2048_4095_bytes_1,stat_tx_packet_4096_8191_bytes_1,stat_tx_packet_8192_9215_bytes_1,stat_tx_unicast_1,stat_tx_multicast_1,stat_tx_broadcast_1,stat_tx_vlan_1,stat_tx_bad_fcs_1,stat_tx_frame_error_1,stat_tx_local_fault_1,gt_dmonitorout_1[16:0],gt_eyescandataerror_1[0:0],gt_eyescanreset_1[0:0],gt_eyescantrigger_1[0:0],gt_pcsrsvdin_1[15:0],gt_rxbufreset_1[0:0],gt_rxbufstatus_1[2:0],gt_rxcdrhold_1[0:0],gt_rxcommadeten_1[0:0],gt_rxdfeagchold_1[0:0],gt_rxdfelpmreset_1[0:0],gt_rxlatclk_1[0:0],gt_rxlpmen_1[0:0],gt_rxpcsreset_1[0:0],gt_rxpmareset_1[0:0],gt_rxpolarity_1[0:0],gt_rxprbscntreset_1[0:0],gt_rxprbserr_1[0:0],gt_rxprbssel_1[3:0],gt_rxrate_1[2:0],gt_rxslide_in_1[0:0],gt_rxstartofseq_1[1:0],gt_txbufstatus_1[1:0],gt_txinhibit_1[0:0],gt_txlatclk_1[0:0],gt_txmaincursor_1[6:0],gt_txpcsreset_1[0:0],gt_txpmareset_1[0:0],gt_txpolarity_1[0:0],gt_txpostcursor_1[4:0],gt_txprbsforceerr_1[0:0],gt_txprbssel_1[3:0],gt_txprecursor_1[4:0],gt_txdiffctrl_1[4:0],gt_drpdo_1[15:0],gt_drprdy_1[0:0],gt_drpen_1[0:0],gt_drpwe_1[0:0],gt_drpaddr_1[9:0],gt_drpdi_1[15:0],gt_drpclk_1,gtwiz_reset_tx_datapath_1,gtwiz_reset_rx_datapath_1,gtpowergood_out_1,txoutclksel_in_1[2:0],rxoutclksel_in_1[2:0],tx_clk_out_2,rx_core_clk_2,rx_clk_out_2,gt_loopback_in_2[2:0],rx_reset_2,user_rx_reset_2,rxrecclkout_2,rx_axis_tvalid_2,rx_axis_tdata_2[63:0],rx_axis_tlast_2,rx_axis_tkeep_2[7:0],rx_axis_tuser_2,rx_preambleout_2[55:0],ctl_rx_test_pattern_2,ctl_rx_test_pattern_enable_2,ctl_rx_data_pattern_select_2,ctl_rx_enable_2,ctl_rx_delete_fcs_2,ctl_rx_ignore_fcs_2,ctl_rx_max_packet_len_2[14:0],ctl_rx_min_packet_len_2[7:0],ctl_rx_custom_preamble_enable_2,ctl_rx_check_sfd_2,ctl_rx_check_preamble_2,ctl_rx_process_lfi_2,ctl_rx_force_resync_2,stat_rx_block_lock_2,stat_rx_framing_err_valid_2,stat_rx_framing_err_2,stat_rx_hi_ber_2,stat_rx_valid_ctrl_code_2,stat_rx_bad_code_2,stat_rx_total_packets_2[1:0],stat_rx_total_good_packets_2,stat_rx_total_bytes_2[3:0],stat_rx_total_good_bytes_2[13:0],stat_rx_packet_small_2,stat_rx_jabber_2,stat_rx_packet_large_2,stat_rx_oversize_2,stat_rx_undersize_2,stat_rx_toolong_2,stat_rx_fragment_2,stat_rx_packet_64_bytes_2,stat_rx_packet_65_127_bytes_2,stat_rx_packet_128_255_bytes_2,stat_rx_packet_256_511_bytes_2,stat_rx_packet_512_1023_bytes_2,stat_rx_packet_1024_1518_bytes_2,stat_rx_packet_1519_1522_bytes_2,stat_rx_packet_1523_1548_bytes_2,stat_rx_bad_fcs_2[1:0],stat_rx_packet_bad_fcs_2,stat_rx_stomped_fcs_2[1:0],stat_rx_packet_1549_2047_bytes_2,stat_rx_packet_2048_4095_bytes_2,stat_rx_packet_4096_8191_bytes_2,stat_rx_packet_8192_9215_bytes_2,stat_rx_unicast_2,stat_rx_multicast_2,stat_rx_broadcast_2,stat_rx_vlan_2,stat_rx_inrangeerr_2,stat_rx_bad_preamble_2,stat_rx_bad_sfd_2,stat_rx_got_signal_os_2,stat_rx_test_pattern_mismatch_2,stat_rx_truncated_2,stat_rx_local_fault_2,stat_rx_remote_fault_2,stat_rx_internal_local_fault_2,stat_rx_received_local_fault_2,stat_rx_status_2,tx_reset_2,user_tx_reset_2,tx_axis_tready_2,tx_axis_tvalid_2,tx_axis_tdata_2[63:0],tx_axis_tlast_2,tx_axis_tkeep_2[7:0],tx_axis_tuser_2,tx_unfout_2,tx_preamblein_2[55:0],ctl_tx_test_pattern_2,ctl_tx_test_pattern_enable_2,ctl_tx_test_pattern_select_2,ctl_tx_data_pattern_select_2,ctl_tx_test_pattern_seed_a_2[57:0],ctl_tx_test_pattern_seed_b_2[57:0],ctl_tx_enable_2,ctl_tx_fcs_ins_enable_2,ctl_tx_ipg_value_2[3:0],ctl_tx_send_lfi_2,ctl_tx_send_rfi_2,ctl_tx_send_idle_2,ctl_tx_custom_preamble_enable_2,ctl_tx_ignore_fcs_2,stat_tx_total_packets_2,stat_tx_total_bytes_2[3:0],stat_tx_total_good_packets_2,stat_tx_total_good_bytes_2[13:0],stat_tx_packet_64_bytes_2,stat_tx_packet_65_127_bytes_2,stat_tx_packet_128_255_bytes_2,stat_tx_packet_256_511_bytes_2,stat_tx_packet_512_1023_bytes_2,stat_tx_packet_1024_1518_bytes_2,stat_tx_packet_1519_1522_bytes_2,stat_tx_packet_1523_1548_bytes_2,stat_tx_packet_small_2,stat_tx_packet_large_2,stat_tx_packet_1549_2047_bytes_2,stat_tx_packet_2048_4095_bytes_2,stat_tx_packet_4096_8191_bytes_2,stat_tx_packet_8192_9215_bytes_2,stat_tx_unicast_2,stat_tx_multicast_2,stat_tx_broadcast_2,stat_tx_vlan_2,stat_tx_bad_fcs_2,stat_tx_frame_error_2,stat_tx_local_fault_2,gt_dmonitorout_2[16:0],gt_eyescandataerror_2[0:0],gt_eyescanreset_2[0:0],gt_eyescantrigger_2[0:0],gt_pcsrsvdin_2[15:0],gt_rxbufreset_2[0:0],gt_rxbufstatus_2[2:0],gt_rxcdrhold_2[0:0],gt_rxcommadeten_2[0:0],gt_rxdfeagchold_2[0:0],gt_rxdfelpmreset_2[0:0],gt_rxlatclk_2[0:0],gt_rxlpmen_2[0:0],gt_rxpcsreset_2[0:0],gt_rxpmareset_2[0:0],gt_rxpolarity_2[0:0],gt_rxprbscntreset_2[0:0],gt_rxprbserr_2[0:0],gt_rxprbssel_2[3:0],gt_rxrate_2[2:0],gt_rxslide_in_2[0:0],gt_rxstartofseq_2[1:0],gt_txbufstatus_2[1:0],gt_txinhibit_2[0:0],gt_txlatclk_2[0:0],gt_txmaincursor_2[6:0],gt_txpcsreset_2[0:0],gt_txpmareset_2[0:0],gt_txpolarity_2[0:0],gt_txpostcursor_2[4:0],gt_txprbsforceerr_2[0:0],gt_txprbssel_2[3:0],gt_txprecursor_2[4:0],gt_txdiffctrl_2[4:0],gt_drpdo_2[15:0],gt_drprdy_2[0:0],gt_drpen_2[0:0],gt_drpwe_2[0:0],gt_drpaddr_2[9:0],gt_drpdi_2[15:0],gt_drpclk_2,gtwiz_reset_tx_datapath_2,gtwiz_reset_rx_datapath_2,gtpowergood_out_2,txoutclksel_in_2[2:0],rxoutclksel_in_2[2:0],tx_clk_out_3,rx_core_clk_3,rx_clk_out_3,gt_loopback_in_3[2:0],rx_reset_3,user_rx_reset_3,rxrecclkout_3,rx_axis_tvalid_3,rx_axis_tdata_3[63:0],rx_axis_tlast_3,rx_axis_tkeep_3[7:0],rx_axis_tuser_3,rx_preambleout_3[55:0],ctl_rx_test_pattern_3,ctl_rx_test_pattern_enable_3,ctl_rx_data_pattern_select_3,ctl_rx_enable_3,ctl_rx_delete_fcs_3,ctl_rx_ignore_fcs_3,ctl_rx_max_packet_len_3[14:0],ctl_rx_min_packet_len_3[7:0],ctl_rx_custom_preamble_enable_3,ctl_rx_check_sfd_3,ctl_rx_check_preamble_3,ctl_rx_process_lfi_3,ctl_rx_force_resync_3,stat_rx_block_lock_3,stat_rx_framing_err_valid_3,stat_rx_framing_err_3,stat_rx_hi_ber_3,stat_rx_valid_ctrl_code_3,stat_rx_bad_code_3,stat_rx_total_packets_3[1:0],stat_rx_total_good_packets_3,stat_rx_total_bytes_3[3:0],stat_rx_total_good_bytes_3[13:0],stat_rx_packet_small_3,stat_rx_jabber_3,stat_rx_packet_large_3,stat_rx_oversize_3,stat_rx_undersize_3,stat_rx_toolong_3,stat_rx_fragment_3,stat_rx_packet_64_bytes_3,stat_rx_packet_65_127_bytes_3,stat_rx_packet_128_255_bytes_3,stat_rx_packet_256_511_bytes_3,stat_rx_packet_512_1023_bytes_3,stat_rx_packet_1024_1518_bytes_3,stat_rx_packet_1519_1522_bytes_3,stat_rx_packet_1523_1548_bytes_3,stat_rx_bad_fcs_3[1:0],stat_rx_packet_bad_fcs_3,stat_rx_stomped_fcs_3[1:0],stat_rx_packet_1549_2047_bytes_3,stat_rx_packet_2048_4095_bytes_3,stat_rx_packet_4096_8191_bytes_3,stat_rx_packet_8192_9215_bytes_3,stat_rx_unicast_3,stat_rx_multicast_3,stat_rx_broadcast_3,stat_rx_vlan_3,stat_rx_inrangeerr_3,stat_rx_bad_preamble_3,stat_rx_bad_sfd_3,stat_rx_got_signal_os_3,stat_rx_test_pattern_mismatch_3,stat_rx_truncated_3,stat_rx_local_fault_3,stat_rx_remote_fault_3,stat_rx_internal_local_fault_3,stat_rx_received_local_fault_3,stat_rx_status_3,tx_reset_3,user_tx_reset_3,tx_axis_tready_3,tx_axis_tvalid_3,tx_axis_tdata_3[63:0],tx_axis_tlast_3,tx_axis_tkeep_3[7:0],tx_axis_tuser_3,tx_unfout_3,tx_preamblein_3[55:0],ctl_tx_test_pattern_3,ctl_tx_test_pattern_enable_3,ctl_tx_test_pattern_select_3,ctl_tx_data_pattern_select_3,ctl_tx_test_pattern_seed_a_3[57:0],ctl_tx_test_pattern_seed_b_3[57:0],ctl_tx_enable_3,ctl_tx_fcs_ins_enable_3,ctl_tx_ipg_value_3[3:0],ctl_tx_send_lfi_3,ctl_tx_send_rfi_3,ctl_tx_send_idle_3,ctl_tx_custom_preamble_enable_3,ctl_tx_ignore_fcs_3,stat_tx_total_packets_3,stat_tx_total_bytes_3[3:0],stat_tx_total_good_packets_3,stat_tx_total_good_bytes_3[13:0],stat_tx_packet_64_bytes_3,stat_tx_packet_65_127_bytes_3,stat_tx_packet_128_255_bytes_3,stat_tx_packet_256_511_bytes_3,stat_tx_packet_512_1023_bytes_3,stat_tx_packet_1024_1518_bytes_3,stat_tx_packet_1519_1522_bytes_3,stat_tx_packet_1523_1548_bytes_3,stat_tx_packet_small_3,stat_tx_packet_large_3,stat_tx_packet_1549_2047_bytes_3,stat_tx_packet_2048_4095_bytes_3,stat_tx_packet_4096_8191_bytes_3,stat_tx_packet_8192_9215_bytes_3,stat_tx_unicast_3,stat_tx_multicast_3,stat_tx_broadcast_3,stat_tx_vlan_3,stat_tx_bad_fcs_3,stat_tx_frame_error_3,stat_tx_local_fault_3,gt_dmonitorout_3[16:0],gt_eyescandataerror_3[0:0],gt_eyescanreset_3[0:0],gt_eyescantrigger_3[0:0],gt_pcsrsvdin_3[15:0],gt_rxbufreset_3[0:0],gt_rxbufstatus_3[2:0],gt_rxcdrhold_3[0:0],gt_rxcommadeten_3[0:0],gt_rxdfeagchold_3[0:0],gt_rxdfelpmreset_3[0:0],gt_rxlatclk_3[0:0],gt_rxlpmen_3[0:0],gt_rxpcsreset_3[0:0],gt_rxpmareset_3[0:0],gt_rxpolarity_3[0:0],gt_rxprbscntreset_3[0:0],gt_rxprbserr_3[0:0],gt_rxprbssel_3[3:0],gt_rxrate_3[2:0],gt_rxslide_in_3[0:0],gt_rxstartofseq_3[1:0],gt_txbufstatus_3[1:0],gt_txinhibit_3[0:0],gt_txlatclk_3[0:0],gt_txmaincursor_3[6:0],gt_txpcsreset_3[0:0],gt_txpmareset_3[0:0],gt_txpolarity_3[0:0],gt_txpostcursor_3[4:0],gt_txprbsforceerr_3[0:0],gt_txprbssel_3[3:0],gt_txprecursor_3[4:0],gt_txdiffctrl_3[4:0],gt_drpdo_3[15:0],gt_drprdy_3[0:0],gt_drpen_3[0:0],gt_drpwe_3[0:0],gt_drpaddr_3[9:0],gt_drpdi_3[15:0],gt_drpclk_3,gtwiz_reset_tx_datapath_3,gtwiz_reset_rx_datapath_3,gtpowergood_out_3,txoutclksel_in_3[2:0],rxoutclksel_in_3[2:0],gt_refclk_p[0:0],gt_refclk_n[0:0],gt_refclk_out[0:0],sys_reset,dclk" */;
  input gt_rxp_in_0;
  input gt_rxn_in_0;
  output gt_txp_out_0;
  output gt_txn_out_0;
  input gt_rxp_in_1;
  input gt_rxn_in_1;
  output gt_txp_out_1;
  output gt_txn_out_1;
  input gt_rxp_in_2;
  input gt_rxn_in_2;
  output gt_txp_out_2;
  output gt_txn_out_2;
  input gt_rxp_in_3;
  input gt_rxn_in_3;
  output gt_txp_out_3;
  output gt_txn_out_3;
  output tx_clk_out_0;
  input rx_core_clk_0;
  output rx_clk_out_0;
  input [2:0]gt_loopback_in_0;
  input rx_reset_0;
  output user_rx_reset_0;
  output rxrecclkout_0;
  output rx_axis_tvalid_0;
  output [63:0]rx_axis_tdata_0;
  output rx_axis_tlast_0;
  output [7:0]rx_axis_tkeep_0;
  output rx_axis_tuser_0;
  output [55:0]rx_preambleout_0;
  input ctl_rx_test_pattern_0;
  input ctl_rx_test_pattern_enable_0;
  input ctl_rx_data_pattern_select_0;
  input ctl_rx_enable_0;
  input ctl_rx_delete_fcs_0;
  input ctl_rx_ignore_fcs_0;
  input [14:0]ctl_rx_max_packet_len_0;
  input [7:0]ctl_rx_min_packet_len_0;
  input ctl_rx_custom_preamble_enable_0;
  input ctl_rx_check_sfd_0;
  input ctl_rx_check_preamble_0;
  input ctl_rx_process_lfi_0;
  input ctl_rx_force_resync_0;
  output stat_rx_block_lock_0;
  output stat_rx_framing_err_valid_0;
  output stat_rx_framing_err_0;
  output stat_rx_hi_ber_0;
  output stat_rx_valid_ctrl_code_0;
  output stat_rx_bad_code_0;
  output [1:0]stat_rx_total_packets_0;
  output stat_rx_total_good_packets_0;
  output [3:0]stat_rx_total_bytes_0;
  output [13:0]stat_rx_total_good_bytes_0;
  output stat_rx_packet_small_0;
  output stat_rx_jabber_0;
  output stat_rx_packet_large_0;
  output stat_rx_oversize_0;
  output stat_rx_undersize_0;
  output stat_rx_toolong_0;
  output stat_rx_fragment_0;
  output stat_rx_packet_64_bytes_0;
  output stat_rx_packet_65_127_bytes_0;
  output stat_rx_packet_128_255_bytes_0;
  output stat_rx_packet_256_511_bytes_0;
  output stat_rx_packet_512_1023_bytes_0;
  output stat_rx_packet_1024_1518_bytes_0;
  output stat_rx_packet_1519_1522_bytes_0;
  output stat_rx_packet_1523_1548_bytes_0;
  output [1:0]stat_rx_bad_fcs_0;
  output stat_rx_packet_bad_fcs_0;
  output [1:0]stat_rx_stomped_fcs_0;
  output stat_rx_packet_1549_2047_bytes_0;
  output stat_rx_packet_2048_4095_bytes_0;
  output stat_rx_packet_4096_8191_bytes_0;
  output stat_rx_packet_8192_9215_bytes_0;
  output stat_rx_unicast_0;
  output stat_rx_multicast_0;
  output stat_rx_broadcast_0;
  output stat_rx_vlan_0;
  output stat_rx_inrangeerr_0;
  output stat_rx_bad_preamble_0;
  output stat_rx_bad_sfd_0;
  output stat_rx_got_signal_os_0;
  output stat_rx_test_pattern_mismatch_0;
  output stat_rx_truncated_0;
  output stat_rx_local_fault_0;
  output stat_rx_remote_fault_0;
  output stat_rx_internal_local_fault_0;
  output stat_rx_received_local_fault_0;
  output stat_rx_status_0;
  input tx_reset_0;
  output user_tx_reset_0;
  output tx_axis_tready_0;
  input tx_axis_tvalid_0;
  input [63:0]tx_axis_tdata_0;
  input tx_axis_tlast_0;
  input [7:0]tx_axis_tkeep_0;
  input tx_axis_tuser_0;
  output tx_unfout_0;
  input [55:0]tx_preamblein_0;
  input ctl_tx_test_pattern_0;
  input ctl_tx_test_pattern_enable_0;
  input ctl_tx_test_pattern_select_0;
  input ctl_tx_data_pattern_select_0;
  input [57:0]ctl_tx_test_pattern_seed_a_0;
  input [57:0]ctl_tx_test_pattern_seed_b_0;
  input ctl_tx_enable_0;
  input ctl_tx_fcs_ins_enable_0;
  input [3:0]ctl_tx_ipg_value_0;
  input ctl_tx_send_lfi_0;
  input ctl_tx_send_rfi_0;
  input ctl_tx_send_idle_0;
  input ctl_tx_custom_preamble_enable_0;
  input ctl_tx_ignore_fcs_0;
  output stat_tx_total_packets_0;
  output [3:0]stat_tx_total_bytes_0;
  output stat_tx_total_good_packets_0;
  output [13:0]stat_tx_total_good_bytes_0;
  output stat_tx_packet_64_bytes_0;
  output stat_tx_packet_65_127_bytes_0;
  output stat_tx_packet_128_255_bytes_0;
  output stat_tx_packet_256_511_bytes_0;
  output stat_tx_packet_512_1023_bytes_0;
  output stat_tx_packet_1024_1518_bytes_0;
  output stat_tx_packet_1519_1522_bytes_0;
  output stat_tx_packet_1523_1548_bytes_0;
  output stat_tx_packet_small_0;
  output stat_tx_packet_large_0;
  output stat_tx_packet_1549_2047_bytes_0;
  output stat_tx_packet_2048_4095_bytes_0;
  output stat_tx_packet_4096_8191_bytes_0;
  output stat_tx_packet_8192_9215_bytes_0;
  output stat_tx_unicast_0;
  output stat_tx_multicast_0;
  output stat_tx_broadcast_0;
  output stat_tx_vlan_0;
  output stat_tx_bad_fcs_0;
  output stat_tx_frame_error_0;
  output stat_tx_local_fault_0;
  output [16:0]gt_dmonitorout_0;
  output [0:0]gt_eyescandataerror_0;
  input [0:0]gt_eyescanreset_0;
  input [0:0]gt_eyescantrigger_0;
  input [15:0]gt_pcsrsvdin_0;
  input [0:0]gt_rxbufreset_0;
  output [2:0]gt_rxbufstatus_0;
  input [0:0]gt_rxcdrhold_0;
  input [0:0]gt_rxcommadeten_0;
  input [0:0]gt_rxdfeagchold_0;
  input [0:0]gt_rxdfelpmreset_0;
  input [0:0]gt_rxlatclk_0;
  input [0:0]gt_rxlpmen_0;
  input [0:0]gt_rxpcsreset_0;
  input [0:0]gt_rxpmareset_0;
  input [0:0]gt_rxpolarity_0;
  input [0:0]gt_rxprbscntreset_0;
  output [0:0]gt_rxprbserr_0;
  input [3:0]gt_rxprbssel_0;
  input [2:0]gt_rxrate_0;
  input [0:0]gt_rxslide_in_0;
  output [1:0]gt_rxstartofseq_0;
  output [1:0]gt_txbufstatus_0;
  input [0:0]gt_txinhibit_0;
  input [0:0]gt_txlatclk_0;
  input [6:0]gt_txmaincursor_0;
  input [0:0]gt_txpcsreset_0;
  input [0:0]gt_txpmareset_0;
  input [0:0]gt_txpolarity_0;
  input [4:0]gt_txpostcursor_0;
  input [0:0]gt_txprbsforceerr_0;
  input [3:0]gt_txprbssel_0;
  input [4:0]gt_txprecursor_0;
  input [4:0]gt_txdiffctrl_0;
  output [15:0]gt_drpdo_0;
  output [0:0]gt_drprdy_0;
  input [0:0]gt_drpen_0;
  input [0:0]gt_drpwe_0;
  input [9:0]gt_drpaddr_0;
  input [15:0]gt_drpdi_0;
  input gt_drpclk_0;
  input gtwiz_reset_tx_datapath_0;
  input gtwiz_reset_rx_datapath_0;
  output gtpowergood_out_0;
  input [2:0]txoutclksel_in_0;
  input [2:0]rxoutclksel_in_0;
  output tx_clk_out_1;
  input rx_core_clk_1;
  output rx_clk_out_1;
  input [2:0]gt_loopback_in_1;
  input rx_reset_1;
  output user_rx_reset_1;
  output rxrecclkout_1;
  output rx_axis_tvalid_1;
  output [63:0]rx_axis_tdata_1;
  output rx_axis_tlast_1;
  output [7:0]rx_axis_tkeep_1;
  output rx_axis_tuser_1;
  output [55:0]rx_preambleout_1;
  input ctl_rx_test_pattern_1;
  input ctl_rx_test_pattern_enable_1;
  input ctl_rx_data_pattern_select_1;
  input ctl_rx_enable_1;
  input ctl_rx_delete_fcs_1;
  input ctl_rx_ignore_fcs_1;
  input [14:0]ctl_rx_max_packet_len_1;
  input [7:0]ctl_rx_min_packet_len_1;
  input ctl_rx_custom_preamble_enable_1;
  input ctl_rx_check_sfd_1;
  input ctl_rx_check_preamble_1;
  input ctl_rx_process_lfi_1;
  input ctl_rx_force_resync_1;
  output stat_rx_block_lock_1;
  output stat_rx_framing_err_valid_1;
  output stat_rx_framing_err_1;
  output stat_rx_hi_ber_1;
  output stat_rx_valid_ctrl_code_1;
  output stat_rx_bad_code_1;
  output [1:0]stat_rx_total_packets_1;
  output stat_rx_total_good_packets_1;
  output [3:0]stat_rx_total_bytes_1;
  output [13:0]stat_rx_total_good_bytes_1;
  output stat_rx_packet_small_1;
  output stat_rx_jabber_1;
  output stat_rx_packet_large_1;
  output stat_rx_oversize_1;
  output stat_rx_undersize_1;
  output stat_rx_toolong_1;
  output stat_rx_fragment_1;
  output stat_rx_packet_64_bytes_1;
  output stat_rx_packet_65_127_bytes_1;
  output stat_rx_packet_128_255_bytes_1;
  output stat_rx_packet_256_511_bytes_1;
  output stat_rx_packet_512_1023_bytes_1;
  output stat_rx_packet_1024_1518_bytes_1;
  output stat_rx_packet_1519_1522_bytes_1;
  output stat_rx_packet_1523_1548_bytes_1;
  output [1:0]stat_rx_bad_fcs_1;
  output stat_rx_packet_bad_fcs_1;
  output [1:0]stat_rx_stomped_fcs_1;
  output stat_rx_packet_1549_2047_bytes_1;
  output stat_rx_packet_2048_4095_bytes_1;
  output stat_rx_packet_4096_8191_bytes_1;
  output stat_rx_packet_8192_9215_bytes_1;
  output stat_rx_unicast_1;
  output stat_rx_multicast_1;
  output stat_rx_broadcast_1;
  output stat_rx_vlan_1;
  output stat_rx_inrangeerr_1;
  output stat_rx_bad_preamble_1;
  output stat_rx_bad_sfd_1;
  output stat_rx_got_signal_os_1;
  output stat_rx_test_pattern_mismatch_1;
  output stat_rx_truncated_1;
  output stat_rx_local_fault_1;
  output stat_rx_remote_fault_1;
  output stat_rx_internal_local_fault_1;
  output stat_rx_received_local_fault_1;
  output stat_rx_status_1;
  input tx_reset_1;
  output user_tx_reset_1;
  output tx_axis_tready_1;
  input tx_axis_tvalid_1;
  input [63:0]tx_axis_tdata_1;
  input tx_axis_tlast_1;
  input [7:0]tx_axis_tkeep_1;
  input tx_axis_tuser_1;
  output tx_unfout_1;
  input [55:0]tx_preamblein_1;
  input ctl_tx_test_pattern_1;
  input ctl_tx_test_pattern_enable_1;
  input ctl_tx_test_pattern_select_1;
  input ctl_tx_data_pattern_select_1;
  input [57:0]ctl_tx_test_pattern_seed_a_1;
  input [57:0]ctl_tx_test_pattern_seed_b_1;
  input ctl_tx_enable_1;
  input ctl_tx_fcs_ins_enable_1;
  input [3:0]ctl_tx_ipg_value_1;
  input ctl_tx_send_lfi_1;
  input ctl_tx_send_rfi_1;
  input ctl_tx_send_idle_1;
  input ctl_tx_custom_preamble_enable_1;
  input ctl_tx_ignore_fcs_1;
  output stat_tx_total_packets_1;
  output [3:0]stat_tx_total_bytes_1;
  output stat_tx_total_good_packets_1;
  output [13:0]stat_tx_total_good_bytes_1;
  output stat_tx_packet_64_bytes_1;
  output stat_tx_packet_65_127_bytes_1;
  output stat_tx_packet_128_255_bytes_1;
  output stat_tx_packet_256_511_bytes_1;
  output stat_tx_packet_512_1023_bytes_1;
  output stat_tx_packet_1024_1518_bytes_1;
  output stat_tx_packet_1519_1522_bytes_1;
  output stat_tx_packet_1523_1548_bytes_1;
  output stat_tx_packet_small_1;
  output stat_tx_packet_large_1;
  output stat_tx_packet_1549_2047_bytes_1;
  output stat_tx_packet_2048_4095_bytes_1;
  output stat_tx_packet_4096_8191_bytes_1;
  output stat_tx_packet_8192_9215_bytes_1;
  output stat_tx_unicast_1;
  output stat_tx_multicast_1;
  output stat_tx_broadcast_1;
  output stat_tx_vlan_1;
  output stat_tx_bad_fcs_1;
  output stat_tx_frame_error_1;
  output stat_tx_local_fault_1;
  output [16:0]gt_dmonitorout_1;
  output [0:0]gt_eyescandataerror_1;
  input [0:0]gt_eyescanreset_1;
  input [0:0]gt_eyescantrigger_1;
  input [15:0]gt_pcsrsvdin_1;
  input [0:0]gt_rxbufreset_1;
  output [2:0]gt_rxbufstatus_1;
  input [0:0]gt_rxcdrhold_1;
  input [0:0]gt_rxcommadeten_1;
  input [0:0]gt_rxdfeagchold_1;
  input [0:0]gt_rxdfelpmreset_1;
  input [0:0]gt_rxlatclk_1;
  input [0:0]gt_rxlpmen_1;
  input [0:0]gt_rxpcsreset_1;
  input [0:0]gt_rxpmareset_1;
  input [0:0]gt_rxpolarity_1;
  input [0:0]gt_rxprbscntreset_1;
  output [0:0]gt_rxprbserr_1;
  input [3:0]gt_rxprbssel_1;
  input [2:0]gt_rxrate_1;
  input [0:0]gt_rxslide_in_1;
  output [1:0]gt_rxstartofseq_1;
  output [1:0]gt_txbufstatus_1;
  input [0:0]gt_txinhibit_1;
  input [0:0]gt_txlatclk_1;
  input [6:0]gt_txmaincursor_1;
  input [0:0]gt_txpcsreset_1;
  input [0:0]gt_txpmareset_1;
  input [0:0]gt_txpolarity_1;
  input [4:0]gt_txpostcursor_1;
  input [0:0]gt_txprbsforceerr_1;
  input [3:0]gt_txprbssel_1;
  input [4:0]gt_txprecursor_1;
  input [4:0]gt_txdiffctrl_1;
  output [15:0]gt_drpdo_1;
  output [0:0]gt_drprdy_1;
  input [0:0]gt_drpen_1;
  input [0:0]gt_drpwe_1;
  input [9:0]gt_drpaddr_1;
  input [15:0]gt_drpdi_1;
  input gt_drpclk_1;
  input gtwiz_reset_tx_datapath_1;
  input gtwiz_reset_rx_datapath_1;
  output gtpowergood_out_1;
  input [2:0]txoutclksel_in_1;
  input [2:0]rxoutclksel_in_1;
  output tx_clk_out_2;
  input rx_core_clk_2;
  output rx_clk_out_2;
  input [2:0]gt_loopback_in_2;
  input rx_reset_2;
  output user_rx_reset_2;
  output rxrecclkout_2;
  output rx_axis_tvalid_2;
  output [63:0]rx_axis_tdata_2;
  output rx_axis_tlast_2;
  output [7:0]rx_axis_tkeep_2;
  output rx_axis_tuser_2;
  output [55:0]rx_preambleout_2;
  input ctl_rx_test_pattern_2;
  input ctl_rx_test_pattern_enable_2;
  input ctl_rx_data_pattern_select_2;
  input ctl_rx_enable_2;
  input ctl_rx_delete_fcs_2;
  input ctl_rx_ignore_fcs_2;
  input [14:0]ctl_rx_max_packet_len_2;
  input [7:0]ctl_rx_min_packet_len_2;
  input ctl_rx_custom_preamble_enable_2;
  input ctl_rx_check_sfd_2;
  input ctl_rx_check_preamble_2;
  input ctl_rx_process_lfi_2;
  input ctl_rx_force_resync_2;
  output stat_rx_block_lock_2;
  output stat_rx_framing_err_valid_2;
  output stat_rx_framing_err_2;
  output stat_rx_hi_ber_2;
  output stat_rx_valid_ctrl_code_2;
  output stat_rx_bad_code_2;
  output [1:0]stat_rx_total_packets_2;
  output stat_rx_total_good_packets_2;
  output [3:0]stat_rx_total_bytes_2;
  output [13:0]stat_rx_total_good_bytes_2;
  output stat_rx_packet_small_2;
  output stat_rx_jabber_2;
  output stat_rx_packet_large_2;
  output stat_rx_oversize_2;
  output stat_rx_undersize_2;
  output stat_rx_toolong_2;
  output stat_rx_fragment_2;
  output stat_rx_packet_64_bytes_2;
  output stat_rx_packet_65_127_bytes_2;
  output stat_rx_packet_128_255_bytes_2;
  output stat_rx_packet_256_511_bytes_2;
  output stat_rx_packet_512_1023_bytes_2;
  output stat_rx_packet_1024_1518_bytes_2;
  output stat_rx_packet_1519_1522_bytes_2;
  output stat_rx_packet_1523_1548_bytes_2;
  output [1:0]stat_rx_bad_fcs_2;
  output stat_rx_packet_bad_fcs_2;
  output [1:0]stat_rx_stomped_fcs_2;
  output stat_rx_packet_1549_2047_bytes_2;
  output stat_rx_packet_2048_4095_bytes_2;
  output stat_rx_packet_4096_8191_bytes_2;
  output stat_rx_packet_8192_9215_bytes_2;
  output stat_rx_unicast_2;
  output stat_rx_multicast_2;
  output stat_rx_broadcast_2;
  output stat_rx_vlan_2;
  output stat_rx_inrangeerr_2;
  output stat_rx_bad_preamble_2;
  output stat_rx_bad_sfd_2;
  output stat_rx_got_signal_os_2;
  output stat_rx_test_pattern_mismatch_2;
  output stat_rx_truncated_2;
  output stat_rx_local_fault_2;
  output stat_rx_remote_fault_2;
  output stat_rx_internal_local_fault_2;
  output stat_rx_received_local_fault_2;
  output stat_rx_status_2;
  input tx_reset_2;
  output user_tx_reset_2;
  output tx_axis_tready_2;
  input tx_axis_tvalid_2;
  input [63:0]tx_axis_tdata_2;
  input tx_axis_tlast_2;
  input [7:0]tx_axis_tkeep_2;
  input tx_axis_tuser_2;
  output tx_unfout_2;
  input [55:0]tx_preamblein_2;
  input ctl_tx_test_pattern_2;
  input ctl_tx_test_pattern_enable_2;
  input ctl_tx_test_pattern_select_2;
  input ctl_tx_data_pattern_select_2;
  input [57:0]ctl_tx_test_pattern_seed_a_2;
  input [57:0]ctl_tx_test_pattern_seed_b_2;
  input ctl_tx_enable_2;
  input ctl_tx_fcs_ins_enable_2;
  input [3:0]ctl_tx_ipg_value_2;
  input ctl_tx_send_lfi_2;
  input ctl_tx_send_rfi_2;
  input ctl_tx_send_idle_2;
  input ctl_tx_custom_preamble_enable_2;
  input ctl_tx_ignore_fcs_2;
  output stat_tx_total_packets_2;
  output [3:0]stat_tx_total_bytes_2;
  output stat_tx_total_good_packets_2;
  output [13:0]stat_tx_total_good_bytes_2;
  output stat_tx_packet_64_bytes_2;
  output stat_tx_packet_65_127_bytes_2;
  output stat_tx_packet_128_255_bytes_2;
  output stat_tx_packet_256_511_bytes_2;
  output stat_tx_packet_512_1023_bytes_2;
  output stat_tx_packet_1024_1518_bytes_2;
  output stat_tx_packet_1519_1522_bytes_2;
  output stat_tx_packet_1523_1548_bytes_2;
  output stat_tx_packet_small_2;
  output stat_tx_packet_large_2;
  output stat_tx_packet_1549_2047_bytes_2;
  output stat_tx_packet_2048_4095_bytes_2;
  output stat_tx_packet_4096_8191_bytes_2;
  output stat_tx_packet_8192_9215_bytes_2;
  output stat_tx_unicast_2;
  output stat_tx_multicast_2;
  output stat_tx_broadcast_2;
  output stat_tx_vlan_2;
  output stat_tx_bad_fcs_2;
  output stat_tx_frame_error_2;
  output stat_tx_local_fault_2;
  output [16:0]gt_dmonitorout_2;
  output [0:0]gt_eyescandataerror_2;
  input [0:0]gt_eyescanreset_2;
  input [0:0]gt_eyescantrigger_2;
  input [15:0]gt_pcsrsvdin_2;
  input [0:0]gt_rxbufreset_2;
  output [2:0]gt_rxbufstatus_2;
  input [0:0]gt_rxcdrhold_2;
  input [0:0]gt_rxcommadeten_2;
  input [0:0]gt_rxdfeagchold_2;
  input [0:0]gt_rxdfelpmreset_2;
  input [0:0]gt_rxlatclk_2;
  input [0:0]gt_rxlpmen_2;
  input [0:0]gt_rxpcsreset_2;
  input [0:0]gt_rxpmareset_2;
  input [0:0]gt_rxpolarity_2;
  input [0:0]gt_rxprbscntreset_2;
  output [0:0]gt_rxprbserr_2;
  input [3:0]gt_rxprbssel_2;
  input [2:0]gt_rxrate_2;
  input [0:0]gt_rxslide_in_2;
  output [1:0]gt_rxstartofseq_2;
  output [1:0]gt_txbufstatus_2;
  input [0:0]gt_txinhibit_2;
  input [0:0]gt_txlatclk_2;
  input [6:0]gt_txmaincursor_2;
  input [0:0]gt_txpcsreset_2;
  input [0:0]gt_txpmareset_2;
  input [0:0]gt_txpolarity_2;
  input [4:0]gt_txpostcursor_2;
  input [0:0]gt_txprbsforceerr_2;
  input [3:0]gt_txprbssel_2;
  input [4:0]gt_txprecursor_2;
  input [4:0]gt_txdiffctrl_2;
  output [15:0]gt_drpdo_2;
  output [0:0]gt_drprdy_2;
  input [0:0]gt_drpen_2;
  input [0:0]gt_drpwe_2;
  input [9:0]gt_drpaddr_2;
  input [15:0]gt_drpdi_2;
  input gt_drpclk_2;
  input gtwiz_reset_tx_datapath_2;
  input gtwiz_reset_rx_datapath_2;
  output gtpowergood_out_2;
  input [2:0]txoutclksel_in_2;
  input [2:0]rxoutclksel_in_2;
  output tx_clk_out_3;
  input rx_core_clk_3;
  output rx_clk_out_3;
  input [2:0]gt_loopback_in_3;
  input rx_reset_3;
  output user_rx_reset_3;
  output rxrecclkout_3;
  output rx_axis_tvalid_3;
  output [63:0]rx_axis_tdata_3;
  output rx_axis_tlast_3;
  output [7:0]rx_axis_tkeep_3;
  output rx_axis_tuser_3;
  output [55:0]rx_preambleout_3;
  input ctl_rx_test_pattern_3;
  input ctl_rx_test_pattern_enable_3;
  input ctl_rx_data_pattern_select_3;
  input ctl_rx_enable_3;
  input ctl_rx_delete_fcs_3;
  input ctl_rx_ignore_fcs_3;
  input [14:0]ctl_rx_max_packet_len_3;
  input [7:0]ctl_rx_min_packet_len_3;
  input ctl_rx_custom_preamble_enable_3;
  input ctl_rx_check_sfd_3;
  input ctl_rx_check_preamble_3;
  input ctl_rx_process_lfi_3;
  input ctl_rx_force_resync_3;
  output stat_rx_block_lock_3;
  output stat_rx_framing_err_valid_3;
  output stat_rx_framing_err_3;
  output stat_rx_hi_ber_3;
  output stat_rx_valid_ctrl_code_3;
  output stat_rx_bad_code_3;
  output [1:0]stat_rx_total_packets_3;
  output stat_rx_total_good_packets_3;
  output [3:0]stat_rx_total_bytes_3;
  output [13:0]stat_rx_total_good_bytes_3;
  output stat_rx_packet_small_3;
  output stat_rx_jabber_3;
  output stat_rx_packet_large_3;
  output stat_rx_oversize_3;
  output stat_rx_undersize_3;
  output stat_rx_toolong_3;
  output stat_rx_fragment_3;
  output stat_rx_packet_64_bytes_3;
  output stat_rx_packet_65_127_bytes_3;
  output stat_rx_packet_128_255_bytes_3;
  output stat_rx_packet_256_511_bytes_3;
  output stat_rx_packet_512_1023_bytes_3;
  output stat_rx_packet_1024_1518_bytes_3;
  output stat_rx_packet_1519_1522_bytes_3;
  output stat_rx_packet_1523_1548_bytes_3;
  output [1:0]stat_rx_bad_fcs_3;
  output stat_rx_packet_bad_fcs_3;
  output [1:0]stat_rx_stomped_fcs_3;
  output stat_rx_packet_1549_2047_bytes_3;
  output stat_rx_packet_2048_4095_bytes_3;
  output stat_rx_packet_4096_8191_bytes_3;
  output stat_rx_packet_8192_9215_bytes_3;
  output stat_rx_unicast_3;
  output stat_rx_multicast_3;
  output stat_rx_broadcast_3;
  output stat_rx_vlan_3;
  output stat_rx_inrangeerr_3;
  output stat_rx_bad_preamble_3;
  output stat_rx_bad_sfd_3;
  output stat_rx_got_signal_os_3;
  output stat_rx_test_pattern_mismatch_3;
  output stat_rx_truncated_3;
  output stat_rx_local_fault_3;
  output stat_rx_remote_fault_3;
  output stat_rx_internal_local_fault_3;
  output stat_rx_received_local_fault_3;
  output stat_rx_status_3;
  input tx_reset_3;
  output user_tx_reset_3;
  output tx_axis_tready_3;
  input tx_axis_tvalid_3;
  input [63:0]tx_axis_tdata_3;
  input tx_axis_tlast_3;
  input [7:0]tx_axis_tkeep_3;
  input tx_axis_tuser_3;
  output tx_unfout_3;
  input [55:0]tx_preamblein_3;
  input ctl_tx_test_pattern_3;
  input ctl_tx_test_pattern_enable_3;
  input ctl_tx_test_pattern_select_3;
  input ctl_tx_data_pattern_select_3;
  input [57:0]ctl_tx_test_pattern_seed_a_3;
  input [57:0]ctl_tx_test_pattern_seed_b_3;
  input ctl_tx_enable_3;
  input ctl_tx_fcs_ins_enable_3;
  input [3:0]ctl_tx_ipg_value_3;
  input ctl_tx_send_lfi_3;
  input ctl_tx_send_rfi_3;
  input ctl_tx_send_idle_3;
  input ctl_tx_custom_preamble_enable_3;
  input ctl_tx_ignore_fcs_3;
  output stat_tx_total_packets_3;
  output [3:0]stat_tx_total_bytes_3;
  output stat_tx_total_good_packets_3;
  output [13:0]stat_tx_total_good_bytes_3;
  output stat_tx_packet_64_bytes_3;
  output stat_tx_packet_65_127_bytes_3;
  output stat_tx_packet_128_255_bytes_3;
  output stat_tx_packet_256_511_bytes_3;
  output stat_tx_packet_512_1023_bytes_3;
  output stat_tx_packet_1024_1518_bytes_3;
  output stat_tx_packet_1519_1522_bytes_3;
  output stat_tx_packet_1523_1548_bytes_3;
  output stat_tx_packet_small_3;
  output stat_tx_packet_large_3;
  output stat_tx_packet_1549_2047_bytes_3;
  output stat_tx_packet_2048_4095_bytes_3;
  output stat_tx_packet_4096_8191_bytes_3;
  output stat_tx_packet_8192_9215_bytes_3;
  output stat_tx_unicast_3;
  output stat_tx_multicast_3;
  output stat_tx_broadcast_3;
  output stat_tx_vlan_3;
  output stat_tx_bad_fcs_3;
  output stat_tx_frame_error_3;
  output stat_tx_local_fault_3;
  output [16:0]gt_dmonitorout_3;
  output [0:0]gt_eyescandataerror_3;
  input [0:0]gt_eyescanreset_3;
  input [0:0]gt_eyescantrigger_3;
  input [15:0]gt_pcsrsvdin_3;
  input [0:0]gt_rxbufreset_3;
  output [2:0]gt_rxbufstatus_3;
  input [0:0]gt_rxcdrhold_3;
  input [0:0]gt_rxcommadeten_3;
  input [0:0]gt_rxdfeagchold_3;
  input [0:0]gt_rxdfelpmreset_3;
  input [0:0]gt_rxlatclk_3;
  input [0:0]gt_rxlpmen_3;
  input [0:0]gt_rxpcsreset_3;
  input [0:0]gt_rxpmareset_3;
  input [0:0]gt_rxpolarity_3;
  input [0:0]gt_rxprbscntreset_3;
  output [0:0]gt_rxprbserr_3;
  input [3:0]gt_rxprbssel_3;
  input [2:0]gt_rxrate_3;
  input [0:0]gt_rxslide_in_3;
  output [1:0]gt_rxstartofseq_3;
  output [1:0]gt_txbufstatus_3;
  input [0:0]gt_txinhibit_3;
  input [0:0]gt_txlatclk_3;
  input [6:0]gt_txmaincursor_3;
  input [0:0]gt_txpcsreset_3;
  input [0:0]gt_txpmareset_3;
  input [0:0]gt_txpolarity_3;
  input [4:0]gt_txpostcursor_3;
  input [0:0]gt_txprbsforceerr_3;
  input [3:0]gt_txprbssel_3;
  input [4:0]gt_txprecursor_3;
  input [4:0]gt_txdiffctrl_3;
  output [15:0]gt_drpdo_3;
  output [0:0]gt_drprdy_3;
  input [0:0]gt_drpen_3;
  input [0:0]gt_drpwe_3;
  input [9:0]gt_drpaddr_3;
  input [15:0]gt_drpdi_3;
  input gt_drpclk_3;
  input gtwiz_reset_tx_datapath_3;
  input gtwiz_reset_rx_datapath_3;
  output gtpowergood_out_3;
  input [2:0]txoutclksel_in_3;
  input [2:0]rxoutclksel_in_3;
  input [0:0]gt_refclk_p;
  input [0:0]gt_refclk_n;
  output [0:0]gt_refclk_out;
  input sys_reset;
  input dclk;
endmodule
