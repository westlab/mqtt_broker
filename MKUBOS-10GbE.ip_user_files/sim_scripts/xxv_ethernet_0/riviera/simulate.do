onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+xxv_ethernet_0 -L xilinx_vip -L xil_defaultlib -L xpm -L gtwizard_ultrascale_v1_7_6 -L xxv_ethernet_v3_0_0 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.xxv_ethernet_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {xxv_ethernet_0.udo}

run -all

endsim

quit -force
