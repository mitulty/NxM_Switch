BSC = bsc
FILE = Tb
TOP_LEVEL = Tb
FLAGS = -keep-fires -aggressive-conditions

clean:
	@rm -rf *.bi *.bo *.ba mk*.c mk*.h mk*.o mk*.v *_c *_v *.vcd *~ *.fsdb *.log model_* *.so *.cxx
	@rm -rf $(TOP_LEVEL)


verilog: clean
	mkdir -p build_verilog verilog_dir
	$(BSC) -u -verilog $(FLAGS) -vdir verilog_dir -bdir build_verilog -info-dir build_verilog -keep-fires -no-warn-action-shadowing $(FILE).bsv 

bluesim: clean 
	$(BSC) -u -sim $(FLAGS) $(FILE).bsv
	$(BSC) -sim -o $(TOP_LEVEL) -e mk$(TOP_LEVEL) mk$(TOP_LEVEL).ba

run:
	./$(TOP_LEVEL)	