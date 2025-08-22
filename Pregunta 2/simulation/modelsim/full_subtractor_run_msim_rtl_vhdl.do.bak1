transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/space/Desktop/Brayan/Taller_Digitales/Taller_1/Pregunta 3/full_adder.vhd}
vcom -93 -work work {C:/Users/space/Desktop/Brayan/Taller_Digitales/Taller_1/Pregunta 3/subtractor_1bit.vhd}
vcom -93 -work work {C:/Users/space/Desktop/Brayan/Taller_Digitales/Taller_1/Pregunta 3/subtractor_4bit.vhd}

vcom -93 -work work {C:/Users/space/Desktop/Brayan/Taller_Digitales/Taller_1/Pregunta 3/tb_subtractor.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  tb_subtractor

add wave *
view structure
view signals
run -all
