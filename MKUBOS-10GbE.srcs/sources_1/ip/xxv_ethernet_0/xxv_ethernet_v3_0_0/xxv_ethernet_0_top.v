////------------------------------------------------------------------------------
//// Copyright 2015 Xilinx, Inc. All rights reserved.
//// This file contains confidential and proprietary information of Xilinx, Inc.
//// and is protected under U.S. and international copyright and other
//// intellectual property laws.
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
module xxv_ethernet_0_top #(
  parameter SERDES_WIDTH = 64
)(
  //// #-------------------
  //// # Clocks and Resets
  //// #-------------------
  input  wire tx_mii_reset,
  input  wire rx_mii_clk,
  input  wire rx_mii_reset,
  input  wire rx_serdes_clk,
  input  wire rx_serdes_reset,
  input  wire tx_serdes_refclk,
  input  wire tx_serdes_refclk_reset,


  //// #----------------------
  //// # Control Interface
  //// #----------------------
  input  wire ctl_rx_test_pattern,
  input  wire ctl_rx_test_pattern_enable,
  input  wire ctl_rx_data_pattern_select,
  input  wire ctl_rx_prbs31_test_pattern_enable,
  input  wire ctl_tx_test_pattern,
  input  wire ctl_tx_test_pattern_enable,
  input  wire ctl_tx_test_pattern_select,
  input  wire ctl_tx_data_pattern_select,
  input  wire [57:0] ctl_tx_test_pattern_seed_a,
  input  wire [57:0] ctl_tx_test_pattern_seed_b,
  input  wire ctl_tx_prbs31_test_pattern_enable,


  //// #---------------------
  //// # Stats Interface
  //// #---------------------
  output wire stat_rx_block_lock,
  output wire stat_rx_framing_err_valid,
  output wire stat_rx_framing_err,
  output wire stat_rx_hi_ber,
  output wire stat_rx_valid_ctrl_code,
  output wire stat_rx_bad_code,
  output wire stat_rx_bad_code_valid,
  output wire stat_rx_error_valid,
  output wire [7:0] stat_rx_error,
  output wire stat_rx_fifo_error,
  output wire stat_rx_local_fault,
  output wire stat_tx_local_fault,

  //// #-------------------
  //// # User Interface
  //// #-------------------
  output wire [63:0] rx_mii_d,
  output wire [7:0] rx_mii_c,
  input  wire [63:0] tx_mii_d,
  input  wire [7:0] tx_mii_c,
  //// #---------------------
  //// # Tx Serdes Interface
  //// #---------------------
  output wire [64-1:0] tx_serdes_data0,
  output wire [1:0] tx_serdes_header0,

  //// #---------------------
  //// # Rx Serdes Interface
  //// #---------------------
  input  wire [64-1:0] rx_serdes_data0,
  input  wire [1:0] rx_serdes_header0,
  input  wire rx_serdes_headervalid0,
  input  wire rx_serdes_datavalid0,
  output wire rx_serdes_bitslip0
);


  wire [79:0] ctl_rx_systemtimerin;
  wire [79:0] ctl_tx_systemtimerin;
  assign  ctl_rx_systemtimerin = 80'b0;
  assign  ctl_tx_systemtimerin = 80'b0;

  wire [1:0]  tx_ptp_1588op_in = 2'b0;
  wire [15:0] tx_ptp_tag_field_in = 16'b0;
  wire tx_ptp_tstamp_valid_out;
  wire rx_ptp_tstamp_valid_out;
  wire [15:0] tx_ptp_tstamp_tag_out;
  wire [79:0] tx_ptp_tstamp_out;
  wire [79:0] rx_ptp_tstamp_out;
  wire tx_mii_clk;
  wire tx_core_clk = tx_serdes_refclk ;
  wire tx_reset = tx_serdes_refclk_reset ;

  wire rx_reset = rx_serdes_reset;
  assign tx_mii_clk = tx_serdes_refclk;

  wire [63:0] hsec_tx_serdes_data0;
  wire [1:0] hsec_tx_serdes_header0;
  wire [63:0] hsec_rx_serdes_data0;
  wire [1:0] hsec_rx_serdes_header0;
  wire hsec_rx_serdes_headervalid0;
  wire hsec_rx_serdes_datavalid0;
  wire hsec_rx_serdes_bitslip0;

  wire [15:0] ctl_tx_vl_length_minus1;
  wire [15:0] ctl_rx_vl_length_minus1;
  wire [63:0] ctl_rx_vl_marker_id0;
  wire [63:0] ctl_rx_vl_marker_id1;
  wire [63:0] ctl_rx_vl_marker_id2;
  wire [63:0] ctl_rx_vl_marker_id3;
  wire [63:0] ctl_tx_vl_marker_id0;
  wire [63:0] ctl_tx_vl_marker_id1;
  wire [63:0] ctl_tx_vl_marker_id2;
  wire [63:0] ctl_tx_vl_marker_id3;

  wire stat_core_speed;
  wire axi_ctl_core_mode_switch; 
  assign stat_core_speed = 1'b1;

  //// #---------------------------------------------------------
  //// #                      Core
  //// #---------------------------------------------------------
  xxv_ethernet_v3_0_0_pcs_baser_hsec_cores #(
    .SERDES_WIDTH (SERDES_WIDTH)
  ) i_xxv_ethernet_0_CORE (
    .tx_mii_reset (tx_mii_reset),
    .rx_mii_clk (rx_mii_clk),
    .rx_mii_reset (rx_mii_reset),

    .tx_serdes_refclk (tx_serdes_refclk),
    .tx_serdes_refclk_reset (tx_serdes_refclk_reset),
    .rx_serdes_clk (rx_serdes_clk),
    .rx_serdes_reset (rx_serdes_reset),
  //// #----------------------
  //// # Control Interface
  //// #----------------------

    .ctl_tx_test_pattern (ctl_tx_test_pattern),
    .ctl_tx_test_pattern_enable (ctl_tx_test_pattern_enable),
    .ctl_tx_test_pattern_select (ctl_tx_test_pattern_select),
    .ctl_tx_data_pattern_select (ctl_tx_data_pattern_select),
    .ctl_tx_test_pattern_seed_a (ctl_tx_test_pattern_seed_a),
    .ctl_tx_test_pattern_seed_b (ctl_tx_test_pattern_seed_b),
    .ctl_tx_prbs31_test_pattern_enable (ctl_tx_prbs31_test_pattern_enable),

  //// set port_decl [get_sig_inst core_top_ctl_array {opt_list common} txrx=ptp]
    .ctl_rx_systemtimerin (ctl_rx_systemtimerin),
    .ctl_tx_systemtimerin (ctl_tx_systemtimerin),

    .ctl_data_rate (1'b1),
    .ctl_rx_test_pattern (ctl_rx_test_pattern),
    .ctl_rx_test_pattern_enable (ctl_rx_test_pattern_enable),
    .ctl_rx_data_pattern_select (ctl_rx_data_pattern_select),
    .ctl_rx_prbs31_test_pattern_enable (ctl_rx_prbs31_test_pattern_enable),

  //// #----------------------
  //// # Rx User Interface
  //// #----------------------
    .rx_mii_d (rx_mii_d),
    .rx_mii_c (rx_mii_c),

  //// #----------------------
  //// # Tx User Interface
  //// #----------------------
    .tx_mii_d (tx_mii_d),
    .tx_mii_c (tx_mii_c),

    .tx_ptp_1588op_in (tx_ptp_1588op_in),
    .tx_ptp_tag_field_in (tx_ptp_tag_field_in),
    .tx_ptp_tstamp_valid_out (tx_ptp_tstamp_valid_out),
    .tx_ptp_tstamp_tag_out (tx_ptp_tstamp_tag_out),
    .tx_ptp_tstamp_out (tx_ptp_tstamp_out),
    .rx_ptp_tstamp_out (rx_ptp_tstamp_out),
    .rx_ptp_tstamp_valid_out (rx_ptp_tstamp_valid_out),
  //// #--------------------
  //// # Stats Interface
  //// #--------------------
    .stat_tx_local_fault (stat_tx_local_fault),

    .stat_rx_block_lock (stat_rx_block_lock),
    .stat_rx_framing_err_valid (stat_rx_framing_err_valid),
    .stat_rx_framing_err (stat_rx_framing_err),
    .stat_rx_hi_ber (stat_rx_hi_ber),
    .stat_rx_valid_ctrl_code (stat_rx_valid_ctrl_code),
    .stat_rx_bad_code (stat_rx_bad_code),
    .stat_rx_bad_code_valid (stat_rx_bad_code_valid),
    .stat_rx_error_valid (stat_rx_error_valid),
    .stat_rx_error (stat_rx_error),
    .stat_rx_fifo_error (stat_rx_fifo_error),
    .stat_rx_local_fault (stat_rx_local_fault),

  //// set port_decl [get_sig_inst core_top_stat_array {opt_list common} txrx=ptp]
    .stat_tx_ptp_fifo_read_error (stat_tx_ptp_fifo_read_error),
    .stat_tx_ptp_fifo_write_error (stat_tx_ptp_fifo_write_error),
  //// #---------------------
  //// # Tx Serdes Interface
  //// #---------------------
    .tx_serdes_data0 (hsec_tx_serdes_data0),
    .tx_serdes_header0 (hsec_tx_serdes_header0),
  // #---------------------
  // # Rx Serdes Interface
  // #---------------------
    .rx_serdes_data0 (hsec_rx_serdes_data0),
    .rx_serdes_header0 (hsec_rx_serdes_header0),
    .rx_serdes_headervalid0 (hsec_rx_serdes_headervalid0),
    .rx_serdes_datavalid0 (hsec_rx_serdes_datavalid0),
    .rx_serdes_bitslip0 (hsec_rx_serdes_bitslip0)

  ); //// i_HSEC_CORES


  assign hsec_rx_serdes_data0 = rx_serdes_data0;
  assign hsec_rx_serdes_header0 = rx_serdes_header0;
  assign hsec_rx_serdes_headervalid0 = rx_serdes_headervalid0;
  assign hsec_rx_serdes_datavalid0 = rx_serdes_datavalid0;

  assign tx_serdes_data0 = hsec_tx_serdes_data0;
  assign tx_serdes_header0 = hsec_tx_serdes_header0;
  assign rx_serdes_bitslip0 = hsec_rx_serdes_bitslip0;
  


endmodule



