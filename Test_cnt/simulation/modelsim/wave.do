onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /test_cnt/CARRY
add wave -noupdate /test_cnt/CLR_L
add wave -noupdate /test_cnt/DIN
add wave -noupdate /test_cnt/DOUT
add wave -noupdate /test_cnt/EN_L
add wave -noupdate /test_cnt/LD_L
add wave -noupdate /test_cnt/MCK
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {1 ns}
