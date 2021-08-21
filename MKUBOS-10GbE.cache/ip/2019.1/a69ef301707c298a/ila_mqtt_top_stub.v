// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Sat Jun 12 15:54:13 2021
// Host        : koutarou-ws running 64-bit Ubuntu 16.04.7 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ila_mqtt_top_stub.v
// Design      : ila_mqtt_top
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu19eg-ffvc1760-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9, probe10, probe11)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[1023:0],probe1[0:0],probe2[0:0],probe3[1023:0],probe4[0:0],probe5[0:0],probe6[1023:0],probe7[0:0],probe8[0:0],probe9[1023:0],probe10[0:0],probe11[0:0]" */;
  input clk;
  input [1023:0]probe0;
  input [0:0]probe1;
  input [0:0]probe2;
  input [1023:0]probe3;
  input [0:0]probe4;
  input [0:0]probe5;
  input [1023:0]probe6;
  input [0:0]probe7;
  input [0:0]probe8;
  input [1023:0]probe9;
  input [0:0]probe10;
  input [0:0]probe11;
endmodule
