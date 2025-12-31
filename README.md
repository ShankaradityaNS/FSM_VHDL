Steps to run the script using GHDL and to view the output waveform on GTKWave-
1) ghdl -a FSM_Script.vhdl
2) ghdl -a FSM_TB.vhdl
3) ghdl -e FSM_TB
4) ghdl -r FSM_TB --wave=test_waveform.ghw --stop-time=1sec
