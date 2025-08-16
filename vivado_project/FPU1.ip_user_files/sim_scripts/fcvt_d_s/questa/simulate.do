onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib fcvt_d_s_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {fcvt_d_s.udo}

run 1000ns

quit -force
