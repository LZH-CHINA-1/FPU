onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib floating_point_mul_s_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {floating_point_mul_s.udo}

run 1000ns

quit -force
