connect -url tcp:127.0.0.1:3121
source C:/Users/ronal/Documents/ECE527MPs/final_project/final_project/final_project.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Xilinx HW-FTDI-TEST FT2232H 1234-tulA"} -index 0
loadhw -hw C:/Users/ronal/Documents/ECE527MPs/final_project/final_project/final_project.sdk/design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Xilinx HW-FTDI-TEST FT2232H 1234-tulA"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Xilinx HW-FTDI-TEST FT2232H 1234-tulA"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Xilinx HW-FTDI-TEST FT2232H 1234-tulA"} -index 0
dow C:/Users/ronal/Documents/ECE527MPs/final_project/final_project/final_project.sdk/final_project/Debug/final_project.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Xilinx HW-FTDI-TEST FT2232H 1234-tulA"} -index 0
con
