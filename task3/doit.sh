rm -rf obj_dir
rm -f sigdelay.vcd

verilator --cc counter.sv
verilator --cc ram.sv
verilator -Wall --cc --trace sigdelay.sv --exe sigdelay_tb.cpp 

make -j -C obj_dir/ -f Vsigdelay.mk Vsigdelay

obj_dir/Vsigdelay

# use source ./doit.sh to run