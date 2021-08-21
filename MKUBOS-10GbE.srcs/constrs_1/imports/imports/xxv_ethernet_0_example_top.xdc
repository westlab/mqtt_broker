set_property PACKAGE_PIN AB34 [get_ports gt_refclk_p]
set_property PACKAGE_PIN A9 [get_ports rx_block_lock_led_0]
set_property PACKAGE_PIN A10 [get_ports rx_block_lock_led_1]
set_property PACKAGE_PIN B11 [get_ports rx_block_lock_led_2]
set_property PACKAGE_PIN B12 [get_ports rx_block_lock_led_3]
set_property IOSTANDARD LVCMOS33 [get_ports rx_block_lock_led_0]
set_property IOSTANDARD LVCMOS33 [get_ports rx_block_lock_led_1]
set_property IOSTANDARD LVCMOS33 [get_ports rx_block_lock_led_2]
set_property IOSTANDARD LVCMOS33 [get_ports rx_block_lock_led_3]
set_property PACKAGE_PIN B10 [get_ports rx_gt_locked_led_0]
set_property PACKAGE_PIN C10 [get_ports rx_gt_locked_led_1]
set_property PACKAGE_PIN C11 [get_ports rx_gt_locked_led_2]
set_property PACKAGE_PIN D11 [get_ports rx_gt_locked_led_3]
set_property IOSTANDARD LVCMOS33 [get_ports rx_gt_locked_led_0]
set_property IOSTANDARD LVCMOS33 [get_ports rx_gt_locked_led_1]
set_property IOSTANDARD LVCMOS33 [get_ports rx_gt_locked_led_2]
set_property IOSTANDARD LVCMOS33 [get_ports rx_gt_locked_led_3]

set_false_path -from [get_clocks -of_objects [get_pins {DUT/inst/i_xxv_ethernet_0_gt/inst/gen_gtwizard_gtye4_top.xxv_ethernet_0_gt_gtwizard_gtye4_inst/gen_gtwizard_gtye4.gen_channel_container[1].gen_enabled_channel.gtye4_channel_wrapper_inst/channel_inst/gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST/RXOUTCLK}]] -to [get_clocks -of_objects [get_pins design_1_wrapper/design_1_i/clk_wiz_0/inst/mmcme4_adv_inst/CLKOUT0]]
set_false_path -from [get_clocks -of_objects [get_pins {DUT/inst/i_xxv_ethernet_0_gt/inst/gen_gtwizard_gtye4_top.xxv_ethernet_0_gt_gtwizard_gtye4_inst/gen_gtwizard_gtye4.gen_channel_container[1].gen_enabled_channel.gtye4_channel_wrapper_inst/channel_inst/gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST/TXOUTCLK}]] -to [get_clocks -of_objects [get_pins design_1_wrapper/design_1_i/clk_wiz_0/inst/mmcme4_adv_inst/CLKOUT0]]
set_false_path -from [get_clocks -of_objects [get_pins design_1_wrapper/design_1_i/clk_wiz_0/inst/mmcme4_adv_inst/CLKOUT0]] -to [get_clocks -of_objects [get_pins {DUT/inst/i_xxv_ethernet_0_gt/inst/gen_gtwizard_gtye4_top.xxv_ethernet_0_gt_gtwizard_gtye4_inst/gen_gtwizard_gtye4.gen_channel_container[1].gen_enabled_channel.gtye4_channel_wrapper_inst/channel_inst/gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST/RXOUTCLK}]]
set_false_path -from [get_clocks -of_objects [get_pins design_1_wrapper/design_1_i/clk_wiz_0/inst/mmcme4_adv_inst/CLKOUT0]] -to [get_clocks -of_objects [get_pins {DUT/inst/i_xxv_ethernet_0_gt/inst/gen_gtwizard_gtye4_top.xxv_ethernet_0_gt_gtwizard_gtye4_inst/gen_gtwizard_gtye4.gen_channel_container[1].gen_enabled_channel.gtye4_channel_wrapper_inst/channel_inst/gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST/TXOUTCLK}]]


