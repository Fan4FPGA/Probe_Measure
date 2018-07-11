onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /Plastic_tb/Plastic/clk
add wave -noupdate /Plastic_tb/Plastic/rst_n
add wave -noupdate -height 25 /Plastic_tb/Plastic/probe_in
add wave -noupdate /Plastic_tb/Plastic/is_long_probe
add wave -noupdate /Plastic_tb/Plastic/COL
add wave -noupdate /Plastic_tb/Plastic/probe_stat
add wave -noupdate /Plastic_tb/Plastic/probe_out
add wave -noupdate /Plastic_tb/Plastic/probe_in_r
add wave -noupdate /Plastic_tb/Plastic/probe_out_r
add wave -noupdate -radix decimal /Plastic_tb/Plastic/refcnt
add wave -noupdate /Plastic_tb/Plastic/Start
add wave -noupdate /Plastic_tb/Plastic/mark
add wave -noupdate -radix decimal /Plastic_tb/Plastic/width
add wave -noupdate -radix decimal /Plastic_tb/Plastic/mark_width
add wave -noupdate /Plastic_tb/Plastic/WaterErr_R
add wave -noupdate /Plastic_tb/Plastic/WaterErr_R_D
add wave -noupdate /Plastic_tb/Plastic/WaterErr
add wave -noupdate /Plastic_tb/Plastic/RemberCol
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {22798000 ps} 0}
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {64050 ns}
