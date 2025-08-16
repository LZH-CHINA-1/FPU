onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib fmsub_double_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {fmsub_double.udo}

run 1000ns

quit -force
