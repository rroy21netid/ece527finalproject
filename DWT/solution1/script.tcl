############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project DWT
set_top DWT_Accel
add_files DWT/DWT_Accel.c
add_files DWT/DWT_Accel.h
add_files accelerator.cpp
add_files -tb DWT/DWT_Accel_TB.c -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020-clg400-1} -tool vivado
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
source "./DWT/solution1/directives.tcl"
csim_design -clean -setup
csynth_design
cosim_design
export_design -flow syn -rtl verilog -format ip_catalog
