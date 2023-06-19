transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/ua-leci/1a2S/LSD/praticas/trab7/part2/Counter_Up_Down.vhd}

