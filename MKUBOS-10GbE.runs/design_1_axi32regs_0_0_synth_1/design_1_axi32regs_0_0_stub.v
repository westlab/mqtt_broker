// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Tue Dec  1 13:58:59 2020
// Host        : hien running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axi32regs_0_0_stub.v
// Design      : design_1_axi32regs_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu19eg-ffvc1760-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi32regs,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(S_AXI_aclk, S_AXI_aresetn, S_AXI_awvalid, 
  S_AXI_awready, S_AXI_wvalid, S_AXI_wready, S_AXI_bvalid, S_AXI_awprot, S_AXI_bresp, 
  S_AXI_wstrb, S_AXI_awaddr, S_AXI_wdata, S_AXI_bready, S_AXI_arvalid, S_AXI_arready, 
  S_AXI_rvalid, S_AXI_rready, S_AXI_arprot, S_AXI_rresp, S_AXI_araddr, S_AXI_rdata, 
  Rport_completion_status0, Rport_completion_status1, Rport_completion_status2, 
  Rport_completion_status3, Wport_restart_tx_rx, Wport_sys_resetp, Testsig_o)
/* synthesis syn_black_box black_box_pad_pin="S_AXI_aclk,S_AXI_aresetn,S_AXI_awvalid,S_AXI_awready,S_AXI_wvalid,S_AXI_wready,S_AXI_bvalid,S_AXI_awprot[2:0],S_AXI_bresp[1:0],S_AXI_wstrb[3:0],S_AXI_awaddr[7:0],S_AXI_wdata[31:0],S_AXI_bready,S_AXI_arvalid,S_AXI_arready,S_AXI_rvalid,S_AXI_rready,S_AXI_arprot[2:0],S_AXI_rresp[1:0],S_AXI_araddr[7:0],S_AXI_rdata[31:0],Rport_completion_status0[4:0],Rport_completion_status1[4:0],Rport_completion_status2[4:0],Rport_completion_status3[4:0],Wport_restart_tx_rx,Wport_sys_resetp,Testsig_o[15:0]" */;
  input S_AXI_aclk;
  input S_AXI_aresetn;
  input S_AXI_awvalid;
  output S_AXI_awready;
  input S_AXI_wvalid;
  output S_AXI_wready;
  output S_AXI_bvalid;
  input [2:0]S_AXI_awprot;
  output [1:0]S_AXI_bresp;
  input [3:0]S_AXI_wstrb;
  input [7:0]S_AXI_awaddr;
  input [31:0]S_AXI_wdata;
  input S_AXI_bready;
  input S_AXI_arvalid;
  output S_AXI_arready;
  output S_AXI_rvalid;
  input S_AXI_rready;
  input [2:0]S_AXI_arprot;
  output [1:0]S_AXI_rresp;
  input [7:0]S_AXI_araddr;
  output [31:0]S_AXI_rdata;
  input [4:0]Rport_completion_status0;
  input [4:0]Rport_completion_status1;
  input [4:0]Rport_completion_status2;
  input [4:0]Rport_completion_status3;
  output Wport_restart_tx_rx;
  output Wport_sys_resetp;
  output [15:0]Testsig_o;
endmodule
