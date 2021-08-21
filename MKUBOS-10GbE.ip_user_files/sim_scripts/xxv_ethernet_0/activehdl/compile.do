vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/gtwizard_ultrascale_v1_7_6
vlib activehdl/xxv_ethernet_v3_0_0

vmap xilinx_vip activehdl/xilinx_vip
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap gtwizard_ultrascale_v1_7_6 activehdl/gtwizard_ultrascale_v1_7_6
vmap xxv_ethernet_v3_0_0 activehdl/xxv_ethernet_v3_0_0

vlog -work xilinx_vip  -sv2k12 "+incdir+/proj/cad/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"/proj/cad/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/proj/cad/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/proj/cad/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/proj/cad/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/proj/cad/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/proj/cad/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/proj/cad/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/proj/cad/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/proj/cad/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+/proj/cad/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"/proj/cad/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/proj/cad/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/proj/cad/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/proj/cad/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work gtwizard_ultrascale_v1_7_6  -v2k5 "+incdir+/proj/cad/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_bit_sync.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gte4_drp_arb.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_delay_powergood.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_delay_powergood.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe3_cpll_cal.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe3_cal_freqcnt.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cal_freqcnt.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cal_freqcnt.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_buffbypass_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_buffbypass_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_reset.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userclk_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userclk_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userdata_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userdata_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_reset_sync.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_reset_inv_sync.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+/proj/cad/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../MKUBOS-10GbE.srcs/sources_1/ip/xxv_ethernet_0/ip_0/sim/gtwizard_ultrascale_v1_7_gtye4_channel.v" \
"../../../../MKUBOS-10GbE.srcs/sources_1/ip/xxv_ethernet_0/ip_0/sim/xxv_ethernet_0_gt_gtye4_channel_wrapper.v" \
"../../../../MKUBOS-10GbE.srcs/sources_1/ip/xxv_ethernet_0/ip_0/sim/gtwizard_ultrascale_v1_7_gtye4_common.v" \
"../../../../MKUBOS-10GbE.srcs/sources_1/ip/xxv_ethernet_0/ip_0/sim/xxv_ethernet_0_gt_gtye4_common_wrapper.v" \
"../../../../MKUBOS-10GbE.srcs/sources_1/ip/xxv_ethernet_0/ip_0/sim/xxv_ethernet_0_gt_gtwizard_gtye4.v" \
"../../../../MKUBOS-10GbE.srcs/sources_1/ip/xxv_ethernet_0/ip_0/sim/xxv_ethernet_0_gt_gtwizard_top.v" \
"../../../../MKUBOS-10GbE.srcs/sources_1/ip/xxv_ethernet_0/ip_0/sim/xxv_ethernet_0_gt.v" \
"../../../../MKUBOS-10GbE.srcs/sources_1/ip/xxv_ethernet_0/xxv_ethernet_v3_0_0/xxv_ethernet_0_wrapper.v" \
"../../../../MKUBOS-10GbE.srcs/sources_1/ip/xxv_ethernet_0/xxv_ethernet_v3_0_0/xxv_ethernet_0_top.v" \
"../../../../MKUBOS-10GbE.srcs/sources_1/ip/xxv_ethernet_0/xxv_ethernet_v3_0_0/xxv_ethernet_0_ultrascale_rx_userclk.v" \
"../../../../MKUBOS-10GbE.srcs/sources_1/ip/xxv_ethernet_0/xxv_ethernet_v3_0_0/xxv_ethernet_0_ultrascale_tx_userclk.v" \

vlog -work xxv_ethernet_v3_0_0  -sv2k12 "+incdir+/proj/cad/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../ipstatic/ipshared/65bb/hdl/xxv_ethernet_v3_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+/proj/cad/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../MKUBOS-10GbE.srcs/sources_1/ip/xxv_ethernet_0/xxv_ethernet_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

