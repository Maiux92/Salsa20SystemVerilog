rm -rf src
mkdir -p src/tb
mkdir -p src/rtl

cp vivado/salsa20/salsa20.srcs/sources_1/new/*.sv src/rtl/
cp vivado/salsa20/salsa20.srcs/sim_1/new/*.sv src/tb/
cp vivado/salsa20/salsa20.srcs/constrs_1/new/timing.xdc src/
