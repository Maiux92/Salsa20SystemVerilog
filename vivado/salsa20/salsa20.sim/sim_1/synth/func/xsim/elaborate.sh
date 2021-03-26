#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2020.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Fri Mar 19 00:37:39 CET 2021
# SW Build 3064766 on Wed Nov 18 09:12:47 MST 2020
#
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# elaborate design
echo "xelab -wto 9188e66cf7c443b38e5480d19e80ea73 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L uvm -L unisims_ver -L secureip --snapshot tb_Salsa20_ok_func_synth xil_defaultlib.tb_Salsa20_ok xil_defaultlib.glbl -log elaborate.log"
xelab -wto 9188e66cf7c443b38e5480d19e80ea73 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L uvm -L unisims_ver -L secureip --snapshot tb_Salsa20_ok_func_synth xil_defaultlib.tb_Salsa20_ok xil_defaultlib.glbl -log elaborate.log

