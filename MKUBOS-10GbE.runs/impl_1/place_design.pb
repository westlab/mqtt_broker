
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xczu19eg2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xczu19eg2default:defaultZ17-349h px? 
?
?The version limit for your license is '%s' and has expired for new software. A version limit expiration means that, although you may be able to continue to use the current version of tools or IP with this license, you will not be eligible for any updates or new releases.
719*common2
2020.102default:defaultZ17-1540h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px? 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
82default:defaultZ30-611h px? 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
5247.4142default:default2
0.0002default:default2
916202default:default2
1175772default:defaultZ17-722h px? 
Z
EPhase 1.1 Placer Initialization Netlist Sorting | Checksum: fe89483f
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.03 ; elapsed = 00:00:00.05 . Memory (MB): peak = 5247.414 ; gain = 0.000 ; free physical = 91620 ; free virtual = 1175772default:defaulth px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:002default:default2
5247.4142default:default2
0.0002default:default2
916202default:default2
1175772default:defaultZ17-722h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
h
SPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 11cec452f
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:10 ; elapsed = 00:00:04 . Memory (MB): peak = 5247.414 ; gain = 0.000 ; free physical = 91550 ; free virtual = 1175072default:defaulth px? 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px? 
P
;Phase 1.3 Build Placer Netlist Model | Checksum: 17aee7096
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:21 ; elapsed = 00:00:09 . Memory (MB): peak = 5247.414 ; gain = 0.000 ; free physical = 91480 ; free virtual = 1174372default:defaulth px? 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px? 
M
8Phase 1.4 Constrain Clocks/Macros | Checksum: 17aee7096
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:21 ; elapsed = 00:00:09 . Memory (MB): peak = 5247.414 ; gain = 0.000 ; free physical = 91482 ; free virtual = 1174382default:defaulth px? 
I
4Phase 1 Placer Initialization | Checksum: 17aee7096
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:21 ; elapsed = 00:00:10 . Memory (MB): peak = 5247.414 ; gain = 0.000 ; free physical = 91482 ; free virtual = 1174382default:defaulth px? 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px? 
C
.Phase 2.1 Floorplanning | Checksum: 1a69913f5
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:02 ; elapsed = 00:00:27 . Memory (MB): peak = 5247.414 ; gain = 0.000 ; free physical = 91343 ; free virtual = 1172992default:defaulth px? 
x

Phase %s%s
101*constraints2
2.2 2default:default2)
Global Placement Core2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
2.2.1 2default:default20
Physical Synthesis In Placer2default:defaultZ18-101h px? 
?
?Very high fanout net '%s' has -through timing constraint on its net segments or hierarchy pins. To preserve -through timing constraint its fanout number considered in optimization is changed from %s to %s and it is not considered a very high fanout net anymore. Please consider modifying/removing the '-through' timing constraint on the net segment or hierarchy pin.
540*physynth2z
1fpga_core_inst/fifo_tx_mqtt/fifo_inst/p_0_in1_out1fpga_core_inst/fifo_tx_mqtt/fifo_inst/p_0_in1_out2default:default2
13832default:default2
942default:default8Z32-1022h px? 
?
?Very high fanout net '%s' has -through timing constraint on its net segments or hierarchy pins. To preserve -through timing constraint its fanout number considered in optimization is changed from %s to %s and it is not considered a very high fanout net anymore. Please consider modifying/removing the '-through' timing constraint on the net segment or hierarchy pin.
540*physynth2?
<fpga_core_inst/fifo_tx_mqtt/fifo_inst/wr_ptr_reg_reg_n_0_[0]<fpga_core_inst/fifo_tx_mqtt/fifo_inst/wr_ptr_reg_reg_n_0_[0]2default:default2
13822default:default2
932default:default8Z32-1022h px? 
?
?Very high fanout net '%s' has -through timing constraint on its net segments or hierarchy pins. To preserve -through timing constraint its fanout number considered in optimization is changed from %s to %s and it is not considered a very high fanout net anymore. Please consider modifying/removing the '-through' timing constraint on the net segment or hierarchy pin.
540*physynth2?
<fpga_core_inst/fifo_tx_mqtt/fifo_inst/wr_ptr_reg_reg_n_0_[1]<fpga_core_inst/fifo_tx_mqtt/fifo_inst/wr_ptr_reg_reg_n_0_[1]2default:default2
13822default:default2
932default:default8Z32-1022h px? 
?
?Very high fanout net '%s' has -through timing constraint on its net segments or hierarchy pins. To preserve -through timing constraint its fanout number considered in optimization is changed from %s to %s and it is not considered a very high fanout net anymore. Please consider modifying/removing the '-through' timing constraint on the net segment or hierarchy pin.
540*physynth2?
<fpga_core_inst/fifo_tx_mqtt/fifo_inst/wr_ptr_reg_reg_n_0_[2]<fpga_core_inst/fifo_tx_mqtt/fifo_inst/wr_ptr_reg_reg_n_0_[2]2default:default2
13802default:default2
912default:default8Z32-1022h px? 
K
)No high fanout nets found in the design.
65*physynthZ32-65h px? 
?
$Optimized %s %s. Created %s new %s.
216*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
0No setup violation found.  %s was not performed.344*physynth2-
DSP Register Optimization2default:defaultZ32-670h px? 
?
0No setup violation found.  %s was not performed.344*physynth2/
Shift Register Optimization2default:defaultZ32-670h px? 
?
0No setup violation found.  %s was not performed.344*physynth2.
BRAM Register Optimization2default:defaultZ32-670h px? 
R
.No candidate nets found for HD net replication521*physynthZ32-949h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
5277.9302default:default2
0.0002default:default2
913302default:default2
1172872default:defaultZ17-722h px? 
B
-
Summary of Physical Synthesis Optimizations
*commonh px? 
B
-============================================
*commonh px? 


*commonh px? 


*commonh px? 
?
?----------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Optimization                  |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
----------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Very High Fanout              |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  DSP Register                  |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Shift Register                |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  BRAM Register                 |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  HD Interface Net Replication  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Total                         |            0  |              0  |                     0  |           0  |           2  |  00:00:00  |
----------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 


*commonh px? 


*commonh px? 
T
?Phase 2.2.1 Physical Synthesis In Placer | Checksum: 1d5c3354f
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:40 ; elapsed = 00:01:07 . Memory (MB): peak = 5277.930 ; gain = 30.516 ; free physical = 91330 ; free virtual = 1172872default:defaulth px? 
K
6Phase 2.2 Global Placement Core | Checksum: 1a1864f4a
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:49 ; elapsed = 00:01:10 . Memory (MB): peak = 5277.930 ; gain = 30.516 ; free physical = 91313 ; free virtual = 1172692default:defaulth px? 
D
/Phase 2 Global Placement | Checksum: 1a1864f4a
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:49 ; elapsed = 00:01:10 . Memory (MB): peak = 5277.930 ; gain = 30.516 ; free physical = 91348 ; free virtual = 1173052default:defaulth px? 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px? 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px? 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 148b9a11e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:53 ; elapsed = 00:01:12 . Memory (MB): peak = 5277.930 ; gain = 30.516 ; free physical = 91340 ; free virtual = 1172972default:defaulth px? 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px? 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 11e9343c6
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:57 ; elapsed = 00:01:14 . Memory (MB): peak = 5277.930 ; gain = 30.516 ; free physical = 91334 ; free virtual = 1172912default:defaulth px? 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px? 
L
7Phase 3.3 Area Swap Optimization | Checksum: 119e544b6
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:58 ; elapsed = 00:01:14 . Memory (MB): peak = 5277.930 ; gain = 30.516 ; free physical = 91333 ; free virtual = 1172892default:defaulth px? 
y

Phase %s%s
101*constraints2
3.4 2default:default2*
Small Shape Clustering2default:defaultZ18-101h px? 
K
6Phase 3.4 Small Shape Clustering | Checksum: 3d7fa291
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:01 ; elapsed = 00:01:16 . Memory (MB): peak = 5277.930 ; gain = 30.516 ; free physical = 91293 ; free virtual = 1172502default:defaulth px? 


Phase %s%s
101*constraints2
3.5 2default:default20
Flow Legalize Slice Clusters2default:defaultZ18-101h px? 
Q
<Phase 3.5 Flow Legalize Slice Clusters | Checksum: 4835a943
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:02 ; elapsed = 00:01:17 . Memory (MB): peak = 5277.930 ; gain = 30.516 ; free physical = 91291 ; free virtual = 1172472default:defaulth px? 
r

Phase %s%s
101*constraints2
3.6 2default:default2#
Slice Area Swap2default:defaultZ18-101h px? 
D
/Phase 3.6 Slice Area Swap | Checksum: 69667166
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:07 ; elapsed = 00:01:21 . Memory (MB): peak = 5277.930 ; gain = 30.516 ; free physical = 91248 ; free virtual = 1172052default:defaulth px? 
x

Phase %s%s
101*constraints2
3.7 2default:default2)
Commit Slice Clusters2default:defaultZ18-101h px? 
K
6Phase 3.7 Commit Slice Clusters | Checksum: 14f317987
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:15 ; elapsed = 00:01:23 . Memory (MB): peak = 5277.930 ; gain = 30.516 ; free physical = 91262 ; free virtual = 1172182default:defaulth px? 
u

Phase %s%s
101*constraints2
3.8 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px? 
H
3Phase 3.8 Re-assign LUT pins | Checksum: 197c445f7
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:17 ; elapsed = 00:01:25 . Memory (MB): peak = 5277.930 ; gain = 30.516 ; free physical = 91265 ; free virtual = 1172212default:defaulth px? 
?

Phase %s%s
101*constraints2
3.9 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
S
>Phase 3.9 Pipeline Register Optimization | Checksum: bac17457
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:17 ; elapsed = 00:01:25 . Memory (MB): peak = 5277.930 ; gain = 30.516 ; free physical = 91275 ; free virtual = 1172322default:defaulth px? 
C
.Phase 3 Detail Placement | Checksum: bac17457
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:18 ; elapsed = 00:01:26 . Memory (MB): peak = 5277.930 ; gain = 30.516 ; free physical = 91275 ; free virtual = 1172322default:defaulth px? 
?

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px? 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
?

Phase %s%s
101*constraints2
4.1.1 2default:default2/
Post Placement Optimization2default:defaultZ18-101h px? 
U
@Post Placement Optimization Initialization | Checksum: e0b11884
*commonh px? 
u

Phase %s%s
101*constraints2
4.1.1.1 2default:default2"
BUFG Insertion2default:defaultZ18-101h px? 
?
2Processed net %s, inserted BUFG to drive %s loads.34*	placeflow2Q
=design_1_wrapper/design_1_i/axi32regs_0/inst/Wport_sys_resetp2default:default2
17532default:defaultZ46-35h px? 
?
Replicated bufg driver %s39*	placeflow2^
Jdesign_1_wrapper/design_1_i/axi32regs_0/inst/Wport_sys_resetp_reg_bufg_rep2default:defaultZ46-45h px? 
?
2Processed net %s, inserted BUFG to drive %s loads.34*	placeflow2S
?fpga_core_inst/fifo_rx_mqtt/adapter_inst/store_axis_int_to_temp2default:default2
12972default:defaultZ46-35h px? 
?
2Processed net %s, inserted BUFG to drive %s loads.34*	placeflow2[
Gfpga_core_inst/fifo_rx_mqtt/adapter_inst/m_axis_tdata_reg[1023]_i_1_n_02default:default2
12972default:defaultZ46-35h px? 
?
2Processed net %s, inserted BUFG to drive %s loads.34*	placeflow2Z
Ffpga_core_inst/fifo_tx_mqtt/fifo_inst/m_axis_pipe_reg[0][1200]_i_1_n_02default:default2
12012default:defaultZ46-35h px? 
?
2Processed net %s, inserted BUFG to drive %s loads.34*	placeflow2A
-fpga_core_inst/fifo_tx_mqtt/adapter_inst/E[0]2default:default2
12012default:defaultZ46-35h px? 
?
2Processed net %s, inserted BUFG to drive %s loads.34*	placeflow2X
Dfpga_core_inst/fifo_tx_mqtt/adapter_inst/temp_tkeep_reg[127]_i_1_n_02default:default2
11532default:defaultZ46-35h px? 
?
2Processed net %s, inserted BUFG to drive %s loads.34*	placeflow2H
4fpga_core_inst/mqtt_top_inst/le_inst/le_execute/E[0]2default:default2
10242default:defaultZ46-35h px? 
?
?BUFG insertion identified %s candidate nets. Inserted BUFG: %s, Replicated BUFG Driver: %s, Skipped due to Placement/Routing Conflicts: %s, Skipped due to Timing Degradation: %s, Skipped due to Illegal Netlist: %s.43*	placeflow2
72default:default2
72default:default2
12default:default2
02default:default2
02default:default2
02default:defaultZ46-56h px? 
H
3Phase 4.1.1.1 BUFG Insertion | Checksum: 13c92f2f5
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:35 ; elapsed = 00:01:31 . Memory (MB): peak = 5277.930 ; gain = 30.516 ; free physical = 91281 ; free virtual = 1172382default:defaulth px? 
?
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
1.8082default:defaultZ30-746h px? 
S
>Phase 4.1.1 Post Placement Optimization | Checksum: 1a210c048
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:35 ; elapsed = 00:01:32 . Memory (MB): peak = 5277.930 ; gain = 30.516 ; free physical = 91283 ; free virtual = 1172402default:defaulth px? 
N
9Phase 4.1 Post Commit Optimization | Checksum: 1a210c048
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:36 ; elapsed = 00:01:32 . Memory (MB): peak = 5277.930 ; gain = 30.516 ; free physical = 91283 ; free virtual = 1172402default:defaulth px? 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px? 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 1a210c048
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:36 ; elapsed = 00:01:32 . Memory (MB): peak = 5277.930 ; gain = 30.516 ; free physical = 91303 ; free virtual = 1172602default:defaulth px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.082default:default2
00:00:00.092default:default2
5277.9302default:default2
0.0002default:default2
912982default:default2
1172552default:defaultZ17-722h px? 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px? 
F
1Phase 4.3 Placer Reporting | Checksum: 23562f7f6
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:46 ; elapsed = 00:01:42 . Memory (MB): peak = 5277.930 ; gain = 30.516 ; free physical = 91303 ; free virtual = 1172602default:defaulth px? 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:002default:default2
5277.9302default:default2
0.0002default:default2
913032default:default2
1172602default:defaultZ17-722h px? 
M
8Phase 4.4 Final Placement Cleanup | Checksum: 1d4cd1536
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:46 ; elapsed = 00:01:42 . Memory (MB): peak = 5277.930 ; gain = 30.516 ; free physical = 91303 ; free virtual = 1172602default:defaulth px? 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 1d4cd1536
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:46 ; elapsed = 00:01:42 . Memory (MB): peak = 5277.930 ; gain = 30.516 ; free physical = 91303 ; free virtual = 1172602default:defaulth px? 
>
)Ending Placer Task | Checksum: 14d36456b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:46 ; elapsed = 00:01:42 . Memory (MB): peak = 5277.930 ; gain = 30.516 ; free physical = 91303 ; free virtual = 1172592default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
852default:default2
22default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
place_design: 2default:default2
00:03:532default:default2
00:01:482default:default2
5277.9302default:default2
30.5162default:default2
914672default:default2
1174232default:defaultZ17-722h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
5277.9302default:default2
0.0002default:default2
914672default:default2
1174242default:defaultZ17-722h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:042default:default2
00:00:012default:default2
5277.9302default:default2
0.0002default:default2
913912default:default2
1174012default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
r/home/koutarou/Desktop/mqtt/mqtt_mcube10fpga/MKUBOS-10GbE/MKUBOS-10GbE.runs/impl_1/xxv_ethernet_0_exdes_placed.dcp2default:defaultZ17-1381h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2&
write_checkpoint: 2default:default2
00:00:102default:default2
00:00:072default:default2
5277.9302default:default2
0.0002default:default2
914532default:default2
1174252default:defaultZ17-722h px? 
o
%s4*runtcl2S
?Executing : report_io -file xxv_ethernet_0_exdes_io_placed.rpt
2default:defaulth px? 
?
?report_io: Time (s): cpu = 00:00:00.22 ; elapsed = 00:00:00.34 . Memory (MB): peak = 5277.930 ; gain = 0.000 ; free physical = 91410 ; free virtual = 117383
*commonh px? 
?
%s4*runtcl2?
?Executing : report_utilization -file xxv_ethernet_0_exdes_utilization_placed.rpt -pb xxv_ethernet_0_exdes_utilization_placed.pb
2default:defaulth px? 
?
%s4*runtcl2p
\Executing : report_control_sets -verbose -file xxv_ethernet_0_exdes_control_sets_placed.rpt
2default:defaulth px? 
?
?report_control_sets: Time (s): cpu = 00:00:00.49 ; elapsed = 00:00:00.61 . Memory (MB): peak = 5277.930 ; gain = 0.000 ; free physical = 91450 ; free virtual = 117423
*commonh px? 


End Record