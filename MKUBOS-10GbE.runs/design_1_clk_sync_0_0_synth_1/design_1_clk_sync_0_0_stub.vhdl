-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Tue Dec  1 08:47:59 2020
-- Host        : hien running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_clk_sync_0_0_stub.vhdl
-- Design      : design_1_clk_sync_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu19eg-ffvc1760-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,completion_status0[4:0],completion_status1[4:0],completion_status2[4:0],completion_status3[4:0],Rport_completion_status0[4:0],Rport_completion_status1[4:0],Rport_completion_status2[4:0],Rport_completion_status3[4:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "clk_sync,Vivado 2019.1";
begin
end;
