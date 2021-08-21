// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Tue Dec  1 13:58:59 2020
// Host        : hien running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axi32regs_0_0_sim_netlist.v
// Design      : design_1_axi32regs_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu19eg-ffvc1760-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi32regs
   (S_AXI_wready,
    S_AXI_awready,
    S_AXI_arready,
    S_AXI_rdata,
    S_AXI_rvalid,
    S_AXI_bvalid,
    Wport_restart_tx_rx,
    Wport_sys_resetp,
    S_AXI_aclk,
    S_AXI_awaddr,
    S_AXI_araddr,
    S_AXI_wdata,
    S_AXI_awvalid,
    S_AXI_wvalid,
    S_AXI_aresetn,
    S_AXI_arvalid,
    Rport_completion_status3,
    Rport_completion_status2,
    Rport_completion_status1,
    Rport_completion_status0,
    S_AXI_bready,
    S_AXI_rready);
  output S_AXI_wready;
  output S_AXI_awready;
  output S_AXI_arready;
  output [31:0]S_AXI_rdata;
  output S_AXI_rvalid;
  output S_AXI_bvalid;
  output Wport_restart_tx_rx;
  output Wport_sys_resetp;
  input S_AXI_aclk;
  input [7:0]S_AXI_awaddr;
  input [7:0]S_AXI_araddr;
  input [31:0]S_AXI_wdata;
  input S_AXI_awvalid;
  input S_AXI_wvalid;
  input S_AXI_aresetn;
  input S_AXI_arvalid;
  input [4:0]Rport_completion_status3;
  input [4:0]Rport_completion_status2;
  input [4:0]Rport_completion_status1;
  input [4:0]Rport_completion_status0;
  input S_AXI_bready;
  input S_AXI_rready;

  wire [4:0]Rport_completion_status0;
  wire [4:0]Rport_completion_status1;
  wire [4:0]Rport_completion_status2;
  wire [4:0]Rport_completion_status3;
  wire S_AXI_aclk;
  wire [7:0]S_AXI_araddr;
  wire S_AXI_aresetn;
  wire S_AXI_arready;
  wire S_AXI_arready0;
  wire S_AXI_arvalid;
  wire [7:0]S_AXI_awaddr;
  wire S_AXI_awready;
  wire S_AXI_awready0;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire S_AXI_bvalid;
  wire S_AXI_bvalid_i_1_n_0;
  wire [31:0]S_AXI_rdata;
  wire \S_AXI_rdata[0]_i_2_n_0 ;
  wire \S_AXI_rdata[1]_i_2_n_0 ;
  wire \S_AXI_rdata[2]_i_2_n_0 ;
  wire \S_AXI_rdata[31]_i_2_n_0 ;
  wire \S_AXI_rdata[3]_i_2_n_0 ;
  wire \S_AXI_rdata[4]_i_2_n_0 ;
  wire \S_AXI_rdata[4]_i_3_n_0 ;
  wire \S_AXI_rdata[4]_i_4_n_0 ;
  wire S_AXI_rready;
  wire S_AXI_rvalid;
  wire S_AXI_rvalid_i_1_n_0;
  wire [31:0]S_AXI_wdata;
  wire S_AXI_wready;
  wire S_AXI_wready0;
  wire S_AXI_wvalid;
  wire Wport_restart_tx_rx;
  wire Wport_restart_tx_rx_i_1_n_0;
  wire Wport_restart_tx_rx_i_2_n_0;
  wire Wport_restart_tx_rx_i_3_n_0;
  wire Wport_restart_tx_rx_i_4_n_0;
  wire Wport_sys_resetp;
  wire Wport_sys_resetp_i_1_n_0;
  wire Wport_sys_resetp_i_2_n_0;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [7:0]axi_araddr;
  wire [4:0]axi_awaddr;
  wire \axi_awaddr_reg_n_0_[6] ;
  wire \axi_awaddr_reg_n_0_[7] ;
  wire [31:0]p_0_in;
  wire p_0_in0;
  wire [31:0]reg_scratchpad;
  wire \reg_scratchpad[31]_i_2_n_0 ;
  wire reg_scratchpad_0;
  wire rst;
  wire slv_reg_rden__0;

  LUT2 #(
    .INIT(4'h2)) 
    S_AXI_arready_i_1
       (.I0(S_AXI_arvalid),
        .I1(S_AXI_arready),
        .O(S_AXI_arready0));
  FDRE S_AXI_arready_reg
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(S_AXI_arready0),
        .Q(S_AXI_arready),
        .R(rst));
  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_awready_i_1
       (.I0(S_AXI_aresetn),
        .O(rst));
  LUT4 #(
    .INIT(16'h4000)) 
    S_AXI_awready_i_2
       (.I0(S_AXI_awready),
        .I1(S_AXI_wvalid),
        .I2(S_AXI_awvalid),
        .I3(aw_en_reg_n_0),
        .O(S_AXI_awready0));
  FDRE S_AXI_awready_reg
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(S_AXI_awready0),
        .Q(S_AXI_awready),
        .R(rst));
  LUT6 #(
    .INIT(64'h7444444444444444)) 
    S_AXI_bvalid_i_1
       (.I0(S_AXI_bready),
        .I1(S_AXI_bvalid),
        .I2(S_AXI_awready),
        .I3(S_AXI_wready),
        .I4(S_AXI_wvalid),
        .I5(S_AXI_awvalid),
        .O(S_AXI_bvalid_i_1_n_0));
  FDRE S_AXI_bvalid_reg
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(S_AXI_bvalid_i_1_n_0),
        .Q(S_AXI_bvalid),
        .R(rst));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \S_AXI_rdata[0]_i_1 
       (.I0(\S_AXI_rdata[31]_i_2_n_0 ),
        .I1(\S_AXI_rdata[0]_i_2_n_0 ),
        .I2(Rport_completion_status3[0]),
        .I3(\S_AXI_rdata[4]_i_3_n_0 ),
        .I4(Rport_completion_status2[0]),
        .I5(\S_AXI_rdata[4]_i_4_n_0 ),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'h5455045554050405)) 
    \S_AXI_rdata[0]_i_2 
       (.I0(axi_araddr[4]),
        .I1(reg_scratchpad[0]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .I4(Rport_completion_status1[0]),
        .I5(Rport_completion_status0[0]),
        .O(\S_AXI_rdata[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \S_AXI_rdata[10]_i_1 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[4]),
        .I3(\S_AXI_rdata[31]_i_2_n_0 ),
        .I4(reg_scratchpad[10]),
        .O(p_0_in[10]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \S_AXI_rdata[11]_i_1 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[4]),
        .I3(\S_AXI_rdata[31]_i_2_n_0 ),
        .I4(reg_scratchpad[11]),
        .O(p_0_in[11]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \S_AXI_rdata[12]_i_1 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[4]),
        .I3(\S_AXI_rdata[31]_i_2_n_0 ),
        .I4(reg_scratchpad[12]),
        .O(p_0_in[12]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \S_AXI_rdata[13]_i_1 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[4]),
        .I3(\S_AXI_rdata[31]_i_2_n_0 ),
        .I4(reg_scratchpad[13]),
        .O(p_0_in[13]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \S_AXI_rdata[14]_i_1 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[4]),
        .I3(\S_AXI_rdata[31]_i_2_n_0 ),
        .I4(reg_scratchpad[14]),
        .O(p_0_in[14]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \S_AXI_rdata[15]_i_1 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[4]),
        .I3(\S_AXI_rdata[31]_i_2_n_0 ),
        .I4(reg_scratchpad[15]),
        .O(p_0_in[15]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \S_AXI_rdata[16]_i_1 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[4]),
        .I3(\S_AXI_rdata[31]_i_2_n_0 ),
        .I4(reg_scratchpad[16]),
        .O(p_0_in[16]));
  LUT5 #(
    .INIT(32'h000B0000)) 
    \S_AXI_rdata[17]_i_1 
       (.I0(reg_scratchpad[17]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[4]),
        .I4(\S_AXI_rdata[31]_i_2_n_0 ),
        .O(p_0_in[17]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \S_AXI_rdata[18]_i_1 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[4]),
        .I3(\S_AXI_rdata[31]_i_2_n_0 ),
        .I4(reg_scratchpad[18]),
        .O(p_0_in[18]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \S_AXI_rdata[19]_i_1 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[4]),
        .I3(\S_AXI_rdata[31]_i_2_n_0 ),
        .I4(reg_scratchpad[19]),
        .O(p_0_in[19]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \S_AXI_rdata[1]_i_1 
       (.I0(\S_AXI_rdata[31]_i_2_n_0 ),
        .I1(\S_AXI_rdata[1]_i_2_n_0 ),
        .I2(Rport_completion_status3[1]),
        .I3(\S_AXI_rdata[4]_i_3_n_0 ),
        .I4(Rport_completion_status2[1]),
        .I5(\S_AXI_rdata[4]_i_4_n_0 ),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'h5414440450104000)) 
    \S_AXI_rdata[1]_i_2 
       (.I0(axi_araddr[4]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(Rport_completion_status1[1]),
        .I4(reg_scratchpad[1]),
        .I5(Rport_completion_status0[1]),
        .O(\S_AXI_rdata[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \S_AXI_rdata[20]_i_1 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[4]),
        .I3(\S_AXI_rdata[31]_i_2_n_0 ),
        .I4(reg_scratchpad[20]),
        .O(p_0_in[20]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \S_AXI_rdata[21]_i_1 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[4]),
        .I3(\S_AXI_rdata[31]_i_2_n_0 ),
        .I4(reg_scratchpad[21]),
        .O(p_0_in[21]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \S_AXI_rdata[22]_i_1 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[4]),
        .I3(\S_AXI_rdata[31]_i_2_n_0 ),
        .I4(reg_scratchpad[22]),
        .O(p_0_in[22]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \S_AXI_rdata[23]_i_1 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[4]),
        .I3(\S_AXI_rdata[31]_i_2_n_0 ),
        .I4(reg_scratchpad[23]),
        .O(p_0_in[23]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \S_AXI_rdata[24]_i_1 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[4]),
        .I3(\S_AXI_rdata[31]_i_2_n_0 ),
        .I4(reg_scratchpad[24]),
        .O(p_0_in[24]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \S_AXI_rdata[25]_i_1 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[4]),
        .I3(\S_AXI_rdata[31]_i_2_n_0 ),
        .I4(reg_scratchpad[25]),
        .O(p_0_in[25]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \S_AXI_rdata[26]_i_1 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[4]),
        .I3(\S_AXI_rdata[31]_i_2_n_0 ),
        .I4(reg_scratchpad[26]),
        .O(p_0_in[26]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \S_AXI_rdata[27]_i_1 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[4]),
        .I3(\S_AXI_rdata[31]_i_2_n_0 ),
        .I4(reg_scratchpad[27]),
        .O(p_0_in[27]));
  LUT5 #(
    .INIT(32'h000B0000)) 
    \S_AXI_rdata[28]_i_1 
       (.I0(reg_scratchpad[28]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[4]),
        .I4(\S_AXI_rdata[31]_i_2_n_0 ),
        .O(p_0_in[28]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \S_AXI_rdata[29]_i_1 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[4]),
        .I3(\S_AXI_rdata[31]_i_2_n_0 ),
        .I4(reg_scratchpad[29]),
        .O(p_0_in[29]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \S_AXI_rdata[2]_i_1 
       (.I0(\S_AXI_rdata[31]_i_2_n_0 ),
        .I1(\S_AXI_rdata[2]_i_2_n_0 ),
        .I2(Rport_completion_status3[2]),
        .I3(\S_AXI_rdata[4]_i_3_n_0 ),
        .I4(Rport_completion_status2[2]),
        .I5(\S_AXI_rdata[4]_i_4_n_0 ),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h5414440450104000)) 
    \S_AXI_rdata[2]_i_2 
       (.I0(axi_araddr[4]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(Rport_completion_status1[2]),
        .I4(reg_scratchpad[2]),
        .I5(Rport_completion_status0[2]),
        .O(\S_AXI_rdata[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000B0000)) 
    \S_AXI_rdata[30]_i_1 
       (.I0(reg_scratchpad[30]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[4]),
        .I4(\S_AXI_rdata[31]_i_2_n_0 ),
        .O(p_0_in[30]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \S_AXI_rdata[31]_i_1 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[4]),
        .I3(\S_AXI_rdata[31]_i_2_n_0 ),
        .I4(reg_scratchpad[31]),
        .O(p_0_in[31]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \S_AXI_rdata[31]_i_2 
       (.I0(axi_araddr[0]),
        .I1(axi_araddr[5]),
        .I2(axi_araddr[6]),
        .I3(axi_araddr[7]),
        .I4(axi_araddr[1]),
        .O(\S_AXI_rdata[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \S_AXI_rdata[3]_i_1 
       (.I0(\S_AXI_rdata[31]_i_2_n_0 ),
        .I1(\S_AXI_rdata[3]_i_2_n_0 ),
        .I2(Rport_completion_status3[3]),
        .I3(\S_AXI_rdata[4]_i_3_n_0 ),
        .I4(Rport_completion_status2[3]),
        .I5(\S_AXI_rdata[4]_i_4_n_0 ),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h5414440450104000)) 
    \S_AXI_rdata[3]_i_2 
       (.I0(axi_araddr[4]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(Rport_completion_status1[3]),
        .I4(reg_scratchpad[3]),
        .I5(Rport_completion_status0[3]),
        .O(\S_AXI_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \S_AXI_rdata[4]_i_1 
       (.I0(\S_AXI_rdata[31]_i_2_n_0 ),
        .I1(\S_AXI_rdata[4]_i_2_n_0 ),
        .I2(Rport_completion_status3[4]),
        .I3(\S_AXI_rdata[4]_i_3_n_0 ),
        .I4(Rport_completion_status2[4]),
        .I5(\S_AXI_rdata[4]_i_4_n_0 ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h5414440450104000)) 
    \S_AXI_rdata[4]_i_2 
       (.I0(axi_araddr[4]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(Rport_completion_status1[4]),
        .I4(reg_scratchpad[4]),
        .I5(Rport_completion_status0[4]),
        .O(\S_AXI_rdata[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \S_AXI_rdata[4]_i_3 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[4]),
        .I2(axi_araddr[3]),
        .O(\S_AXI_rdata[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \S_AXI_rdata[4]_i_4 
       (.I0(axi_araddr[4]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(\S_AXI_rdata[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \S_AXI_rdata[5]_i_1 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[4]),
        .I3(\S_AXI_rdata[31]_i_2_n_0 ),
        .I4(reg_scratchpad[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \S_AXI_rdata[6]_i_1 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[4]),
        .I3(\S_AXI_rdata[31]_i_2_n_0 ),
        .I4(reg_scratchpad[6]),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \S_AXI_rdata[7]_i_1 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[4]),
        .I3(\S_AXI_rdata[31]_i_2_n_0 ),
        .I4(reg_scratchpad[7]),
        .O(p_0_in[7]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \S_AXI_rdata[8]_i_1 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[4]),
        .I3(\S_AXI_rdata[31]_i_2_n_0 ),
        .I4(reg_scratchpad[8]),
        .O(p_0_in[8]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \S_AXI_rdata[9]_i_1 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[4]),
        .I3(\S_AXI_rdata[31]_i_2_n_0 ),
        .I4(reg_scratchpad[9]),
        .O(p_0_in[9]));
  FDRE \S_AXI_rdata_reg[0] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden__0),
        .D(p_0_in[0]),
        .Q(S_AXI_rdata[0]),
        .R(rst));
  FDRE \S_AXI_rdata_reg[10] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden__0),
        .D(p_0_in[10]),
        .Q(S_AXI_rdata[10]),
        .R(rst));
  FDRE \S_AXI_rdata_reg[11] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden__0),
        .D(p_0_in[11]),
        .Q(S_AXI_rdata[11]),
        .R(rst));
  FDRE \S_AXI_rdata_reg[12] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden__0),
        .D(p_0_in[12]),
        .Q(S_AXI_rdata[12]),
        .R(rst));
  FDRE \S_AXI_rdata_reg[13] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden__0),
        .D(p_0_in[13]),
        .Q(S_AXI_rdata[13]),
        .R(rst));
  FDRE \S_AXI_rdata_reg[14] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden__0),
        .D(p_0_in[14]),
        .Q(S_AXI_rdata[14]),
        .R(rst));
  FDRE \S_AXI_rdata_reg[15] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden__0),
        .D(p_0_in[15]),
        .Q(S_AXI_rdata[15]),
        .R(rst));
  FDRE \S_AXI_rdata_reg[16] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden__0),
        .D(p_0_in[16]),
        .Q(S_AXI_rdata[16]),
        .R(rst));
  FDRE \S_AXI_rdata_reg[17] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden__0),
        .D(p_0_in[17]),
        .Q(S_AXI_rdata[17]),
        .R(rst));
  FDRE \S_AXI_rdata_reg[18] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden__0),
        .D(p_0_in[18]),
        .Q(S_AXI_rdata[18]),
        .R(rst));
  FDRE \S_AXI_rdata_reg[19] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden__0),
        .D(p_0_in[19]),
        .Q(S_AXI_rdata[19]),
        .R(rst));
  FDRE \S_AXI_rdata_reg[1] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden__0),
        .D(p_0_in[1]),
        .Q(S_AXI_rdata[1]),
        .R(rst));
  FDRE \S_AXI_rdata_reg[20] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden__0),
        .D(p_0_in[20]),
        .Q(S_AXI_rdata[20]),
        .R(rst));
  FDRE \S_AXI_rdata_reg[21] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden__0),
        .D(p_0_in[21]),
        .Q(S_AXI_rdata[21]),
        .R(rst));
  FDRE \S_AXI_rdata_reg[22] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden__0),
        .D(p_0_in[22]),
        .Q(S_AXI_rdata[22]),
        .R(rst));
  FDRE \S_AXI_rdata_reg[23] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden__0),
        .D(p_0_in[23]),
        .Q(S_AXI_rdata[23]),
        .R(rst));
  FDRE \S_AXI_rdata_reg[24] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden__0),
        .D(p_0_in[24]),
        .Q(S_AXI_rdata[24]),
        .R(rst));
  FDRE \S_AXI_rdata_reg[25] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden__0),
        .D(p_0_in[25]),
        .Q(S_AXI_rdata[25]),
        .R(rst));
  FDRE \S_AXI_rdata_reg[26] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden__0),
        .D(p_0_in[26]),
        .Q(S_AXI_rdata[26]),
        .R(rst));
  FDRE \S_AXI_rdata_reg[27] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden__0),
        .D(p_0_in[27]),
        .Q(S_AXI_rdata[27]),
        .R(rst));
  FDRE \S_AXI_rdata_reg[28] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden__0),
        .D(p_0_in[28]),
        .Q(S_AXI_rdata[28]),
        .R(rst));
  FDRE \S_AXI_rdata_reg[29] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden__0),
        .D(p_0_in[29]),
        .Q(S_AXI_rdata[29]),
        .R(rst));
  FDRE \S_AXI_rdata_reg[2] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden__0),
        .D(p_0_in[2]),
        .Q(S_AXI_rdata[2]),
        .R(rst));
  FDRE \S_AXI_rdata_reg[30] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden__0),
        .D(p_0_in[30]),
        .Q(S_AXI_rdata[30]),
        .R(rst));
  FDRE \S_AXI_rdata_reg[31] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden__0),
        .D(p_0_in[31]),
        .Q(S_AXI_rdata[31]),
        .R(rst));
  FDRE \S_AXI_rdata_reg[3] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden__0),
        .D(p_0_in[3]),
        .Q(S_AXI_rdata[3]),
        .R(rst));
  FDRE \S_AXI_rdata_reg[4] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden__0),
        .D(p_0_in[4]),
        .Q(S_AXI_rdata[4]),
        .R(rst));
  FDRE \S_AXI_rdata_reg[5] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden__0),
        .D(p_0_in[5]),
        .Q(S_AXI_rdata[5]),
        .R(rst));
  FDRE \S_AXI_rdata_reg[6] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden__0),
        .D(p_0_in[6]),
        .Q(S_AXI_rdata[6]),
        .R(rst));
  FDRE \S_AXI_rdata_reg[7] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden__0),
        .D(p_0_in[7]),
        .Q(S_AXI_rdata[7]),
        .R(rst));
  FDRE \S_AXI_rdata_reg[8] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden__0),
        .D(p_0_in[8]),
        .Q(S_AXI_rdata[8]),
        .R(rst));
  FDRE \S_AXI_rdata_reg[9] 
       (.C(S_AXI_aclk),
        .CE(slv_reg_rden__0),
        .D(p_0_in[9]),
        .Q(S_AXI_rdata[9]),
        .R(rst));
  LUT4 #(
    .INIT(16'h08F8)) 
    S_AXI_rvalid_i_1
       (.I0(S_AXI_arready),
        .I1(S_AXI_arvalid),
        .I2(S_AXI_rvalid),
        .I3(S_AXI_rready),
        .O(S_AXI_rvalid_i_1_n_0));
  FDRE S_AXI_rvalid_reg
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(S_AXI_rvalid_i_1_n_0),
        .Q(S_AXI_rvalid),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    S_AXI_wready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(S_AXI_awvalid),
        .I2(S_AXI_wvalid),
        .I3(S_AXI_wready),
        .O(S_AXI_wready0));
  FDRE S_AXI_wready_reg
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(S_AXI_wready0),
        .Q(S_AXI_wready),
        .R(rst));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    Wport_restart_tx_rx_i_1
       (.I0(S_AXI_wdata[0]),
        .I1(Wport_restart_tx_rx_i_2_n_0),
        .I2(Wport_restart_tx_rx_i_3_n_0),
        .I3(Wport_restart_tx_rx_i_4_n_0),
        .I4(Wport_restart_tx_rx),
        .O(Wport_restart_tx_rx_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    Wport_restart_tx_rx_i_2
       (.I0(S_AXI_awready),
        .I1(S_AXI_wready),
        .I2(S_AXI_wvalid),
        .I3(S_AXI_awvalid),
        .O(Wport_restart_tx_rx_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h01)) 
    Wport_restart_tx_rx_i_3
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[1]),
        .I2(axi_awaddr[0]),
        .O(Wport_restart_tx_rx_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    Wport_restart_tx_rx_i_4
       (.I0(p_0_in0),
        .I1(\axi_awaddr_reg_n_0_[6] ),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[4]),
        .I4(\axi_awaddr_reg_n_0_[7] ),
        .I5(S_AXI_aresetn),
        .O(Wport_restart_tx_rx_i_4_n_0));
  FDRE Wport_restart_tx_rx_reg
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(Wport_restart_tx_rx_i_1_n_0),
        .Q(Wport_restart_tx_rx),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    Wport_sys_resetp_i_1
       (.I0(S_AXI_wdata[0]),
        .I1(Wport_restart_tx_rx_i_2_n_0),
        .I2(Wport_sys_resetp_i_2_n_0),
        .I3(Wport_restart_tx_rx_i_4_n_0),
        .I4(Wport_sys_resetp),
        .O(Wport_sys_resetp_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h04)) 
    Wport_sys_resetp_i_2
       (.I0(axi_awaddr[1]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[0]),
        .O(Wport_sys_resetp_i_2_n_0));
  FDRE Wport_sys_resetp_reg
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(Wport_sys_resetp_i_1_n_0),
        .Q(Wport_sys_resetp),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0FFFFFF88888888)) 
    aw_en_i_1
       (.I0(S_AXI_bready),
        .I1(S_AXI_bvalid),
        .I2(S_AXI_awready),
        .I3(S_AXI_wvalid),
        .I4(S_AXI_awvalid),
        .I5(aw_en_reg_n_0),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(S_AXI_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(rst));
  FDRE \axi_araddr_reg[0] 
       (.C(S_AXI_aclk),
        .CE(S_AXI_arready0),
        .D(S_AXI_araddr[0]),
        .Q(axi_araddr[0]),
        .R(rst));
  FDRE \axi_araddr_reg[1] 
       (.C(S_AXI_aclk),
        .CE(S_AXI_arready0),
        .D(S_AXI_araddr[1]),
        .Q(axi_araddr[1]),
        .R(rst));
  FDRE \axi_araddr_reg[2] 
       (.C(S_AXI_aclk),
        .CE(S_AXI_arready0),
        .D(S_AXI_araddr[2]),
        .Q(axi_araddr[2]),
        .R(rst));
  FDRE \axi_araddr_reg[3] 
       (.C(S_AXI_aclk),
        .CE(S_AXI_arready0),
        .D(S_AXI_araddr[3]),
        .Q(axi_araddr[3]),
        .R(rst));
  FDRE \axi_araddr_reg[4] 
       (.C(S_AXI_aclk),
        .CE(S_AXI_arready0),
        .D(S_AXI_araddr[4]),
        .Q(axi_araddr[4]),
        .R(rst));
  FDRE \axi_araddr_reg[5] 
       (.C(S_AXI_aclk),
        .CE(S_AXI_arready0),
        .D(S_AXI_araddr[5]),
        .Q(axi_araddr[5]),
        .R(rst));
  FDRE \axi_araddr_reg[6] 
       (.C(S_AXI_aclk),
        .CE(S_AXI_arready0),
        .D(S_AXI_araddr[6]),
        .Q(axi_araddr[6]),
        .R(rst));
  FDRE \axi_araddr_reg[7] 
       (.C(S_AXI_aclk),
        .CE(S_AXI_arready0),
        .D(S_AXI_araddr[7]),
        .Q(axi_araddr[7]),
        .R(rst));
  FDRE \axi_awaddr_reg[0] 
       (.C(S_AXI_aclk),
        .CE(S_AXI_awready0),
        .D(S_AXI_awaddr[0]),
        .Q(axi_awaddr[0]),
        .R(rst));
  FDRE \axi_awaddr_reg[1] 
       (.C(S_AXI_aclk),
        .CE(S_AXI_awready0),
        .D(S_AXI_awaddr[1]),
        .Q(axi_awaddr[1]),
        .R(rst));
  FDRE \axi_awaddr_reg[2] 
       (.C(S_AXI_aclk),
        .CE(S_AXI_awready0),
        .D(S_AXI_awaddr[2]),
        .Q(axi_awaddr[2]),
        .R(rst));
  FDRE \axi_awaddr_reg[3] 
       (.C(S_AXI_aclk),
        .CE(S_AXI_awready0),
        .D(S_AXI_awaddr[3]),
        .Q(axi_awaddr[3]),
        .R(rst));
  FDRE \axi_awaddr_reg[4] 
       (.C(S_AXI_aclk),
        .CE(S_AXI_awready0),
        .D(S_AXI_awaddr[4]),
        .Q(axi_awaddr[4]),
        .R(rst));
  FDRE \axi_awaddr_reg[5] 
       (.C(S_AXI_aclk),
        .CE(S_AXI_awready0),
        .D(S_AXI_awaddr[5]),
        .Q(p_0_in0),
        .R(rst));
  FDRE \axi_awaddr_reg[6] 
       (.C(S_AXI_aclk),
        .CE(S_AXI_awready0),
        .D(S_AXI_awaddr[6]),
        .Q(\axi_awaddr_reg_n_0_[6] ),
        .R(rst));
  FDRE \axi_awaddr_reg[7] 
       (.C(S_AXI_aclk),
        .CE(S_AXI_awready0),
        .D(S_AXI_awaddr[7]),
        .Q(\axi_awaddr_reg_n_0_[7] ),
        .R(rst));
  LUT4 #(
    .INIT(16'h0200)) 
    \reg_scratchpad[31]_i_1 
       (.I0(Wport_restart_tx_rx_i_2_n_0),
        .I1(axi_awaddr[0]),
        .I2(axi_awaddr[1]),
        .I3(\reg_scratchpad[31]_i_2_n_0 ),
        .O(reg_scratchpad_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \reg_scratchpad[31]_i_2 
       (.I0(axi_awaddr[4]),
        .I1(p_0_in0),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .I4(\axi_awaddr_reg_n_0_[7] ),
        .I5(\axi_awaddr_reg_n_0_[6] ),
        .O(\reg_scratchpad[31]_i_2_n_0 ));
  FDRE \reg_scratchpad_reg[0] 
       (.C(S_AXI_aclk),
        .CE(reg_scratchpad_0),
        .D(S_AXI_wdata[0]),
        .Q(reg_scratchpad[0]),
        .R(rst));
  FDRE \reg_scratchpad_reg[10] 
       (.C(S_AXI_aclk),
        .CE(reg_scratchpad_0),
        .D(S_AXI_wdata[10]),
        .Q(reg_scratchpad[10]),
        .R(rst));
  FDRE \reg_scratchpad_reg[11] 
       (.C(S_AXI_aclk),
        .CE(reg_scratchpad_0),
        .D(S_AXI_wdata[11]),
        .Q(reg_scratchpad[11]),
        .R(rst));
  FDRE \reg_scratchpad_reg[12] 
       (.C(S_AXI_aclk),
        .CE(reg_scratchpad_0),
        .D(S_AXI_wdata[12]),
        .Q(reg_scratchpad[12]),
        .R(rst));
  FDRE \reg_scratchpad_reg[13] 
       (.C(S_AXI_aclk),
        .CE(reg_scratchpad_0),
        .D(S_AXI_wdata[13]),
        .Q(reg_scratchpad[13]),
        .R(rst));
  FDRE \reg_scratchpad_reg[14] 
       (.C(S_AXI_aclk),
        .CE(reg_scratchpad_0),
        .D(S_AXI_wdata[14]),
        .Q(reg_scratchpad[14]),
        .R(rst));
  FDRE \reg_scratchpad_reg[15] 
       (.C(S_AXI_aclk),
        .CE(reg_scratchpad_0),
        .D(S_AXI_wdata[15]),
        .Q(reg_scratchpad[15]),
        .R(rst));
  FDRE \reg_scratchpad_reg[16] 
       (.C(S_AXI_aclk),
        .CE(reg_scratchpad_0),
        .D(S_AXI_wdata[16]),
        .Q(reg_scratchpad[16]),
        .R(rst));
  FDRE \reg_scratchpad_reg[17] 
       (.C(S_AXI_aclk),
        .CE(reg_scratchpad_0),
        .D(S_AXI_wdata[17]),
        .Q(reg_scratchpad[17]),
        .R(rst));
  FDRE \reg_scratchpad_reg[18] 
       (.C(S_AXI_aclk),
        .CE(reg_scratchpad_0),
        .D(S_AXI_wdata[18]),
        .Q(reg_scratchpad[18]),
        .R(rst));
  FDRE \reg_scratchpad_reg[19] 
       (.C(S_AXI_aclk),
        .CE(reg_scratchpad_0),
        .D(S_AXI_wdata[19]),
        .Q(reg_scratchpad[19]),
        .R(rst));
  FDRE \reg_scratchpad_reg[1] 
       (.C(S_AXI_aclk),
        .CE(reg_scratchpad_0),
        .D(S_AXI_wdata[1]),
        .Q(reg_scratchpad[1]),
        .R(rst));
  FDRE \reg_scratchpad_reg[20] 
       (.C(S_AXI_aclk),
        .CE(reg_scratchpad_0),
        .D(S_AXI_wdata[20]),
        .Q(reg_scratchpad[20]),
        .R(rst));
  FDRE \reg_scratchpad_reg[21] 
       (.C(S_AXI_aclk),
        .CE(reg_scratchpad_0),
        .D(S_AXI_wdata[21]),
        .Q(reg_scratchpad[21]),
        .R(rst));
  FDRE \reg_scratchpad_reg[22] 
       (.C(S_AXI_aclk),
        .CE(reg_scratchpad_0),
        .D(S_AXI_wdata[22]),
        .Q(reg_scratchpad[22]),
        .R(rst));
  FDRE \reg_scratchpad_reg[23] 
       (.C(S_AXI_aclk),
        .CE(reg_scratchpad_0),
        .D(S_AXI_wdata[23]),
        .Q(reg_scratchpad[23]),
        .R(rst));
  FDRE \reg_scratchpad_reg[24] 
       (.C(S_AXI_aclk),
        .CE(reg_scratchpad_0),
        .D(S_AXI_wdata[24]),
        .Q(reg_scratchpad[24]),
        .R(rst));
  FDRE \reg_scratchpad_reg[25] 
       (.C(S_AXI_aclk),
        .CE(reg_scratchpad_0),
        .D(S_AXI_wdata[25]),
        .Q(reg_scratchpad[25]),
        .R(rst));
  FDRE \reg_scratchpad_reg[26] 
       (.C(S_AXI_aclk),
        .CE(reg_scratchpad_0),
        .D(S_AXI_wdata[26]),
        .Q(reg_scratchpad[26]),
        .R(rst));
  FDRE \reg_scratchpad_reg[27] 
       (.C(S_AXI_aclk),
        .CE(reg_scratchpad_0),
        .D(S_AXI_wdata[27]),
        .Q(reg_scratchpad[27]),
        .R(rst));
  FDRE \reg_scratchpad_reg[28] 
       (.C(S_AXI_aclk),
        .CE(reg_scratchpad_0),
        .D(S_AXI_wdata[28]),
        .Q(reg_scratchpad[28]),
        .R(rst));
  FDRE \reg_scratchpad_reg[29] 
       (.C(S_AXI_aclk),
        .CE(reg_scratchpad_0),
        .D(S_AXI_wdata[29]),
        .Q(reg_scratchpad[29]),
        .R(rst));
  FDRE \reg_scratchpad_reg[2] 
       (.C(S_AXI_aclk),
        .CE(reg_scratchpad_0),
        .D(S_AXI_wdata[2]),
        .Q(reg_scratchpad[2]),
        .R(rst));
  FDRE \reg_scratchpad_reg[30] 
       (.C(S_AXI_aclk),
        .CE(reg_scratchpad_0),
        .D(S_AXI_wdata[30]),
        .Q(reg_scratchpad[30]),
        .R(rst));
  FDRE \reg_scratchpad_reg[31] 
       (.C(S_AXI_aclk),
        .CE(reg_scratchpad_0),
        .D(S_AXI_wdata[31]),
        .Q(reg_scratchpad[31]),
        .R(rst));
  FDRE \reg_scratchpad_reg[3] 
       (.C(S_AXI_aclk),
        .CE(reg_scratchpad_0),
        .D(S_AXI_wdata[3]),
        .Q(reg_scratchpad[3]),
        .R(rst));
  FDRE \reg_scratchpad_reg[4] 
       (.C(S_AXI_aclk),
        .CE(reg_scratchpad_0),
        .D(S_AXI_wdata[4]),
        .Q(reg_scratchpad[4]),
        .R(rst));
  FDRE \reg_scratchpad_reg[5] 
       (.C(S_AXI_aclk),
        .CE(reg_scratchpad_0),
        .D(S_AXI_wdata[5]),
        .Q(reg_scratchpad[5]),
        .R(rst));
  FDRE \reg_scratchpad_reg[6] 
       (.C(S_AXI_aclk),
        .CE(reg_scratchpad_0),
        .D(S_AXI_wdata[6]),
        .Q(reg_scratchpad[6]),
        .R(rst));
  FDRE \reg_scratchpad_reg[7] 
       (.C(S_AXI_aclk),
        .CE(reg_scratchpad_0),
        .D(S_AXI_wdata[7]),
        .Q(reg_scratchpad[7]),
        .R(rst));
  FDRE \reg_scratchpad_reg[8] 
       (.C(S_AXI_aclk),
        .CE(reg_scratchpad_0),
        .D(S_AXI_wdata[8]),
        .Q(reg_scratchpad[8]),
        .R(rst));
  FDRE \reg_scratchpad_reg[9] 
       (.C(S_AXI_aclk),
        .CE(reg_scratchpad_0),
        .D(S_AXI_wdata[9]),
        .Q(reg_scratchpad[9]),
        .R(rst));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(S_AXI_arvalid),
        .I1(S_AXI_rvalid),
        .I2(S_AXI_arready),
        .O(slv_reg_rden__0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_axi32regs_0_0,axi32regs,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axi32regs,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (S_AXI_aclk,
    S_AXI_aresetn,
    S_AXI_awvalid,
    S_AXI_awready,
    S_AXI_wvalid,
    S_AXI_wready,
    S_AXI_bvalid,
    S_AXI_awprot,
    S_AXI_bresp,
    S_AXI_wstrb,
    S_AXI_awaddr,
    S_AXI_wdata,
    S_AXI_bready,
    S_AXI_arvalid,
    S_AXI_arready,
    S_AXI_rvalid,
    S_AXI_rready,
    S_AXI_arprot,
    S_AXI_rresp,
    S_AXI_araddr,
    S_AXI_rdata,
    Rport_completion_status0,
    Rport_completion_status1,
    Rport_completion_status2,
    Rport_completion_status3,
    Wport_restart_tx_rx,
    Wport_sys_resetp,
    Testsig_o);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_aclk, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_aresetn, FREQ_HZ 99999000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input S_AXI_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXI_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]S_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [7:0]S_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [7:0]S_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999000, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [31:0]S_AXI_rdata;
  input [4:0]Rport_completion_status0;
  input [4:0]Rport_completion_status1;
  input [4:0]Rport_completion_status2;
  input [4:0]Rport_completion_status3;
  output Wport_restart_tx_rx;
  output Wport_sys_resetp;
  output [15:0]Testsig_o;

  wire \<const0> ;
  wire [4:0]Rport_completion_status0;
  wire [4:0]Rport_completion_status1;
  wire [4:0]Rport_completion_status2;
  wire [4:0]Rport_completion_status3;
  wire S_AXI_aclk;
  wire [7:0]S_AXI_araddr;
  wire S_AXI_aresetn;
  wire S_AXI_arready;
  wire S_AXI_arvalid;
  wire [7:0]S_AXI_awaddr;
  wire S_AXI_awready;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire S_AXI_rready;
  wire S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire S_AXI_wready;
  wire S_AXI_wvalid;
  wire Wport_restart_tx_rx;
  wire Wport_sys_resetp;

  assign S_AXI_bresp[1] = \<const0> ;
  assign S_AXI_bresp[0] = \<const0> ;
  assign S_AXI_rresp[1] = \<const0> ;
  assign S_AXI_rresp[0] = \<const0> ;
  assign Testsig_o[15] = \<const0> ;
  assign Testsig_o[14] = \<const0> ;
  assign Testsig_o[13] = \<const0> ;
  assign Testsig_o[12] = \<const0> ;
  assign Testsig_o[11] = \<const0> ;
  assign Testsig_o[10] = \<const0> ;
  assign Testsig_o[9] = \<const0> ;
  assign Testsig_o[8] = \<const0> ;
  assign Testsig_o[7] = \<const0> ;
  assign Testsig_o[6] = \<const0> ;
  assign Testsig_o[5] = \<const0> ;
  assign Testsig_o[4] = \<const0> ;
  assign Testsig_o[3] = \<const0> ;
  assign Testsig_o[2] = \<const0> ;
  assign Testsig_o[1] = \<const0> ;
  assign Testsig_o[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi32regs inst
       (.Rport_completion_status0(Rport_completion_status0),
        .Rport_completion_status1(Rport_completion_status1),
        .Rport_completion_status2(Rport_completion_status2),
        .Rport_completion_status3(Rport_completion_status3),
        .S_AXI_aclk(S_AXI_aclk),
        .S_AXI_araddr(S_AXI_araddr),
        .S_AXI_aresetn(S_AXI_aresetn),
        .S_AXI_arready(S_AXI_arready),
        .S_AXI_arvalid(S_AXI_arvalid),
        .S_AXI_awaddr(S_AXI_awaddr),
        .S_AXI_awready(S_AXI_awready),
        .S_AXI_awvalid(S_AXI_awvalid),
        .S_AXI_bready(S_AXI_bready),
        .S_AXI_bvalid(S_AXI_bvalid),
        .S_AXI_rdata(S_AXI_rdata),
        .S_AXI_rready(S_AXI_rready),
        .S_AXI_rvalid(S_AXI_rvalid),
        .S_AXI_wdata(S_AXI_wdata),
        .S_AXI_wready(S_AXI_wready),
        .S_AXI_wvalid(S_AXI_wvalid),
        .Wport_restart_tx_rx(Wport_restart_tx_rx),
        .Wport_sys_resetp(Wport_sys_resetp));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
