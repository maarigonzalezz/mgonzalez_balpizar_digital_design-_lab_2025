transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/gonza/Desktop/lab1\ taller/mgonzalez_balpizar_digital_design-_lab_2025/Pregunta\ 3 {C:/Users/gonza/Desktop/lab1 taller/mgonzalez_balpizar_digital_design-_lab_2025/Pregunta 3/Contador_Parametrizado.sv}
vlog -sv -work work +incdir+C:/Users/gonza/Desktop/lab1\ taller/mgonzalez_balpizar_digital_design-_lab_2025/Pregunta\ 3 {C:/Users/gonza/Desktop/lab1 taller/mgonzalez_balpizar_digital_design-_lab_2025/Pregunta 3/Debounce.sv}
vlog -sv -work work +incdir+C:/Users/gonza/Desktop/lab1\ taller/mgonzalez_balpizar_digital_design-_lab_2025/Pregunta\ 3 {C:/Users/gonza/Desktop/lab1 taller/mgonzalez_balpizar_digital_design-_lab_2025/Pregunta 3/BinTo7Seg.sv}

vlog -sv -work work +incdir+C:/Users/gonza/Desktop/lab1\ taller/mgonzalez_balpizar_digital_design-_lab_2025/Pregunta\ 3 {C:/Users/gonza/Desktop/lab1 taller/mgonzalez_balpizar_digital_design-_lab_2025/Pregunta 3/Contador_Parametrizado_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  Contador_Parametrizado_tb

add wave *
view structure
view signals
run -all
