// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Thu Dec 17 03:45:05 2020
// Host        : bamboo8 running 64-bit CentOS Linux release 7.6.1810 (Core)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ u_ila_0_stub.v
// Design      : u_ila_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu19eg-ffvc1760-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9, probe10, probe11, probe12, probe13, probe14, probe15, probe16)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[127:0],probe1[127:0],probe2[127:0],probe3[47:0],probe4[127:0],probe5[31:0],probe6[15:0],probe7[15:0],probe8[15:0],probe9[47:0],probe10[143:0],probe11[31:0],probe12[31:0],probe13[0:0],probe14[0:0],probe15[0:0],probe16[0:0]" */;
  input clk;
  input [127:0]probe0;
  input [127:0]probe1;
  input [127:0]probe2;
  input [47:0]probe3;
  input [127:0]probe4;
  input [31:0]probe5;
  input [15:0]probe6;
  input [15:0]probe7;
  input [15:0]probe8;
  input [47:0]probe9;
  input [143:0]probe10;
  input [31:0]probe11;
  input [31:0]probe12;
  input [0:0]probe13;
  input [0:0]probe14;
  input [0:0]probe15;
  input [0:0]probe16;
endmodule
