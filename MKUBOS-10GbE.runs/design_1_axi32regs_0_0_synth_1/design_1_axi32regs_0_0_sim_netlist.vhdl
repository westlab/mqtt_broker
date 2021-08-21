-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Tue Dec  1 13:58:59 2020
-- Host        : hien running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axi32regs_0_0_sim_netlist.vhdl
-- Design      : design_1_axi32regs_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu19eg-ffvc1760-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi32regs is
  port (
    S_AXI_wready : out STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    Wport_restart_tx_rx : out STD_LOGIC;
    Wport_sys_resetp : out STD_LOGIC;
    S_AXI_aclk : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC;
    S_AXI_aresetn : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    Rport_completion_status3 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Rport_completion_status2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Rport_completion_status1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Rport_completion_status0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi32regs;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi32regs is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal S_AXI_arready0 : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal S_AXI_awready0 : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal S_AXI_bvalid_i_1_n_0 : STD_LOGIC;
  signal \S_AXI_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_rdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \S_AXI_rdata[4]_i_4_n_0\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal S_AXI_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal S_AXI_wready0 : STD_LOGIC;
  signal \^wport_restart_tx_rx\ : STD_LOGIC;
  signal Wport_restart_tx_rx_i_1_n_0 : STD_LOGIC;
  signal Wport_restart_tx_rx_i_2_n_0 : STD_LOGIC;
  signal Wport_restart_tx_rx_i_3_n_0 : STD_LOGIC;
  signal Wport_restart_tx_rx_i_4_n_0 : STD_LOGIC;
  signal \^wport_sys_resetp\ : STD_LOGIC;
  signal Wport_sys_resetp_i_1_n_0 : STD_LOGIC;
  signal Wport_sys_resetp_i_2_n_0 : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_awaddr : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \axi_awaddr_reg_n_0_[6]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[7]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_0_in0 : STD_LOGIC;
  signal reg_scratchpad : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_scratchpad[31]_i_2_n_0\ : STD_LOGIC;
  signal reg_scratchpad_0 : STD_LOGIC;
  signal rst : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \S_AXI_rdata[4]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \S_AXI_rdata[4]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \S_AXI_rdata[5]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \S_AXI_rdata[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of S_AXI_wready_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of Wport_restart_tx_rx_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of Wport_restart_tx_rx_i_3 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of Wport_sys_resetp_i_2 : label is "soft_lutpair3";
begin
  S_AXI_arready <= \^s_axi_arready\;
  S_AXI_awready <= \^s_axi_awready\;
  S_AXI_bvalid <= \^s_axi_bvalid\;
  S_AXI_rvalid <= \^s_axi_rvalid\;
  S_AXI_wready <= \^s_axi_wready\;
  Wport_restart_tx_rx <= \^wport_restart_tx_rx\;
  Wport_sys_resetp <= \^wport_sys_resetp\;
S_AXI_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => S_AXI_arvalid,
      I1 => \^s_axi_arready\,
      O => S_AXI_arready0
    );
S_AXI_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => '1',
      D => S_AXI_arready0,
      Q => \^s_axi_arready\,
      R => rst
    );
S_AXI_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_aresetn,
      O => rst
    );
S_AXI_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => S_AXI_wvalid,
      I2 => S_AXI_awvalid,
      I3 => aw_en_reg_n_0,
      O => S_AXI_awready0
    );
S_AXI_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => '1',
      D => S_AXI_awready0,
      Q => \^s_axi_awready\,
      R => rst
    );
S_AXI_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444444444444444"
    )
        port map (
      I0 => S_AXI_bready,
      I1 => \^s_axi_bvalid\,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => S_AXI_wvalid,
      I5 => S_AXI_awvalid,
      O => S_AXI_bvalid_i_1_n_0
    );
S_AXI_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => '1',
      D => S_AXI_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => rst
    );
\S_AXI_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888A888A888"
    )
        port map (
      I0 => \S_AXI_rdata[31]_i_2_n_0\,
      I1 => \S_AXI_rdata[0]_i_2_n_0\,
      I2 => Rport_completion_status3(0),
      I3 => \S_AXI_rdata[4]_i_3_n_0\,
      I4 => Rport_completion_status2(0),
      I5 => \S_AXI_rdata[4]_i_4_n_0\,
      O => p_0_in(0)
    );
\S_AXI_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5455045554050405"
    )
        port map (
      I0 => axi_araddr(4),
      I1 => reg_scratchpad(0),
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      I4 => Rport_completion_status1(0),
      I5 => Rport_completion_status0(0),
      O => \S_AXI_rdata[0]_i_2_n_0\
    );
\S_AXI_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => axi_araddr(4),
      I3 => \S_AXI_rdata[31]_i_2_n_0\,
      I4 => reg_scratchpad(10),
      O => p_0_in(10)
    );
\S_AXI_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => axi_araddr(4),
      I3 => \S_AXI_rdata[31]_i_2_n_0\,
      I4 => reg_scratchpad(11),
      O => p_0_in(11)
    );
\S_AXI_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => axi_araddr(4),
      I3 => \S_AXI_rdata[31]_i_2_n_0\,
      I4 => reg_scratchpad(12),
      O => p_0_in(12)
    );
\S_AXI_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => axi_araddr(4),
      I3 => \S_AXI_rdata[31]_i_2_n_0\,
      I4 => reg_scratchpad(13),
      O => p_0_in(13)
    );
\S_AXI_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => axi_araddr(4),
      I3 => \S_AXI_rdata[31]_i_2_n_0\,
      I4 => reg_scratchpad(14),
      O => p_0_in(14)
    );
\S_AXI_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => axi_araddr(4),
      I3 => \S_AXI_rdata[31]_i_2_n_0\,
      I4 => reg_scratchpad(15),
      O => p_0_in(15)
    );
\S_AXI_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => axi_araddr(4),
      I3 => \S_AXI_rdata[31]_i_2_n_0\,
      I4 => reg_scratchpad(16),
      O => p_0_in(16)
    );
\S_AXI_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000B0000"
    )
        port map (
      I0 => reg_scratchpad(17),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => axi_araddr(4),
      I4 => \S_AXI_rdata[31]_i_2_n_0\,
      O => p_0_in(17)
    );
\S_AXI_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => axi_araddr(4),
      I3 => \S_AXI_rdata[31]_i_2_n_0\,
      I4 => reg_scratchpad(18),
      O => p_0_in(18)
    );
\S_AXI_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => axi_araddr(4),
      I3 => \S_AXI_rdata[31]_i_2_n_0\,
      I4 => reg_scratchpad(19),
      O => p_0_in(19)
    );
\S_AXI_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888A888A888"
    )
        port map (
      I0 => \S_AXI_rdata[31]_i_2_n_0\,
      I1 => \S_AXI_rdata[1]_i_2_n_0\,
      I2 => Rport_completion_status3(1),
      I3 => \S_AXI_rdata[4]_i_3_n_0\,
      I4 => Rport_completion_status2(1),
      I5 => \S_AXI_rdata[4]_i_4_n_0\,
      O => p_0_in(1)
    );
\S_AXI_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5414440450104000"
    )
        port map (
      I0 => axi_araddr(4),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => Rport_completion_status1(1),
      I4 => reg_scratchpad(1),
      I5 => Rport_completion_status0(1),
      O => \S_AXI_rdata[1]_i_2_n_0\
    );
\S_AXI_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => axi_araddr(4),
      I3 => \S_AXI_rdata[31]_i_2_n_0\,
      I4 => reg_scratchpad(20),
      O => p_0_in(20)
    );
\S_AXI_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => axi_araddr(4),
      I3 => \S_AXI_rdata[31]_i_2_n_0\,
      I4 => reg_scratchpad(21),
      O => p_0_in(21)
    );
\S_AXI_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => axi_araddr(4),
      I3 => \S_AXI_rdata[31]_i_2_n_0\,
      I4 => reg_scratchpad(22),
      O => p_0_in(22)
    );
\S_AXI_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => axi_araddr(4),
      I3 => \S_AXI_rdata[31]_i_2_n_0\,
      I4 => reg_scratchpad(23),
      O => p_0_in(23)
    );
\S_AXI_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => axi_araddr(4),
      I3 => \S_AXI_rdata[31]_i_2_n_0\,
      I4 => reg_scratchpad(24),
      O => p_0_in(24)
    );
\S_AXI_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => axi_araddr(4),
      I3 => \S_AXI_rdata[31]_i_2_n_0\,
      I4 => reg_scratchpad(25),
      O => p_0_in(25)
    );
\S_AXI_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => axi_araddr(4),
      I3 => \S_AXI_rdata[31]_i_2_n_0\,
      I4 => reg_scratchpad(26),
      O => p_0_in(26)
    );
\S_AXI_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => axi_araddr(4),
      I3 => \S_AXI_rdata[31]_i_2_n_0\,
      I4 => reg_scratchpad(27),
      O => p_0_in(27)
    );
\S_AXI_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000B0000"
    )
        port map (
      I0 => reg_scratchpad(28),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => axi_araddr(4),
      I4 => \S_AXI_rdata[31]_i_2_n_0\,
      O => p_0_in(28)
    );
\S_AXI_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => axi_araddr(4),
      I3 => \S_AXI_rdata[31]_i_2_n_0\,
      I4 => reg_scratchpad(29),
      O => p_0_in(29)
    );
\S_AXI_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888A888A888"
    )
        port map (
      I0 => \S_AXI_rdata[31]_i_2_n_0\,
      I1 => \S_AXI_rdata[2]_i_2_n_0\,
      I2 => Rport_completion_status3(2),
      I3 => \S_AXI_rdata[4]_i_3_n_0\,
      I4 => Rport_completion_status2(2),
      I5 => \S_AXI_rdata[4]_i_4_n_0\,
      O => p_0_in(2)
    );
\S_AXI_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5414440450104000"
    )
        port map (
      I0 => axi_araddr(4),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => Rport_completion_status1(2),
      I4 => reg_scratchpad(2),
      I5 => Rport_completion_status0(2),
      O => \S_AXI_rdata[2]_i_2_n_0\
    );
\S_AXI_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000B0000"
    )
        port map (
      I0 => reg_scratchpad(30),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => axi_araddr(4),
      I4 => \S_AXI_rdata[31]_i_2_n_0\,
      O => p_0_in(30)
    );
\S_AXI_rdata[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => axi_araddr(4),
      I3 => \S_AXI_rdata[31]_i_2_n_0\,
      I4 => reg_scratchpad(31),
      O => p_0_in(31)
    );
\S_AXI_rdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => axi_araddr(0),
      I1 => axi_araddr(5),
      I2 => axi_araddr(6),
      I3 => axi_araddr(7),
      I4 => axi_araddr(1),
      O => \S_AXI_rdata[31]_i_2_n_0\
    );
\S_AXI_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888A888A888"
    )
        port map (
      I0 => \S_AXI_rdata[31]_i_2_n_0\,
      I1 => \S_AXI_rdata[3]_i_2_n_0\,
      I2 => Rport_completion_status3(3),
      I3 => \S_AXI_rdata[4]_i_3_n_0\,
      I4 => Rport_completion_status2(3),
      I5 => \S_AXI_rdata[4]_i_4_n_0\,
      O => p_0_in(3)
    );
\S_AXI_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5414440450104000"
    )
        port map (
      I0 => axi_araddr(4),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => Rport_completion_status1(3),
      I4 => reg_scratchpad(3),
      I5 => Rport_completion_status0(3),
      O => \S_AXI_rdata[3]_i_2_n_0\
    );
\S_AXI_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888A888A888"
    )
        port map (
      I0 => \S_AXI_rdata[31]_i_2_n_0\,
      I1 => \S_AXI_rdata[4]_i_2_n_0\,
      I2 => Rport_completion_status3(4),
      I3 => \S_AXI_rdata[4]_i_3_n_0\,
      I4 => Rport_completion_status2(4),
      I5 => \S_AXI_rdata[4]_i_4_n_0\,
      O => p_0_in(4)
    );
\S_AXI_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5414440450104000"
    )
        port map (
      I0 => axi_araddr(4),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => Rport_completion_status1(4),
      I4 => reg_scratchpad(4),
      I5 => Rport_completion_status0(4),
      O => \S_AXI_rdata[4]_i_2_n_0\
    );
\S_AXI_rdata[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(4),
      I2 => axi_araddr(3),
      O => \S_AXI_rdata[4]_i_3_n_0\
    );
\S_AXI_rdata[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => axi_araddr(4),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => \S_AXI_rdata[4]_i_4_n_0\
    );
\S_AXI_rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => axi_araddr(4),
      I3 => \S_AXI_rdata[31]_i_2_n_0\,
      I4 => reg_scratchpad(5),
      O => p_0_in(5)
    );
\S_AXI_rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => axi_araddr(4),
      I3 => \S_AXI_rdata[31]_i_2_n_0\,
      I4 => reg_scratchpad(6),
      O => p_0_in(6)
    );
\S_AXI_rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => axi_araddr(4),
      I3 => \S_AXI_rdata[31]_i_2_n_0\,
      I4 => reg_scratchpad(7),
      O => p_0_in(7)
    );
\S_AXI_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => axi_araddr(4),
      I3 => \S_AXI_rdata[31]_i_2_n_0\,
      I4 => reg_scratchpad(8),
      O => p_0_in(8)
    );
\S_AXI_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => axi_araddr(4),
      I3 => \S_AXI_rdata[31]_i_2_n_0\,
      I4 => reg_scratchpad(9),
      O => p_0_in(9)
    );
\S_AXI_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \slv_reg_rden__0\,
      D => p_0_in(0),
      Q => S_AXI_rdata(0),
      R => rst
    );
\S_AXI_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \slv_reg_rden__0\,
      D => p_0_in(10),
      Q => S_AXI_rdata(10),
      R => rst
    );
\S_AXI_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \slv_reg_rden__0\,
      D => p_0_in(11),
      Q => S_AXI_rdata(11),
      R => rst
    );
\S_AXI_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \slv_reg_rden__0\,
      D => p_0_in(12),
      Q => S_AXI_rdata(12),
      R => rst
    );
\S_AXI_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \slv_reg_rden__0\,
      D => p_0_in(13),
      Q => S_AXI_rdata(13),
      R => rst
    );
\S_AXI_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \slv_reg_rden__0\,
      D => p_0_in(14),
      Q => S_AXI_rdata(14),
      R => rst
    );
\S_AXI_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \slv_reg_rden__0\,
      D => p_0_in(15),
      Q => S_AXI_rdata(15),
      R => rst
    );
\S_AXI_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \slv_reg_rden__0\,
      D => p_0_in(16),
      Q => S_AXI_rdata(16),
      R => rst
    );
\S_AXI_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \slv_reg_rden__0\,
      D => p_0_in(17),
      Q => S_AXI_rdata(17),
      R => rst
    );
\S_AXI_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \slv_reg_rden__0\,
      D => p_0_in(18),
      Q => S_AXI_rdata(18),
      R => rst
    );
\S_AXI_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \slv_reg_rden__0\,
      D => p_0_in(19),
      Q => S_AXI_rdata(19),
      R => rst
    );
\S_AXI_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \slv_reg_rden__0\,
      D => p_0_in(1),
      Q => S_AXI_rdata(1),
      R => rst
    );
\S_AXI_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \slv_reg_rden__0\,
      D => p_0_in(20),
      Q => S_AXI_rdata(20),
      R => rst
    );
\S_AXI_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \slv_reg_rden__0\,
      D => p_0_in(21),
      Q => S_AXI_rdata(21),
      R => rst
    );
\S_AXI_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \slv_reg_rden__0\,
      D => p_0_in(22),
      Q => S_AXI_rdata(22),
      R => rst
    );
\S_AXI_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \slv_reg_rden__0\,
      D => p_0_in(23),
      Q => S_AXI_rdata(23),
      R => rst
    );
\S_AXI_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \slv_reg_rden__0\,
      D => p_0_in(24),
      Q => S_AXI_rdata(24),
      R => rst
    );
\S_AXI_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \slv_reg_rden__0\,
      D => p_0_in(25),
      Q => S_AXI_rdata(25),
      R => rst
    );
\S_AXI_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \slv_reg_rden__0\,
      D => p_0_in(26),
      Q => S_AXI_rdata(26),
      R => rst
    );
\S_AXI_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \slv_reg_rden__0\,
      D => p_0_in(27),
      Q => S_AXI_rdata(27),
      R => rst
    );
\S_AXI_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \slv_reg_rden__0\,
      D => p_0_in(28),
      Q => S_AXI_rdata(28),
      R => rst
    );
\S_AXI_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \slv_reg_rden__0\,
      D => p_0_in(29),
      Q => S_AXI_rdata(29),
      R => rst
    );
\S_AXI_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \slv_reg_rden__0\,
      D => p_0_in(2),
      Q => S_AXI_rdata(2),
      R => rst
    );
\S_AXI_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \slv_reg_rden__0\,
      D => p_0_in(30),
      Q => S_AXI_rdata(30),
      R => rst
    );
\S_AXI_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \slv_reg_rden__0\,
      D => p_0_in(31),
      Q => S_AXI_rdata(31),
      R => rst
    );
\S_AXI_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \slv_reg_rden__0\,
      D => p_0_in(3),
      Q => S_AXI_rdata(3),
      R => rst
    );
\S_AXI_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \slv_reg_rden__0\,
      D => p_0_in(4),
      Q => S_AXI_rdata(4),
      R => rst
    );
\S_AXI_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \slv_reg_rden__0\,
      D => p_0_in(5),
      Q => S_AXI_rdata(5),
      R => rst
    );
\S_AXI_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \slv_reg_rden__0\,
      D => p_0_in(6),
      Q => S_AXI_rdata(6),
      R => rst
    );
\S_AXI_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \slv_reg_rden__0\,
      D => p_0_in(7),
      Q => S_AXI_rdata(7),
      R => rst
    );
\S_AXI_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \slv_reg_rden__0\,
      D => p_0_in(8),
      Q => S_AXI_rdata(8),
      R => rst
    );
\S_AXI_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \slv_reg_rden__0\,
      D => p_0_in(9),
      Q => S_AXI_rdata(9),
      R => rst
    );
S_AXI_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => S_AXI_arvalid,
      I2 => \^s_axi_rvalid\,
      I3 => S_AXI_rready,
      O => S_AXI_rvalid_i_1_n_0
    );
S_AXI_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => '1',
      D => S_AXI_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => rst
    );
S_AXI_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => S_AXI_awvalid,
      I2 => S_AXI_wvalid,
      I3 => \^s_axi_wready\,
      O => S_AXI_wready0
    );
S_AXI_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => '1',
      D => S_AXI_wready0,
      Q => \^s_axi_wready\,
      R => rst
    );
Wport_restart_tx_rx_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_wdata(0),
      I1 => Wport_restart_tx_rx_i_2_n_0,
      I2 => Wport_restart_tx_rx_i_3_n_0,
      I3 => Wport_restart_tx_rx_i_4_n_0,
      I4 => \^wport_restart_tx_rx\,
      O => Wport_restart_tx_rx_i_1_n_0
    );
Wport_restart_tx_rx_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => \^s_axi_wready\,
      I2 => S_AXI_wvalid,
      I3 => S_AXI_awvalid,
      O => Wport_restart_tx_rx_i_2_n_0
    );
Wport_restart_tx_rx_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(1),
      I2 => axi_awaddr(0),
      O => Wport_restart_tx_rx_i_3_n_0
    );
Wport_restart_tx_rx_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => p_0_in0,
      I1 => \axi_awaddr_reg_n_0_[6]\,
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(4),
      I4 => \axi_awaddr_reg_n_0_[7]\,
      I5 => S_AXI_aresetn,
      O => Wport_restart_tx_rx_i_4_n_0
    );
Wport_restart_tx_rx_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => '1',
      D => Wport_restart_tx_rx_i_1_n_0,
      Q => \^wport_restart_tx_rx\,
      R => '0'
    );
Wport_sys_resetp_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_wdata(0),
      I1 => Wport_restart_tx_rx_i_2_n_0,
      I2 => Wport_sys_resetp_i_2_n_0,
      I3 => Wport_restart_tx_rx_i_4_n_0,
      I4 => \^wport_sys_resetp\,
      O => Wport_sys_resetp_i_1_n_0
    );
Wport_sys_resetp_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => axi_awaddr(1),
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(0),
      O => Wport_sys_resetp_i_2_n_0
    );
Wport_sys_resetp_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => '1',
      D => Wport_sys_resetp_i_1_n_0,
      Q => \^wport_sys_resetp\,
      R => '0'
    );
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFFFFF88888888"
    )
        port map (
      I0 => S_AXI_bready,
      I1 => \^s_axi_bvalid\,
      I2 => \^s_axi_awready\,
      I3 => S_AXI_wvalid,
      I4 => S_AXI_awvalid,
      I5 => aw_en_reg_n_0,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => rst
    );
\axi_araddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => S_AXI_arready0,
      D => S_AXI_araddr(0),
      Q => axi_araddr(0),
      R => rst
    );
\axi_araddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => S_AXI_arready0,
      D => S_AXI_araddr(1),
      Q => axi_araddr(1),
      R => rst
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => S_AXI_arready0,
      D => S_AXI_araddr(2),
      Q => axi_araddr(2),
      R => rst
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => S_AXI_arready0,
      D => S_AXI_araddr(3),
      Q => axi_araddr(3),
      R => rst
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => S_AXI_arready0,
      D => S_AXI_araddr(4),
      Q => axi_araddr(4),
      R => rst
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => S_AXI_arready0,
      D => S_AXI_araddr(5),
      Q => axi_araddr(5),
      R => rst
    );
\axi_araddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => S_AXI_arready0,
      D => S_AXI_araddr(6),
      Q => axi_araddr(6),
      R => rst
    );
\axi_araddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => S_AXI_arready0,
      D => S_AXI_araddr(7),
      Q => axi_araddr(7),
      R => rst
    );
\axi_awaddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => S_AXI_awready0,
      D => S_AXI_awaddr(0),
      Q => axi_awaddr(0),
      R => rst
    );
\axi_awaddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => S_AXI_awready0,
      D => S_AXI_awaddr(1),
      Q => axi_awaddr(1),
      R => rst
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => S_AXI_awready0,
      D => S_AXI_awaddr(2),
      Q => axi_awaddr(2),
      R => rst
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => S_AXI_awready0,
      D => S_AXI_awaddr(3),
      Q => axi_awaddr(3),
      R => rst
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => S_AXI_awready0,
      D => S_AXI_awaddr(4),
      Q => axi_awaddr(4),
      R => rst
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => S_AXI_awready0,
      D => S_AXI_awaddr(5),
      Q => p_0_in0,
      R => rst
    );
\axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => S_AXI_awready0,
      D => S_AXI_awaddr(6),
      Q => \axi_awaddr_reg_n_0_[6]\,
      R => rst
    );
\axi_awaddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => S_AXI_awready0,
      D => S_AXI_awaddr(7),
      Q => \axi_awaddr_reg_n_0_[7]\,
      R => rst
    );
\reg_scratchpad[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => Wport_restart_tx_rx_i_2_n_0,
      I1 => axi_awaddr(0),
      I2 => axi_awaddr(1),
      I3 => \reg_scratchpad[31]_i_2_n_0\,
      O => reg_scratchpad_0
    );
\reg_scratchpad[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => axi_awaddr(4),
      I1 => p_0_in0,
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      I4 => \axi_awaddr_reg_n_0_[7]\,
      I5 => \axi_awaddr_reg_n_0_[6]\,
      O => \reg_scratchpad[31]_i_2_n_0\
    );
\reg_scratchpad_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => reg_scratchpad_0,
      D => S_AXI_wdata(0),
      Q => reg_scratchpad(0),
      R => rst
    );
\reg_scratchpad_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => reg_scratchpad_0,
      D => S_AXI_wdata(10),
      Q => reg_scratchpad(10),
      R => rst
    );
\reg_scratchpad_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => reg_scratchpad_0,
      D => S_AXI_wdata(11),
      Q => reg_scratchpad(11),
      R => rst
    );
\reg_scratchpad_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => reg_scratchpad_0,
      D => S_AXI_wdata(12),
      Q => reg_scratchpad(12),
      R => rst
    );
\reg_scratchpad_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => reg_scratchpad_0,
      D => S_AXI_wdata(13),
      Q => reg_scratchpad(13),
      R => rst
    );
\reg_scratchpad_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => reg_scratchpad_0,
      D => S_AXI_wdata(14),
      Q => reg_scratchpad(14),
      R => rst
    );
\reg_scratchpad_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => reg_scratchpad_0,
      D => S_AXI_wdata(15),
      Q => reg_scratchpad(15),
      R => rst
    );
\reg_scratchpad_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => reg_scratchpad_0,
      D => S_AXI_wdata(16),
      Q => reg_scratchpad(16),
      R => rst
    );
\reg_scratchpad_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => reg_scratchpad_0,
      D => S_AXI_wdata(17),
      Q => reg_scratchpad(17),
      R => rst
    );
\reg_scratchpad_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => reg_scratchpad_0,
      D => S_AXI_wdata(18),
      Q => reg_scratchpad(18),
      R => rst
    );
\reg_scratchpad_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => reg_scratchpad_0,
      D => S_AXI_wdata(19),
      Q => reg_scratchpad(19),
      R => rst
    );
\reg_scratchpad_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => reg_scratchpad_0,
      D => S_AXI_wdata(1),
      Q => reg_scratchpad(1),
      R => rst
    );
\reg_scratchpad_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => reg_scratchpad_0,
      D => S_AXI_wdata(20),
      Q => reg_scratchpad(20),
      R => rst
    );
\reg_scratchpad_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => reg_scratchpad_0,
      D => S_AXI_wdata(21),
      Q => reg_scratchpad(21),
      R => rst
    );
\reg_scratchpad_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => reg_scratchpad_0,
      D => S_AXI_wdata(22),
      Q => reg_scratchpad(22),
      R => rst
    );
\reg_scratchpad_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => reg_scratchpad_0,
      D => S_AXI_wdata(23),
      Q => reg_scratchpad(23),
      R => rst
    );
\reg_scratchpad_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => reg_scratchpad_0,
      D => S_AXI_wdata(24),
      Q => reg_scratchpad(24),
      R => rst
    );
\reg_scratchpad_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => reg_scratchpad_0,
      D => S_AXI_wdata(25),
      Q => reg_scratchpad(25),
      R => rst
    );
\reg_scratchpad_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => reg_scratchpad_0,
      D => S_AXI_wdata(26),
      Q => reg_scratchpad(26),
      R => rst
    );
\reg_scratchpad_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => reg_scratchpad_0,
      D => S_AXI_wdata(27),
      Q => reg_scratchpad(27),
      R => rst
    );
\reg_scratchpad_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => reg_scratchpad_0,
      D => S_AXI_wdata(28),
      Q => reg_scratchpad(28),
      R => rst
    );
\reg_scratchpad_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => reg_scratchpad_0,
      D => S_AXI_wdata(29),
      Q => reg_scratchpad(29),
      R => rst
    );
\reg_scratchpad_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => reg_scratchpad_0,
      D => S_AXI_wdata(2),
      Q => reg_scratchpad(2),
      R => rst
    );
\reg_scratchpad_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => reg_scratchpad_0,
      D => S_AXI_wdata(30),
      Q => reg_scratchpad(30),
      R => rst
    );
\reg_scratchpad_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => reg_scratchpad_0,
      D => S_AXI_wdata(31),
      Q => reg_scratchpad(31),
      R => rst
    );
\reg_scratchpad_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => reg_scratchpad_0,
      D => S_AXI_wdata(3),
      Q => reg_scratchpad(3),
      R => rst
    );
\reg_scratchpad_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => reg_scratchpad_0,
      D => S_AXI_wdata(4),
      Q => reg_scratchpad(4),
      R => rst
    );
\reg_scratchpad_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => reg_scratchpad_0,
      D => S_AXI_wdata(5),
      Q => reg_scratchpad(5),
      R => rst
    );
\reg_scratchpad_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => reg_scratchpad_0,
      D => S_AXI_wdata(6),
      Q => reg_scratchpad(6),
      R => rst
    );
\reg_scratchpad_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => reg_scratchpad_0,
      D => S_AXI_wdata(7),
      Q => reg_scratchpad(7),
      R => rst
    );
\reg_scratchpad_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => reg_scratchpad_0,
      D => S_AXI_wdata(8),
      Q => reg_scratchpad(8),
      R => rst
    );
\reg_scratchpad_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => reg_scratchpad_0,
      D => S_AXI_wdata(9),
      Q => reg_scratchpad(9),
      R => rst
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => S_AXI_arvalid,
      I1 => \^s_axi_rvalid\,
      I2 => \^s_axi_arready\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_axi32regs_0_0,axi32regs,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axi32regs,Vivado 2019.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S_AXI_aclk : signal is "xilinx.com:signal:clock:1.0 S_AXI_aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of S_AXI_aclk : signal is "XIL_INTERFACENAME S_AXI_aclk, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_aresetn, FREQ_HZ 99999000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_aresetn : signal is "xilinx.com:signal:reset:1.0 S_AXI_aresetn RST";
  attribute X_INTERFACE_PARAMETER of S_AXI_aresetn : signal is "XIL_INTERFACENAME S_AXI_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of S_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of S_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_INFO of S_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of S_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of S_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of S_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of S_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of S_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of S_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of S_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of S_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_PARAMETER of S_AXI_rdata : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999000, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of S_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of S_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  S_AXI_bresp(1) <= \<const0>\;
  S_AXI_bresp(0) <= \<const0>\;
  S_AXI_rresp(1) <= \<const0>\;
  S_AXI_rresp(0) <= \<const0>\;
  Testsig_o(15) <= \<const0>\;
  Testsig_o(14) <= \<const0>\;
  Testsig_o(13) <= \<const0>\;
  Testsig_o(12) <= \<const0>\;
  Testsig_o(11) <= \<const0>\;
  Testsig_o(10) <= \<const0>\;
  Testsig_o(9) <= \<const0>\;
  Testsig_o(8) <= \<const0>\;
  Testsig_o(7) <= \<const0>\;
  Testsig_o(6) <= \<const0>\;
  Testsig_o(5) <= \<const0>\;
  Testsig_o(4) <= \<const0>\;
  Testsig_o(3) <= \<const0>\;
  Testsig_o(2) <= \<const0>\;
  Testsig_o(1) <= \<const0>\;
  Testsig_o(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi32regs
     port map (
      Rport_completion_status0(4 downto 0) => Rport_completion_status0(4 downto 0),
      Rport_completion_status1(4 downto 0) => Rport_completion_status1(4 downto 0),
      Rport_completion_status2(4 downto 0) => Rport_completion_status2(4 downto 0),
      Rport_completion_status3(4 downto 0) => Rport_completion_status3(4 downto 0),
      S_AXI_aclk => S_AXI_aclk,
      S_AXI_araddr(7 downto 0) => S_AXI_araddr(7 downto 0),
      S_AXI_aresetn => S_AXI_aresetn,
      S_AXI_arready => S_AXI_arready,
      S_AXI_arvalid => S_AXI_arvalid,
      S_AXI_awaddr(7 downto 0) => S_AXI_awaddr(7 downto 0),
      S_AXI_awready => S_AXI_awready,
      S_AXI_awvalid => S_AXI_awvalid,
      S_AXI_bready => S_AXI_bready,
      S_AXI_bvalid => S_AXI_bvalid,
      S_AXI_rdata(31 downto 0) => S_AXI_rdata(31 downto 0),
      S_AXI_rready => S_AXI_rready,
      S_AXI_rvalid => S_AXI_rvalid,
      S_AXI_wdata(31 downto 0) => S_AXI_wdata(31 downto 0),
      S_AXI_wready => S_AXI_wready,
      S_AXI_wvalid => S_AXI_wvalid,
      Wport_restart_tx_rx => Wport_restart_tx_rx,
      Wport_sys_resetp => Wport_sys_resetp
    );
end STRUCTURE;
