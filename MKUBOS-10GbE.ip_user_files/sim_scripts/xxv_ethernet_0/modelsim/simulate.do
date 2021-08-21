onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xilinx_vip -L xil_defaultlib -L xpm -L gtwizard_ultrascale_v1_7_6 -L xxv_ethernet_v3_0_0 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.xxv_ethernet_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {xxv_ethernet_0.udo}

run -all

quit -force
