// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: xilinx.com:ip:xxv_ethernet:3.0
// IP Revision: 0

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
xxv_ethernet_0 your_instance_name (
  .gt_rxp_in_0(gt_rxp_in_0),                                                  // input wire gt_rxp_in_0
  .gt_rxn_in_0(gt_rxn_in_0),                                                  // input wire gt_rxn_in_0
  .gt_txp_out_0(gt_txp_out_0),                                                // output wire gt_txp_out_0
  .gt_txn_out_0(gt_txn_out_0),                                                // output wire gt_txn_out_0
  .rx_core_clk_0(rx_core_clk_0),                                              // input wire rx_core_clk_0
  .txoutclksel_in_0(txoutclksel_in_0),                                        // input wire [2 : 0] txoutclksel_in_0
  .rxoutclksel_in_0(rxoutclksel_in_0),                                        // input wire [2 : 0] rxoutclksel_in_0
  .gtwiz_reset_tx_datapath_0(gtwiz_reset_tx_datapath_0),                      // input wire gtwiz_reset_tx_datapath_0
  .gtwiz_reset_rx_datapath_0(gtwiz_reset_rx_datapath_0),                      // input wire gtwiz_reset_rx_datapath_0
  .rxrecclkout_0(rxrecclkout_0),                                              // output wire rxrecclkout_0
  .sys_reset(sys_reset),                                                      // input wire sys_reset
  .dclk(dclk),                                                                // input wire dclk
  .tx_mii_clk_0(tx_mii_clk_0),                                                // output wire tx_mii_clk_0
  .rx_clk_out_0(rx_clk_out_0),                                                // output wire rx_clk_out_0
  .gt_refclk_p(gt_refclk_p),                                                  // input wire gt_refclk_p
  .gt_refclk_n(gt_refclk_n),                                                  // input wire gt_refclk_n
  .gt_refclk_out(gt_refclk_out),                                              // output wire gt_refclk_out
  .gtpowergood_out_0(gtpowergood_out_0),                                      // output wire gtpowergood_out_0
  .rx_reset_0(rx_reset_0),                                                    // input wire rx_reset_0
  .user_rx_reset_0(user_rx_reset_0),                                          // output wire user_rx_reset_0
  .rx_mii_d_0(rx_mii_d_0),                                                    // output wire [63 : 0] rx_mii_d_0
  .rx_mii_c_0(rx_mii_c_0),                                                    // output wire [7 : 0] rx_mii_c_0
  .ctl_rx_test_pattern_0(ctl_rx_test_pattern_0),                              // input wire ctl_rx_test_pattern_0
  .ctl_rx_data_pattern_select_0(ctl_rx_data_pattern_select_0),                // input wire ctl_rx_data_pattern_select_0
  .ctl_rx_test_pattern_enable_0(ctl_rx_test_pattern_enable_0),                // input wire ctl_rx_test_pattern_enable_0
  .ctl_rx_prbs31_test_pattern_enable_0(ctl_rx_prbs31_test_pattern_enable_0),  // input wire ctl_rx_prbs31_test_pattern_enable_0
  .stat_rx_framing_err_0(stat_rx_framing_err_0),                              // output wire stat_rx_framing_err_0
  .stat_rx_framing_err_valid_0(stat_rx_framing_err_valid_0),                  // output wire stat_rx_framing_err_valid_0
  .stat_rx_local_fault_0(stat_rx_local_fault_0),                              // output wire stat_rx_local_fault_0
  .stat_rx_block_lock_0(stat_rx_block_lock_0),                                // output wire stat_rx_block_lock_0
  .stat_rx_valid_ctrl_code_0(stat_rx_valid_ctrl_code_0),                      // output wire stat_rx_valid_ctrl_code_0
  .stat_rx_status_0(stat_rx_status_0),                                        // output wire stat_rx_status_0
  .stat_rx_hi_ber_0(stat_rx_hi_ber_0),                                        // output wire stat_rx_hi_ber_0
  .stat_rx_bad_code_0(stat_rx_bad_code_0),                                    // output wire stat_rx_bad_code_0
  .stat_rx_bad_code_valid_0(stat_rx_bad_code_valid_0),                        // output wire stat_rx_bad_code_valid_0
  .stat_rx_error_0(stat_rx_error_0),                                          // output wire [7 : 0] stat_rx_error_0
  .stat_rx_error_valid_0(stat_rx_error_valid_0),                              // output wire stat_rx_error_valid_0
  .stat_rx_fifo_error_0(stat_rx_fifo_error_0),                                // output wire stat_rx_fifo_error_0
  .tx_reset_0(tx_reset_0),                                                    // input wire tx_reset_0
  .user_tx_reset_0(user_tx_reset_0),                                          // output wire user_tx_reset_0
  .tx_mii_d_0(tx_mii_d_0),                                                    // input wire [63 : 0] tx_mii_d_0
  .tx_mii_c_0(tx_mii_c_0),                                                    // input wire [7 : 0] tx_mii_c_0
  .stat_tx_local_fault_0(stat_tx_local_fault_0),                              // output wire stat_tx_local_fault_0
  .ctl_tx_test_pattern_0(ctl_tx_test_pattern_0),                              // input wire ctl_tx_test_pattern_0
  .ctl_tx_test_pattern_enable_0(ctl_tx_test_pattern_enable_0),                // input wire ctl_tx_test_pattern_enable_0
  .ctl_tx_test_pattern_select_0(ctl_tx_test_pattern_select_0),                // input wire ctl_tx_test_pattern_select_0
  .ctl_tx_data_pattern_select_0(ctl_tx_data_pattern_select_0),                // input wire ctl_tx_data_pattern_select_0
  .ctl_tx_test_pattern_seed_a_0(ctl_tx_test_pattern_seed_a_0),                // input wire [57 : 0] ctl_tx_test_pattern_seed_a_0
  .ctl_tx_test_pattern_seed_b_0(ctl_tx_test_pattern_seed_b_0),                // input wire [57 : 0] ctl_tx_test_pattern_seed_b_0
  .ctl_tx_prbs31_test_pattern_enable_0(ctl_tx_prbs31_test_pattern_enable_0),  // input wire ctl_tx_prbs31_test_pattern_enable_0
  .gt_loopback_in_0(gt_loopback_in_0)                                        // input wire [2 : 0] gt_loopback_in_0
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file xxv_ethernet_0.v when simulating
// the core, xxv_ethernet_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

