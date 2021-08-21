onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib topic_blk_mem_gen_0_opt

do {wave.do}

view wave
view structure
view signals

do {topic_blk_mem_gen_0.udo}

run -all

quit -force
