############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project sha256_acc2
set_top sha256
add_files sha256.c
add_files sha256.h
add_files sha256_impl.c
add_files sha256_impl.h
add_files sha256.c
add_files sha256.h
add_files sha256_impl.c
add_files sha256_impl.h
add_files -tb sha256_tb.c
add_files -tb sha256_tb.c
open_solution "acc256"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 10 -name default
#source "./sha256_acc2/acc256/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
