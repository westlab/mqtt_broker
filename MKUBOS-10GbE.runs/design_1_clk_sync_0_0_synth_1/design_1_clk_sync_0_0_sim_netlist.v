// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Tue Dec  1 08:48:00 2020
// Host        : hien running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_clk_sync_0_0_sim_netlist.v
// Design      : design_1_clk_sync_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu19eg-ffvc1760-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_sync
   (Rport_completion_status0,
    Rport_completion_status1,
    Rport_completion_status2,
    Rport_completion_status3,
    completion_status0,
    CLK,
    completion_status1,
    completion_status2,
    completion_status3);
  output [4:0]Rport_completion_status0;
  output [4:0]Rport_completion_status1;
  output [4:0]Rport_completion_status2;
  output [4:0]Rport_completion_status3;
  input [4:0]completion_status0;
  input CLK;
  input [4:0]completion_status1;
  input [4:0]completion_status2;
  input [4:0]completion_status3;

  wire CLK;
  wire [4:0]Rport_completion_status0;
  wire [4:0]Rport_completion_status1;
  wire [4:0]Rport_completion_status2;
  wire [4:0]Rport_completion_status3;
  wire [4:0]completion_status0;
  wire [4:0]completion_status01;
  wire [4:0]completion_status1;
  wire [4:0]completion_status11;
  wire [4:0]completion_status2;
  wire [4:0]completion_status21;
  wire [4:0]completion_status3;
  wire [4:0]completion_status31;

  FDRE \completion_status01_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status0[0]),
        .Q(completion_status01[0]),
        .R(1'b0));
  FDRE \completion_status01_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status0[1]),
        .Q(completion_status01[1]),
        .R(1'b0));
  FDRE \completion_status01_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status0[2]),
        .Q(completion_status01[2]),
        .R(1'b0));
  FDRE \completion_status01_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status0[3]),
        .Q(completion_status01[3]),
        .R(1'b0));
  FDRE \completion_status01_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status0[4]),
        .Q(completion_status01[4]),
        .R(1'b0));
  FDRE \completion_status02_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status01[0]),
        .Q(Rport_completion_status0[0]),
        .R(1'b0));
  FDRE \completion_status02_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status01[1]),
        .Q(Rport_completion_status0[1]),
        .R(1'b0));
  FDRE \completion_status02_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status01[2]),
        .Q(Rport_completion_status0[2]),
        .R(1'b0));
  FDRE \completion_status02_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status01[3]),
        .Q(Rport_completion_status0[3]),
        .R(1'b0));
  FDRE \completion_status02_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status01[4]),
        .Q(Rport_completion_status0[4]),
        .R(1'b0));
  FDRE \completion_status11_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status1[0]),
        .Q(completion_status11[0]),
        .R(1'b0));
  FDRE \completion_status11_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status1[1]),
        .Q(completion_status11[1]),
        .R(1'b0));
  FDRE \completion_status11_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status1[2]),
        .Q(completion_status11[2]),
        .R(1'b0));
  FDRE \completion_status11_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status1[3]),
        .Q(completion_status11[3]),
        .R(1'b0));
  FDRE \completion_status11_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status1[4]),
        .Q(completion_status11[4]),
        .R(1'b0));
  FDRE \completion_status12_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status11[0]),
        .Q(Rport_completion_status1[0]),
        .R(1'b0));
  FDRE \completion_status12_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status11[1]),
        .Q(Rport_completion_status1[1]),
        .R(1'b0));
  FDRE \completion_status12_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status11[2]),
        .Q(Rport_completion_status1[2]),
        .R(1'b0));
  FDRE \completion_status12_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status11[3]),
        .Q(Rport_completion_status1[3]),
        .R(1'b0));
  FDRE \completion_status12_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status11[4]),
        .Q(Rport_completion_status1[4]),
        .R(1'b0));
  FDRE \completion_status21_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status2[0]),
        .Q(completion_status21[0]),
        .R(1'b0));
  FDRE \completion_status21_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status2[1]),
        .Q(completion_status21[1]),
        .R(1'b0));
  FDRE \completion_status21_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status2[2]),
        .Q(completion_status21[2]),
        .R(1'b0));
  FDRE \completion_status21_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status2[3]),
        .Q(completion_status21[3]),
        .R(1'b0));
  FDRE \completion_status21_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status2[4]),
        .Q(completion_status21[4]),
        .R(1'b0));
  FDRE \completion_status22_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status21[0]),
        .Q(Rport_completion_status2[0]),
        .R(1'b0));
  FDRE \completion_status22_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status21[1]),
        .Q(Rport_completion_status2[1]),
        .R(1'b0));
  FDRE \completion_status22_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status21[2]),
        .Q(Rport_completion_status2[2]),
        .R(1'b0));
  FDRE \completion_status22_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status21[3]),
        .Q(Rport_completion_status2[3]),
        .R(1'b0));
  FDRE \completion_status22_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status21[4]),
        .Q(Rport_completion_status2[4]),
        .R(1'b0));
  FDRE \completion_status31_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status3[0]),
        .Q(completion_status31[0]),
        .R(1'b0));
  FDRE \completion_status31_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status3[1]),
        .Q(completion_status31[1]),
        .R(1'b0));
  FDRE \completion_status31_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status3[2]),
        .Q(completion_status31[2]),
        .R(1'b0));
  FDRE \completion_status31_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status3[3]),
        .Q(completion_status31[3]),
        .R(1'b0));
  FDRE \completion_status31_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status3[4]),
        .Q(completion_status31[4]),
        .R(1'b0));
  FDRE \completion_status32_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status31[0]),
        .Q(Rport_completion_status3[0]),
        .R(1'b0));
  FDRE \completion_status32_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status31[1]),
        .Q(Rport_completion_status3[1]),
        .R(1'b0));
  FDRE \completion_status32_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status31[2]),
        .Q(Rport_completion_status3[2]),
        .R(1'b0));
  FDRE \completion_status32_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status31[3]),
        .Q(Rport_completion_status3[3]),
        .R(1'b0));
  FDRE \completion_status32_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(completion_status31[4]),
        .Q(Rport_completion_status3[4]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_clk_sync_0_0,clk_sync,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "clk_sync,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    completion_status0,
    completion_status1,
    completion_status2,
    completion_status3,
    Rport_completion_status0,
    Rport_completion_status1,
    Rport_completion_status2,
    Rport_completion_status3);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 99999000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input CLK;
  input [4:0]completion_status0;
  input [4:0]completion_status1;
  input [4:0]completion_status2;
  input [4:0]completion_status3;
  output [4:0]Rport_completion_status0;
  output [4:0]Rport_completion_status1;
  output [4:0]Rport_completion_status2;
  output [4:0]Rport_completion_status3;

  wire CLK;
  wire [4:0]Rport_completion_status0;
  wire [4:0]Rport_completion_status1;
  wire [4:0]Rport_completion_status2;
  wire [4:0]Rport_completion_status3;
  wire [4:0]completion_status0;
  wire [4:0]completion_status1;
  wire [4:0]completion_status2;
  wire [4:0]completion_status3;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_sync inst
       (.CLK(CLK),
        .Rport_completion_status0(Rport_completion_status0),
        .Rport_completion_status1(Rport_completion_status1),
        .Rport_completion_status2(Rport_completion_status2),
        .Rport_completion_status3(Rport_completion_status3),
        .completion_status0(completion_status0),
        .completion_status1(completion_status1),
        .completion_status2(completion_status2),
        .completion_status3(completion_status3));
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
