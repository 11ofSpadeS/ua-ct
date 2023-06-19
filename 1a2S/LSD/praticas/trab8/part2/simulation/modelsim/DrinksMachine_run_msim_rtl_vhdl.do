transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/ua-leci/1a2S/LSD/praticas/trab8/part2/DrinksFSM.vhd}
vcom -93 -work work {C:/ua-leci/1a2S/LSD/praticas/trab8/part2/ClkDividerN.vhd}

