-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Tue Dec  1 13:58:59 2020
-- Host        : hien running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axi32regs_0_0_stub.vhdl
-- Design      : design_1_axi32regs_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu19eg-ffvc1760-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    S_AXI_aclk : in STD_LOGIC;
    S_AXI_aresetn : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Rport_completion_status0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Rport_completion_status1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Rport_completion_status2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Rport_completion_status3 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Wport_restart_tx_rx : out STD_LOGIC;
    Wport_sys_resetp : out STD_LOGIC;
    Testsig_o : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "S_AXI_aclk,S_AXI_aresetn,S_AXI_awvalid,S_AXI_awready,S_AXI_wvalid,S_AXI_wready,S_AXI_bvalid,S_AXI_awprot[2:0],S_AXI_bresp[1:0],S_AXI_wstrb[3:0],S_AXI_awaddr[7:0],S_AXI_wdata[31:0],S_AXI_bready,S_AXI_arvalid,S_AXI_arready,S_AXI_rvalid,S_AXI_rready,S_AXI_arprot[2:0],S_AXI_rresp[1:0],S_AXI_araddr[7:0],S_AXI_rdata[31:0],Rport_completion_status0[4:0],Rport_completion_status1[4:0],Rport_completion_status2[4:0],Rport_completion_status3[4:0],Wport_restart_tx_rx,Wport_sys_resetp,Testsig_o[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axi32regs,Vivado 2019.1";
begin
end;
