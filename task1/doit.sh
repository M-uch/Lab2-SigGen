rm -rf obj_dir
rm -f sinegen.vcd

verilator --cc counter.sv
verilator --cc rom.sv
verilator -Wall --cc --trace sinegen.sv --exe sinegen_tb.cpp 

make -j -C obj_dir/ -f Vsinegen.mk Vsinegen

obj_dir/Vsinegen

# use source ./doit.sh to run