-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Tue Dec  1 08:48:00 2020
-- Host        : hien running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home3/ktokunaga/Project/60-0064/vivado/Ether10g-r2/Ether10g-r2.srcs/sources_1/bd/design_1/ip/design_1_clk_sync_0_0/design_1_clk_sync_0_0_sim_netlist.vhdl
-- Design      : design_1_clk_sync_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu19eg-ffvc1760-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_clk_sync_0_0_clk_sync is
  port (
    Rport_completion_status0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Rport_completion_status1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Rport_completion_status2 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Rport_completion_status3 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    completion_status0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CLK : in STD_LOGIC;
    completion_status1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    completion_status2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    completion_status3 : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_clk_sync_0_0_clk_sync : entity is "clk_sync";
end design_1_clk_sync_0_0_clk_sync;

architecture STRUCTURE of design_1_clk_sync_0_0_clk_sync is
  signal completion_status01 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal completion_status11 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal completion_status21 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal completion_status31 : STD_LOGIC_VECTOR ( 4 downto 0 );
begin
\completion_status01_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status0(0),
      Q => completion_status01(0),
      R => '0'
    );
\completion_status01_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status0(1),
      Q => completion_status01(1),
      R => '0'
    );
\completion_status01_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status0(2),
      Q => completion_status01(2),
      R => '0'
    );
\completion_status01_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status0(3),
      Q => completion_status01(3),
      R => '0'
    );
\completion_status01_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status0(4),
      Q => completion_status01(4),
      R => '0'
    );
\completion_status02_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status01(0),
      Q => Rport_completion_status0(0),
      R => '0'
    );
\completion_status02_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status01(1),
      Q => Rport_completion_status0(1),
      R => '0'
    );
\completion_status02_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status01(2),
      Q => Rport_completion_status0(2),
      R => '0'
    );
\completion_status02_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status01(3),
      Q => Rport_completion_status0(3),
      R => '0'
    );
\completion_status02_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status01(4),
      Q => Rport_completion_status0(4),
      R => '0'
    );
\completion_status11_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status1(0),
      Q => completion_status11(0),
      R => '0'
    );
\completion_status11_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status1(1),
      Q => completion_status11(1),
      R => '0'
    );
\completion_status11_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status1(2),
      Q => completion_status11(2),
      R => '0'
    );
\completion_status11_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status1(3),
      Q => completion_status11(3),
      R => '0'
    );
\completion_status11_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status1(4),
      Q => completion_status11(4),
      R => '0'
    );
\completion_status12_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status11(0),
      Q => Rport_completion_status1(0),
      R => '0'
    );
\completion_status12_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status11(1),
      Q => Rport_completion_status1(1),
      R => '0'
    );
\completion_status12_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status11(2),
      Q => Rport_completion_status1(2),
      R => '0'
    );
\completion_status12_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status11(3),
      Q => Rport_completion_status1(3),
      R => '0'
    );
\completion_status12_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status11(4),
      Q => Rport_completion_status1(4),
      R => '0'
    );
\completion_status21_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status2(0),
      Q => completion_status21(0),
      R => '0'
    );
\completion_status21_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status2(1),
      Q => completion_status21(1),
      R => '0'
    );
\completion_status21_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status2(2),
      Q => completion_status21(2),
      R => '0'
    );
\completion_status21_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status2(3),
      Q => completion_status21(3),
      R => '0'
    );
\completion_status21_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status2(4),
      Q => completion_status21(4),
      R => '0'
    );
\completion_status22_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status21(0),
      Q => Rport_completion_status2(0),
      R => '0'
    );
\completion_status22_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status21(1),
      Q => Rport_completion_status2(1),
      R => '0'
    );
\completion_status22_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status21(2),
      Q => Rport_completion_status2(2),
      R => '0'
    );
\completion_status22_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status21(3),
      Q => Rport_completion_status2(3),
      R => '0'
    );
\completion_status22_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status21(4),
      Q => Rport_completion_status2(4),
      R => '0'
    );
\completion_status31_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status3(0),
      Q => completion_status31(0),
      R => '0'
    );
\completion_status31_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status3(1),
      Q => completion_status31(1),
      R => '0'
    );
\completion_status31_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status3(2),
      Q => completion_status31(2),
      R => '0'
    );
\completion_status31_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status3(3),
      Q => completion_status31(3),
      R => '0'
    );
\completion_status31_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status3(4),
      Q => completion_status31(4),
      R => '0'
    );
\completion_status32_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status31(0),
      Q => Rport_completion_status3(0),
      R => '0'
    );
\completion_status32_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status31(1),
      Q => Rport_completion_status3(1),
      R => '0'
    );
\completion_status32_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status31(2),
      Q => Rport_completion_status3(2),
      R => '0'
    );
\completion_status32_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status31(3),
      Q => Rport_completion_status3(3),
      R => '0'
    );
\completion_status32_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => completion_status31(4),
      Q => Rport_completion_status3(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_clk_sync_0_0 is
  port (
    CLK : in STD_LOGIC;
    completion_status0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    completion_status1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    completion_status2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    completion_status3 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Rport_completion_status0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Rport_completion_status1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Rport_completion_status2 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Rport_completion_status3 : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_clk_sync_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_clk_sync_0_0 : entity is "design_1_clk_sync_0_0,clk_sync,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_clk_sync_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_clk_sync_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_clk_sync_0_0 : entity is "clk_sync,Vivado 2019.1";
end design_1_clk_sync_0_0;

architecture STRUCTURE of design_1_clk_sync_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK, FREQ_HZ 99999000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
begin
inst: entity work.design_1_clk_sync_0_0_clk_sync
     port map (
      CLK => CLK,
      Rport_completion_status0(4 downto 0) => Rport_completion_status0(4 downto 0),
      Rport_completion_status1(4 downto 0) => Rport_completion_status1(4 downto 0),
      Rport_completion_status2(4 downto 0) => Rport_completion_status2(4 downto 0),
      Rport_completion_status3(4 downto 0) => Rport_completion_status3(4 downto 0),
      completion_status0(4 downto 0) => completion_status0(4 downto 0),
      completion_status1(4 downto 0) => completion_status1(4 downto 0),
      completion_status2(4 downto 0) => completion_status2(4 downto 0),
      completion_status3(4 downto 0) => completion_status3(4 downto 0)
    );
end STRUCTURE;
