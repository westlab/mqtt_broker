//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Wed Dec 16 18:33:47 2020
//Host        : bamboo8 running 64-bit CentOS Linux release 7.6.1810 (Core)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (CLK100M,
    CLK156M,
    completion_status0,
    completion_status1,
    completion_status2,
    completion_status3,
    restart_tx_rx,
    sys_resetp);
  output CLK100M;
  output CLK156M;
  input [4:0]completion_status0;
  input [4:0]completion_status1;
  input [4:0]completion_status2;
  input [4:0]completion_status3;
  output restart_tx_rx;
  output sys_resetp;

  wire CLK100M;
  wire CLK156M;
  wire [4:0]completion_status0;
  wire [4:0]completion_status1;
  wire [4:0]completion_status2;
  wire [4:0]completion_status3;
  wire restart_tx_rx;
  wire sys_resetp;

  design_1 design_1_i
       (.CLK100M(CLK100M),
        .CLK156M(CLK156M),
        .completion_status0(completion_status0),
        .completion_status1(completion_status1),
        .completion_status2(completion_status2),
        .completion_status3(completion_status3),
        .restart_tx_rx(restart_tx_rx),
        .sys_resetp(sys_resetp));
endmodule
