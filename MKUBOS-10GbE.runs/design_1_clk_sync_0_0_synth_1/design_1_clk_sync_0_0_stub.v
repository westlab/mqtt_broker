// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Tue Dec  1 08:47:59 2020
// Host        : hien running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_clk_sync_0_0_stub.v
// Design      : design_1_clk_sync_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu19eg-ffvc1760-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "clk_sync,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(CLK, completion_status0, completion_status1, 
  completion_status2, completion_status3, Rport_completion_status0, 
  Rport_completion_status1, Rport_completion_status2, Rport_completion_status3)
/* synthesis syn_black_box black_box_pad_pin="CLK,completion_status0[4:0],completion_status1[4:0],completion_status2[4:0],completion_status3[4:0],Rport_completion_status0[4:0],Rport_completion_status1[4:0],Rport_completion_status2[4:0],Rport_completion_status3[4:0]" */;
  input CLK;
  input [4:0]completion_status0;
  input [4:0]completion_status1;
  input [4:0]completion_status2;
  input [4:0]completion_status3;
  output [4:0]Rport_completion_status0;
  output [4:0]Rport_completion_status1;
  output [4:0]Rport_completion_status2;
  output [4:0]Rport_completion_status3;
endmodule
