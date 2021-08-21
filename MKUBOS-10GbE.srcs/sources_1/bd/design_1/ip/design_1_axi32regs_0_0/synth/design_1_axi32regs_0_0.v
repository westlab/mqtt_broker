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


// IP VLNV: xilinx.com:module_ref:axi32regs:1.0
// IP Revision: 1

(* X_CORE_INFO = "axi32regs,Vivado 2019.1" *)
(* CHECK_LICENSE_TYPE = "design_1_axi32regs_0_0,axi32regs,{}" *)
(* CORE_GENERATION_INFO = "design_1_axi32regs_0_0,axi32regs,{x_ipProduct=Vivado 2019.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=axi32regs,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,AXI_ADDR_WIDTH=8}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_axi32regs_0_0 (
  S_AXI_aclk,
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
  Testsig_o
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_aclk, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_aresetn, FREQ_HZ 99999000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_aclk CLK" *)
input wire S_AXI_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_aresetn RST" *)
input wire S_AXI_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *)
input wire S_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *)
output wire S_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *)
input wire S_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *)
output wire S_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *)
output wire S_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *)
input wire [2 : 0] S_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *)
output wire [1 : 0] S_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *)
input wire [3 : 0] S_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *)
input wire [7 : 0] S_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *)
input wire [31 : 0] S_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *)
input wire S_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *)
input wire S_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *)
output wire S_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *)
output wire S_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *)
input wire S_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *)
input wire [2 : 0] S_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *)
output wire [1 : 0] S_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *)
input wire [7 : 0] S_AXI_araddr;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999000, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_T\
HREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *)
output wire [31 : 0] S_AXI_rdata;
input wire [4 : 0] Rport_completion_status0;
input wire [4 : 0] Rport_completion_status1;
input wire [4 : 0] Rport_completion_status2;
input wire [4 : 0] Rport_completion_status3;
output wire Wport_restart_tx_rx;
output wire Wport_sys_resetp;
output wire [15 : 0] Testsig_o;

  axi32regs #(
    .AXI_ADDR_WIDTH(8)
  ) inst (
    .S_AXI_aclk(S_AXI_aclk),
    .S_AXI_aresetn(S_AXI_aresetn),
    .S_AXI_awvalid(S_AXI_awvalid),
    .S_AXI_awready(S_AXI_awready),
    .S_AXI_wvalid(S_AXI_wvalid),
    .S_AXI_wready(S_AXI_wready),
    .S_AXI_bvalid(S_AXI_bvalid),
    .S_AXI_awprot(S_AXI_awprot),
    .S_AXI_bresp(S_AXI_bresp),
    .S_AXI_wstrb(S_AXI_wstrb),
    .S_AXI_awaddr(S_AXI_awaddr),
    .S_AXI_wdata(S_AXI_wdata),
    .S_AXI_bready(S_AXI_bready),
    .S_AXI_arvalid(S_AXI_arvalid),
    .S_AXI_arready(S_AXI_arready),
    .S_AXI_rvalid(S_AXI_rvalid),
    .S_AXI_rready(S_AXI_rready),
    .S_AXI_arprot(S_AXI_arprot),
    .S_AXI_rresp(S_AXI_rresp),
    .S_AXI_araddr(S_AXI_araddr),
    .S_AXI_rdata(S_AXI_rdata),
    .Rport_completion_status0(Rport_completion_status0),
    .Rport_completion_status1(Rport_completion_status1),
    .Rport_completion_status2(Rport_completion_status2),
    .Rport_completion_status3(Rport_completion_status3),
    .Wport_restart_tx_rx(Wport_restart_tx_rx),
    .Wport_sys_resetp(Wport_sys_resetp),
    .Testsig_o(Testsig_o)
  );
endmodule
