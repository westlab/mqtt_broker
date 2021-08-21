//------------------------------------------------------------------------------
// (c) Copyright 1995-2013 Xilinx, Inc. All rights reserved.
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

`timescale 1fs/1fs


(* CHECK_LICENSE_TYPE = "xxv_ethernet_0,xxv_ethernet_core,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
(* CORE_GENERATION_INFO = "xxv_ethernet_0,xxv_ethernet_v3_0_0,{x_ipProduct=Vivado 2019.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xxv_ethernet,x_ipVersion=3.0,x_ipCoreRevision=0,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_CORE=Ethernet PCS/PMA 64-bit,C_XGMII_INTERFACE=1,C_LINE_RATE=10,C_NUM_OF_CORES=1,C_CLOCKING=Asynchronous,C_DATA_PATH_INTERFACE=MII,C_RUNTIME_SWITCH=0,C_ENABLE_PREEMPTION=0,C_ENABLE_PREEMPTION_FIFO=0,C_ENABLE_DATAPATH_PARITY=0,C_BASE_R_KR=BASE-R,C_INCLUDE_FEC_LOGIC=0,C_INCLUDE_RSFEC_LOGIC=0,C_INCLUDE_HYBRID_CMAC_RSFEC_LOGIC=0,C_INCLUDE_AUTO_NEG_LT_LOGIC=None,C_ANLT_CLK_IN_MHZ=100,C_INCLUDE_AXI4_INTERFACE=0,C_INCLUDE_STATISTICS_COUNTERS=0,C_STATISTICS_REGS_TYPE=0,C_INCLUDE_USER_FIFO=0,C_ENABLE_TX_FLOW_CONTROL_LOGIC=0,C_ENABLE_RX_FLOW_CONTROL_LOGIC=0,C_ENABLE_TIME_STAMPING=0,C_PTP_OPERATION_MODE=2,C_PTP_CLOCKING_MODE=0,C_TX_LATENCY_ADJUST=0,C_ENABLE_VLANE_ADJUST_MODE=0,C_GT_LOCATION=1,C_GT_REF_CLK_FREQ=156.25,C_GT_DRP_CLK=100,C_GT_TYPE=GTY,C_GT_GROUP_SELECT=Quad X0Y0,C_LANE1_GT_LOC=X0Y4,C_LANE2_GT_LOC=NA,C_LANE3_GT_LOC=NA,C_LANE4_GT_LOC=NA,C_INS_LOSS_NYQ=30,C_RX_EQ_MODE=AUTO,C_ENABLE_PIPELINE_REG=0,C_ADD_GT_CNTRL_STS_PORTS=0,C_INCLUDE_SHARED_LOGIC=1,C_FAST_SIM_MODE=0,C_SWITCH_1_10_25G=0,C_FAMILY_CHK=zynquplus,IS_BOARD_PROJECT=0,C_AXIS_TDATA_WIDTH=64,C_AXIS_TKEEP_WIDTH=7,C_TX_TOTAL_BYTES_WIDTH=4,C_GT_DIFFCTRL_WIDTH=4,C_MII_DATA_WIDTH=64,C_MII_CTRL_WIDTH=8,x_ipLicense=xxv_eth_mac_pcs@2019.04(design_linking),x_ipLicense=xxv_eth_basekr@2019.04(design_linking),x_ipLicense=x_eth_mac@2019.04(design_linking),x_ipLicense=xxv_tsn_802d1cm@2019.04(design_linking)}" *)
(* X_CORE_INFO = "xxv_ethernet_v3_0_0,Vivado 2019.1" *)

module xxv_ethernet_0 (
//// GT_0 Signals
  gt_rxp_in_0,
  gt_rxn_in_0,
  gt_txp_out_0,
  gt_txn_out_0,
  tx_mii_clk_0,
  rx_core_clk_0,
  rx_clk_out_0,
  gt_loopback_in_0,
//// RX_0 Signals
  rx_reset_0,
  user_rx_reset_0,
  rxrecclkout_0,
//// RX_0 User Interface  Signals
  rx_mii_d_0,
  rx_mii_c_0,


//// RX_0 Control Signals
  ctl_rx_test_pattern_0,
  ctl_rx_test_pattern_enable_0,
  ctl_rx_data_pattern_select_0,
  ctl_rx_prbs31_test_pattern_enable_0,



//// RX_0 Stats Signals
  stat_rx_block_lock_0,
  stat_rx_framing_err_valid_0,
  stat_rx_framing_err_0,
  stat_rx_hi_ber_0,
  stat_rx_valid_ctrl_code_0,
  stat_rx_bad_code_0,
  stat_rx_bad_code_valid_0,
  stat_rx_error_valid_0,
  stat_rx_error_0,
  stat_rx_fifo_error_0,
  stat_rx_local_fault_0,
  stat_rx_status_0,



//// TX_0 Signals
  tx_reset_0,
  user_tx_reset_0,

//// TX_0 User Interface  Signals
  tx_mii_d_0,
  tx_mii_c_0,

//// TX_0 Control Signals
  ctl_tx_test_pattern_0,
  ctl_tx_test_pattern_enable_0,
  ctl_tx_test_pattern_select_0,
  ctl_tx_data_pattern_select_0,
  ctl_tx_test_pattern_seed_a_0,
  ctl_tx_test_pattern_seed_b_0,
  ctl_tx_prbs31_test_pattern_enable_0,


//// TX_0 Stats Signals
  stat_tx_local_fault_0,








  gtwiz_reset_tx_datapath_0,
  gtwiz_reset_rx_datapath_0,
  gtpowergood_out_0,
  txoutclksel_in_0,
  rxoutclksel_in_0,



  gt_refclk_p,
  gt_refclk_n,
  gt_refclk_out,

  sys_reset,
  dclk
);
  input  wire gt_rxp_in_0;
  input  wire gt_rxn_in_0;
  output wire gt_txp_out_0;
  output wire gt_txn_out_0;
  output wire tx_mii_clk_0;
  input  wire rx_core_clk_0;
  output wire rx_clk_out_0;
  input  wire [2:0] gt_loopback_in_0;
//// RX_0 Signals
  input  wire rx_reset_0;
  output wire user_rx_reset_0;
  output wire rxrecclkout_0;
//// RX_0 User Interface Signals
  output wire [63:0] rx_mii_d_0;
  output wire [7:0] rx_mii_c_0;



//// RX_0 Control Signals
  input  wire ctl_rx_test_pattern_0;
  input  wire ctl_rx_test_pattern_enable_0;
  input  wire ctl_rx_data_pattern_select_0;
  input  wire ctl_rx_prbs31_test_pattern_enable_0;



//// RX_0 Stats Signals
  output wire stat_rx_block_lock_0;
  output wire stat_rx_framing_err_valid_0;
  output wire stat_rx_framing_err_0;
  output wire stat_rx_hi_ber_0;
  output wire stat_rx_valid_ctrl_code_0;
  output wire stat_rx_bad_code_0;
  output wire stat_rx_bad_code_valid_0;
  output wire stat_rx_error_valid_0;
  output wire [7:0] stat_rx_error_0;
  output wire stat_rx_fifo_error_0;
  output wire stat_rx_local_fault_0;
    output wire  stat_rx_status_0;


//// TX_0 Signals
  input  wire tx_reset_0;
  output wire user_tx_reset_0;

//// TX_0 User Interface Signals
  input  wire [63:0] tx_mii_d_0;
  input  wire [7:0] tx_mii_c_0;

//// TX_0 Control Signals
  input  wire ctl_tx_test_pattern_0;
  input  wire ctl_tx_test_pattern_enable_0;
  input  wire ctl_tx_test_pattern_select_0;
  input  wire ctl_tx_data_pattern_select_0;
  input  wire [57:0] ctl_tx_test_pattern_seed_a_0;
  input  wire [57:0] ctl_tx_test_pattern_seed_b_0;
  input  wire ctl_tx_prbs31_test_pattern_enable_0;


//// TX_0 Stats Signals
  output wire stat_tx_local_fault_0;





  input wire gtwiz_reset_tx_datapath_0;
  input wire gtwiz_reset_rx_datapath_0;
  output wire gtpowergood_out_0;
  input wire [2:0] txoutclksel_in_0;
  input wire [2:0] rxoutclksel_in_0;

  input  wire sys_reset;
  input  wire dclk;

  input  wire [0:0] gt_refclk_p;
  input  wire [0:0] gt_refclk_n;
  output wire [0:0] gt_refclk_out;


  xxv_ethernet_0_wrapper #(
    .C_LINE_RATE(10),
    .C_NUM_OF_CORES(1),
    .C_CLOCKING("Asynchronous"),
    .C_DATA_PATH_INTERFACE("MII"),
    .C_BASE_R_KR("BASE-R"),
    .C_INCLUDE_FEC_LOGIC(0),
    .C_INCLUDE_RSFEC_LOGIC(0),
    .C_INCLUDE_HYBRID_CMAC_RSFEC_LOGIC("0"),
    .C_INCLUDE_AUTO_NEG_LT_LOGIC("None"),
    .C_INCLUDE_USER_FIFO("0"),
    .C_ENABLE_TX_FLOW_CONTROL_LOGIC(0),
    .C_ENABLE_RX_FLOW_CONTROL_LOGIC(0),
    .C_ENABLE_TIME_STAMPING(0),
    .C_PTP_OPERATION_MODE(2),
    .C_PTP_CLOCKING_MODE(0),
    .C_TX_LATENCY_ADJUST(0),
    .C_ENABLE_VLANE_ADJUST_MODE(0),
    .C_ENABLE_PIPELINE_REG(0),
    .C_RUNTIME_SWITCH(0)
  ) inst (
  
    .gt_rxp_in_0 (gt_rxp_in_0),
    .gt_rxn_in_0 (gt_rxn_in_0),
    .gt_txp_out_0 (gt_txp_out_0),
    .gt_txn_out_0 (gt_txn_out_0),

    .tx_mii_clk_0 (tx_mii_clk_0),
    .rx_core_clk_0 (rx_core_clk_0),
    .rx_clk_out_0 (rx_clk_out_0),

    .gt_loopback_in_0 (gt_loopback_in_0),

    .rx_reset_0(rx_reset_0),
    .user_rx_reset_0 (user_rx_reset_0),
    .rxrecclkout_0 (rxrecclkout_0),
//// RX User Interface Signals
    .rx_mii_d_0 (rx_mii_d_0),
    .rx_mii_c_0 (rx_mii_c_0),



//// RX Control Signals
    .ctl_rx_test_pattern_0 (ctl_rx_test_pattern_0),
    .ctl_rx_test_pattern_enable_0 (ctl_rx_test_pattern_enable_0),
    .ctl_rx_data_pattern_select_0 (ctl_rx_data_pattern_select_0),
    .ctl_rx_prbs31_test_pattern_enable_0 (ctl_rx_prbs31_test_pattern_enable_0),



//// RX Stats Signals
    .stat_rx_block_lock_0 (stat_rx_block_lock_0),
    .stat_rx_framing_err_valid_0 (stat_rx_framing_err_valid_0),
    .stat_rx_framing_err_0 (stat_rx_framing_err_0),
    .stat_rx_hi_ber_0 (stat_rx_hi_ber_0),
    .stat_rx_valid_ctrl_code_0 (stat_rx_valid_ctrl_code_0),
    .stat_rx_bad_code_0 (stat_rx_bad_code_0),
    .stat_rx_bad_code_valid_0 (stat_rx_bad_code_valid_0),
    .stat_rx_error_valid_0 (stat_rx_error_valid_0),
    .stat_rx_error_0 (stat_rx_error_0),
    .stat_rx_fifo_error_0 (stat_rx_fifo_error_0),
    .stat_rx_local_fault_0 (stat_rx_local_fault_0),
   .stat_rx_status_0 (stat_rx_status_0),


    .tx_reset_0(tx_reset_0),
    .user_tx_reset_0 (user_tx_reset_0),
//// TX User Interface Signals
    .tx_mii_d_0 (tx_mii_d_0),
    .tx_mii_c_0 (tx_mii_c_0),

//// TX Control Signals
    .ctl_tx_test_pattern_0 (ctl_tx_test_pattern_0),
    .ctl_tx_test_pattern_enable_0 (ctl_tx_test_pattern_enable_0),
    .ctl_tx_test_pattern_select_0 (ctl_tx_test_pattern_select_0),
    .ctl_tx_data_pattern_select_0 (ctl_tx_data_pattern_select_0),
    .ctl_tx_test_pattern_seed_a_0 (ctl_tx_test_pattern_seed_a_0),
    .ctl_tx_test_pattern_seed_b_0 (ctl_tx_test_pattern_seed_b_0),
    .ctl_tx_prbs31_test_pattern_enable_0 (ctl_tx_prbs31_test_pattern_enable_0),


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
    .dclk (dclk)

  );
endmodule



