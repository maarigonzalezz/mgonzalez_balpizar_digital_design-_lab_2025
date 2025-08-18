transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/gonza/Desktop/lab1 taller/mgonzalez_balpizar_digital_design-_lab_2025/Pregunta 2/full_adder.vhd}
vcom -93 -work work {C:/Users/gonza/Desktop/lab1 taller/mgonzalez_balpizar_digital_design-_lab_2025/Pregunta 2/display_7seg.vhd}
vcom -93 -work work {C:/Users/gonza/Desktop/lab1 taller/mgonzalez_balpizar_digital_design-_lab_2025/Pregunta 2/subtractor_1bit.vhd}
vcom -93 -work work {C:/Users/gonza/Desktop/lab1 taller/mgonzalez_balpizar_digital_design-_lab_2025/Pregunta 2/subtractor_4bit.vhd}
vcom -93 -work work {C:/Users/gonza/Desktop/lab1 taller/mgonzalez_balpizar_digital_design-_lab_2025/Pregunta 2/top_subtractor_fpga.vhd}

vcom -93 -work work {C:/Users/gonza/Desktop/lab1 taller/mgonzalez_balpizar_digital_design-_lab_2025/Pregunta 2/tb_top_subtractor_fpga.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  tb_top_subtractor_fpga

add wave *
view structure
view signals
run -all
