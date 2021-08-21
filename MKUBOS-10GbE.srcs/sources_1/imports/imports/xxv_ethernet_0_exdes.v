////------------------------------------------------------------------------------
////  (c) Copyright 2013 Xilinx, Inc. All rights reserved.
////
////  This file contains confidential and proprietary information
////  of Xilinx, Inc. and is protected under U.S. and
////  international copyright and other intellectual property
////  laws.
////
////  DISCLAIMER
////  This disclaimer is not a license and does not grant any
////  rights to the materials distributed herewith. Except as
////  otherwise provided in a valid license issued to you by
////  Xilinx, and to the maximum extent permitted by applicable
////  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
////  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
////  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
////  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
////  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
////  (2) Xilinx shall not be liable (whether in contract or tort,
////  including negligence, or under any other theory of
////  liability) for any loss or damage of any kind or nature
////  related to, arising under or in connection with these
////  materials, including for any direct, or any indirect,
////  special, incidental, or consequential loss or damage
////  (including loss of data, profits, goodwill, or any type of
////  loss or damage suffered as a result of any action brought
////  by a third party) even if such damage or loss was
////  reasonably foreseeable or Xilinx had been advised of the
////  possibility of the same.
////
////  CRITICAL APPLICATIONS
////  Xilinx products are not designed or intended to be fail-
////  safe, or for use in any application requiring fail-safe
////  performance, such as life-support or safety devices or
////  systems, Class III medical devices, nuclear facilities,
////  applications related to the deployment of airbags, or any
////  other applications that could lead to death, personal
////  injury, or severe property or environmental damage
////  (individually and collectively, "Critical
////  Applications"). Customer assumes the sole risk and
////  liability of any use of Xilinx products in Critical
////  Applications, subject only to applicable laws and
////  regulations governing limitations on product liability.
////
////  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
////  PART OF THIS FILE AT ALL TIMES.
////------------------------------------------------------------------------------


`timescale 1fs/1fs

(* DowngradeIPIdentifiedWarnings="yes" *)
module xxv_ethernet_0_exdes
(
    input  wire gt_rxp_in_0,
    input  wire gt_rxn_in_0,
    output wire gt_txp_out_0,
    output wire gt_txn_out_0,
    /*
    input  wire gt_rxp_in_1,
    input  wire gt_rxn_in_1,
    output wire gt_txp_out_1,
    output wire gt_txn_out_1,
    input  wire gt_rxp_in_2,
    input  wire gt_rxn_in_2,
    output wire gt_txp_out_2,
    output wire gt_txn_out_2,
    input  wire gt_rxp_in_3,
    input  wire gt_rxn_in_3,
    output wire gt_txp_out_3,
    output wire gt_txn_out_3,
    */
    output wire rx_gt_locked_led_0,     // Indicates GT LOCK
    output wire rx_block_lock_led_0,    // Indicates Core Block Lock
    output wire rx_gt_locked_led_1,     // Indicates GT LOCK
    output wire rx_block_lock_led_1,    // Indicates Core Block Lock
    output wire rx_gt_locked_led_2,     // Indicates GT LOCK
    output wire rx_block_lock_led_2,    // Indicates Core Block Lock
    output wire rx_gt_locked_led_3,     // Indicates GT LOCK
    output wire rx_block_lock_led_3,    // Indicates Core Block Lock
    input             gt_refclk_p,
    input             gt_refclk_n
);

  parameter PKT_NUM         = 20;    //// Many Internal Counters are based on PKT_NUM = 20

  wire [2:0] gt_loopback_in_0; 

//// For other GT loopback options please change the value appropriately
//// For example, for internal loopback gt_loopback_in[2:0] = 3'b010;
//// For more information and settings on loopback, refer GT Transceivers user guide

  assign gt_loopback_in_0 = 3'b000;
                                                
  wire  block_lock_led_0;
  wire [2:0] gt_loopback_in_1; 
  
////GT Transceiver debug interface signals
  wire [16:0] gt_dmonitorout_0;
  wire [0:0] gt_eyescandataerror_0;
  wire [0:0] gt_eyescanreset_0;
  wire [0:0] gt_eyescantrigger_0;
  wire [15:0] gt_pcsrsvdin_0;
  wire [0:0] gt_rxbufreset_0;
  wire [2:0] gt_rxbufstatus_0;
  wire [0:0] gt_rxcdrhold_0;
  wire [0:0] gt_rxcommadeten_0;
  wire [0:0] gt_rxdfeagchold_0;
  wire [0:0] gt_rxdfelpmreset_0;
  wire [0:0] gt_rxlatclk_0;
  wire [0:0] gt_rxlpmen_0;
  wire [0:0] gt_rxpcsreset_0;
  wire [0:0] gt_rxpmareset_0;
  wire [0:0] gt_rxpolarity_0;
  wire [0:0] gt_rxprbscntreset_0;
  wire [0:0] gt_rxprbserr_0;
  wire [3:0] gt_rxprbssel_0;
  wire [2:0] gt_rxrate_0;
  wire [0:0] gt_rxslide_in_0;
  wire [1:0] gt_rxstartofseq_0;
  wire [1:0] gt_txbufstatus_0;
  wire [0:0] gt_txinhibit_0;
  wire [0:0] gt_txlatclk_0;
  wire [6:0] gt_txmaincursor_0;
  wire [0:0] gt_txpcsreset_0;
  wire [0:0] gt_txpmareset_0;
  wire [0:0] gt_txpolarity_0;
  wire [4:0] gt_txpostcursor_0;
  wire [0:0] gt_txprbsforceerr_0;
  wire [3:0] gt_txprbssel_0;
  wire [4:0] gt_txprecursor_0;
  wire [4:0] gt_txdiffctrl_0;

////GT DRP interface signals
  wire [15:0] gt_drpdo_0;
  wire [0:0] gt_drprdy_0;
  wire [0:0] gt_drpen_0;
  wire [0:0] gt_drpwe_0;
  wire [9:0] gt_drpaddr_0;
  wire [15:0] gt_drpdi_0;
  wire rx_core_clk_0;
  wire rx_clk_out_0;
  wire tx_clk_out_0;
  //assign rx_core_clk_0 = tx_clk_out_0;
  assign rx_core_clk_0 = rx_clk_out_0;


//// RX_0 Signals
  wire rx_reset_0;
  wire user_rx_reset_0;
  wire rxrecclkout_0;

//// RX_0 User Interface Signals
  wire rx_axis_tvalid_0;
  wire [63:0] rx_axis_tdata_0;
  wire rx_axis_tlast_0;
  wire [7:0] rx_axis_tkeep_0;
  wire rx_axis_tuser_0;
  wire [55:0] rx_preambleout_0;

//// RX_0 Control Signals
  wire ctl_rx_test_pattern_0;
  wire ctl_rx_test_pattern_enable_0;
  wire ctl_rx_data_pattern_select_0;
  wire ctl_rx_enable_0;
  wire ctl_rx_delete_fcs_0;
  wire ctl_rx_ignore_fcs_0;
  wire [14:0] ctl_rx_max_packet_len_0;
  wire [7:0] ctl_rx_min_packet_len_0;
  wire ctl_rx_custom_preamble_enable_0;
  wire ctl_rx_check_sfd_0;
  wire ctl_rx_check_preamble_0;
  wire ctl_rx_process_lfi_0;
  wire ctl_rx_force_resync_0;




//// RX_0 Stats Signals
  wire stat_rx_block_lock_0;
  wire stat_rx_framing_err_valid_0;
  wire stat_rx_framing_err_0;
  wire stat_rx_hi_ber_0;
  wire stat_rx_valid_ctrl_code_0;
  wire stat_rx_bad_code_0;
  wire [1:0] stat_rx_total_packets_0;
  wire stat_rx_total_good_packets_0;
  wire [3:0] stat_rx_total_bytes_0;
  wire [13:0] stat_rx_total_good_bytes_0;
  wire stat_rx_packet_small_0;
  wire stat_rx_jabber_0;
  wire stat_rx_packet_large_0;
  wire stat_rx_oversize_0;
  wire stat_rx_undersize_0;
  wire stat_rx_toolong_0;
  wire stat_rx_fragment_0;
  wire stat_rx_packet_64_bytes_0;
  wire stat_rx_packet_65_127_bytes_0;
  wire stat_rx_packet_128_255_bytes_0;
  wire stat_rx_packet_256_511_bytes_0;
  wire stat_rx_packet_512_1023_bytes_0;
  wire stat_rx_packet_1024_1518_bytes_0;
  wire stat_rx_packet_1519_1522_bytes_0;
  wire stat_rx_packet_1523_1548_bytes_0;
  wire [1:0] stat_rx_bad_fcs_0;
  wire stat_rx_packet_bad_fcs_0;
  wire [1:0] stat_rx_stomped_fcs_0;
  wire stat_rx_packet_1549_2047_bytes_0;
  wire stat_rx_packet_2048_4095_bytes_0;
  wire stat_rx_packet_4096_8191_bytes_0;
  wire stat_rx_packet_8192_9215_bytes_0;
  wire stat_rx_unicast_0;
  wire stat_rx_multicast_0;
  wire stat_rx_broadcast_0;
  wire stat_rx_vlan_0;
  wire stat_rx_inrangeerr_0;
  wire stat_rx_bad_preamble_0;
  wire stat_rx_bad_sfd_0;
  wire stat_rx_got_signal_os_0;
  wire stat_rx_test_pattern_mismatch_0;
  wire stat_rx_truncated_0;
  wire stat_rx_local_fault_0;
  wire stat_rx_remote_fault_0;
  wire stat_rx_internal_local_fault_0;
  wire stat_rx_received_local_fault_0;
   wire stat_rx_status_0;
//// TX_0 Signals
  wire tx_reset_0;
  wire user_tx_reset_0;

//// TX_0 User Interface Signals
  wire tx_axis_tready_0;
  wire tx_axis_tvalid_0;
  wire [63:0] tx_axis_tdata_0;
  wire tx_axis_tlast_0;
  wire [7:0] tx_axis_tkeep_0;
  wire tx_axis_tuser_0;
  wire tx_unfout_0;
  wire [55:0] tx_preamblein_0;
//// TX_0 Control Signals
  wire ctl_tx_test_pattern_0;
  wire ctl_tx_test_pattern_enable_0;
  wire ctl_tx_test_pattern_select_0;
  wire ctl_tx_data_pattern_select_0;
  wire [57:0] ctl_tx_test_pattern_seed_a_0;
  wire [57:0] ctl_tx_test_pattern_seed_b_0;
  wire ctl_tx_enable_0;
  wire ctl_tx_fcs_ins_enable_0;
  wire [3:0] ctl_tx_ipg_value_0;
  wire ctl_tx_send_lfi_0;
  wire ctl_tx_send_rfi_0;
  wire ctl_tx_send_idle_0;
  wire ctl_tx_custom_preamble_enable_0;
  wire ctl_tx_ignore_fcs_0;


//// TX_0 Stats Signals
  wire stat_tx_total_packets_0;
  wire [3:0] stat_tx_total_bytes_0;
  wire stat_tx_total_good_packets_0;
  wire [13:0] stat_tx_total_good_bytes_0;
  wire stat_tx_packet_64_bytes_0;
  wire stat_tx_packet_65_127_bytes_0;
  wire stat_tx_packet_128_255_bytes_0;
  wire stat_tx_packet_256_511_bytes_0;
  wire stat_tx_packet_512_1023_bytes_0;
  wire stat_tx_packet_1024_1518_bytes_0;
  wire stat_tx_packet_1519_1522_bytes_0;
  wire stat_tx_packet_1523_1548_bytes_0;
  wire stat_tx_packet_small_0;
  wire stat_tx_packet_large_0;
  wire stat_tx_packet_1549_2047_bytes_0;
  wire stat_tx_packet_2048_4095_bytes_0;
  wire stat_tx_packet_4096_8191_bytes_0;
  wire stat_tx_packet_8192_9215_bytes_0;
  wire stat_tx_unicast_0;
  wire stat_tx_multicast_0;
  wire stat_tx_broadcast_0;
  wire stat_tx_vlan_0;
  wire stat_tx_bad_fcs_0;
  wire stat_tx_frame_error_0;
  wire stat_tx_local_fault_0;






   wire gtwiz_reset_tx_datapath_0;
   wire gtwiz_reset_rx_datapath_0;
   wire gtpowergood_out_0;
   wire [2:0] txoutclksel_in_0;
   wire [2:0] rxoutclksel_in_0;

   assign txoutclksel_in_0 = 3'b101;    // this value should not be changed as per gtwizard 
   assign rxoutclksel_in_0 = 3'b101;    // this value should not be changed as per gtwizard
   assign rx_block_lock_led_0 = block_lock_led_0 & stat_rx_status_0;
  
  wire  [4:0 ]completion_status_0;
  wire  [4:0 ]completion_status_1;
  wire  [4:0 ]completion_status_2;
  wire  [4:0 ]completion_status_3;
  wire  gt_refclk_out;
  
  //// Add for M-KUBOS
  wire dclk;
  wire restart_tx_rx;
  wire sys_reset;
  wire send_continous_pkts_0;
  wire send_continous_pkts_1;
  wire send_continous_pkts_2;
  wire send_continous_pkts_3;
  assign send_continous_pkts_0 = 1'b0;
  assign send_continous_pkts_1 = 1'b0;
  assign send_continous_pkts_2 = 1'b0;
  assign send_continous_pkts_3 = 1'b0;
  
  wire clk_100;
  wire rst_156;
  
  //assign dclk = rx_clk_out_0;
  
  sync_reset sync_reset_156_inst (
    .clk(dclk),
    .rst(sys_reset),
    .out(rst_156)
  );
  

design_1_wrapper design_1_wrapper
(
    .CLK100M(clk_100),
    .CLK156M(dclk),
    .completion_status0(completion_status_0),
    .completion_status1(completion_status_1),
    .completion_status2(completion_status_2),
    .completion_status3(completion_status_3),
    .restart_tx_rx(restart_tx_rx),
    .sys_resetp(sys_reset)
);

wire [63:0] rx_mii_d_0;
wire [7:0] rx_mii_c_0;

wire [63:0] tx_mii_d_0;
wire [7:0] tx_mii_c_0;


  
xxv_ethernet_0 DUT
(
  //GT_0 Signals
    .gt_rxp_in_0 (gt_rxp_in_0),
    .gt_rxn_in_0 (gt_rxn_in_0),
    .gt_txp_out_0 (gt_txp_out_0),
    .gt_txn_out_0 (gt_txn_out_0),

    //.tx_clk_out_0 (tx_clk_out_0),
    .tx_mii_clk_0 (tx_clk_out_0),
    .rx_core_clk_0 (rx_core_clk_0),
    .rx_clk_out_0 (rx_clk_out_0),

    .gt_loopback_in_0 (gt_loopback_in_0),
//// RX signals
    .rx_reset_0 (rx_reset_0),
    .user_rx_reset_0 (user_rx_reset_0),
    .rxrecclkout_0 (rxrecclkout_0),

//// RX User interface to MAC
    .rx_mii_d_0(rx_mii_d_0),
    .rx_mii_c_0(rx_mii_c_0),

//// RX Control Signals
    //.ctl_rx_test_pattern_0 (ctl_rx_test_pattern_0),
    //.ctl_rx_test_pattern_enable_0 (ctl_rx_test_pattern_enable_0),
    //.ctl_rx_data_pattern_select_0 (ctl_rx_data_pattern_select_0),
    .ctl_rx_test_pattern_0 (1'b0),
    .ctl_rx_test_pattern_enable_0 (1'b0),
    .ctl_rx_data_pattern_select_0 (1'b0),
    .ctl_rx_prbs31_test_pattern_enable_0 (1'b0),

//// RX Stats Signals
    .stat_rx_block_lock_0 (stat_rx_block_lock_0),
    .stat_rx_framing_err_valid_0 (stat_rx_framing_err_valid_0),
    .stat_rx_framing_err_0 (stat_rx_framing_err_0),
    .stat_rx_hi_ber_0 (stat_rx_hi_ber_0),
    .stat_rx_valid_ctrl_code_0 (stat_rx_valid_ctrl_code_0),
    .stat_rx_bad_code_0 (stat_rx_bad_code_0),
    .stat_rx_bad_code_valid_0 (),
    .stat_rx_error_valid_0(),
    .stat_rx_error_0(),
    .stat_rx_fifo_error_0(),
    .stat_rx_local_fault_0 (stat_rx_local_fault_0),
   .stat_rx_status_0 (stat_rx_status_0),

//// TX Signals
  .tx_reset_0 (tx_reset_0),
  .user_tx_reset_0 (user_tx_reset_0),
//// TX User Interface Signals
    .tx_mii_d_0(tx_mii_d_0),
    .tx_mii_c_0(tx_mii_c_0),

//// TX Control Signals
    //.ctl_tx_test_pattern_0 (ctl_tx_test_pattern_0),
    //.ctl_tx_test_pattern_enable_0 (ctl_tx_test_pattern_enable_0),
    //.ctl_tx_test_pattern_select_0 (ctl_tx_test_pattern_select_0),
    //.ctl_tx_data_pattern_select_0 (ctl_tx_data_pattern_select_0),
    //.ctl_tx_test_pattern_seed_a_0 (ctl_tx_test_pattern_seed_a_0),
    //.ctl_tx_test_pattern_seed_b_0 (ctl_tx_test_pattern_seed_b_0),
    .ctl_tx_test_pattern_0 (1'b0),
    .ctl_tx_test_pattern_enable_0 (1'b0),
    .ctl_tx_test_pattern_select_0 (1'b0),
    .ctl_tx_data_pattern_select_0 (1'b0),
    .ctl_tx_test_pattern_seed_a_0 (58'b0),
    .ctl_tx_test_pattern_seed_b_0 (58'b0),
    .ctl_tx_prbs31_test_pattern_enable_0(1'b0),

//// TX Stats Signals
    .stat_tx_local_fault_0 (stat_tx_local_fault_0),

    .gtwiz_reset_tx_datapath_0 (gtwiz_reset_tx_datapath_0),
    .gtwiz_reset_rx_datapath_0 (gtwiz_reset_rx_datapath_0),
    .gtpowergood_out_0 (gtpowergood_out_0),
    .txoutclksel_in_0 (txoutclksel_in_0),
    .rxoutclksel_in_0 (rxoutclksel_in_0),

    .gt_refclk_p (gt_refclk_p),
    .gt_refclk_n (gt_refclk_n),
    .gt_refclk_out (gt_refclk_out),
    .sys_reset (sys_reset),
    .dclk (clk_100)
);
assign completion_status_0 = stat_rx_status_0;


assign rx_block_lock_led_1 = stat_rx_block_lock_0;

fpga_core fpga_core_inst(
  .clk(dclk),
  .clk_mqtt(clk_100),
  .rst(rst_156),
  .rst_mqtt(sys_reset),

  .sfp_1_tx_clk(tx_clk_out_0),
  .sfp_1_tx_rst(sys_reset),
  .sfp_1_txd(tx_mii_d_0),
  .sfp_1_txc(tx_mii_c_0),
  .sfp_1_rx_clk(rx_clk_out_0),
  .sfp_1_rx_rst(sys_reset),
  .sfp_1_rxd(rx_mii_d_0),
  .sfp_1_rxc(rx_mii_c_0)
);

endmodule
