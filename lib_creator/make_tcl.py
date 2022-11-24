import sys
import verilog_reader.main as verilog_reader
import tcl_maker.main as tcl_maker

verilog_path = sys.argv[1]
netlist_path = sys.argv[2]
liberty_path = sys.argv[3]
clock_names = sys.argv[4]
tcl_dir  = sys.argv[5]
out_dir = sys.argv[6]
transitions = sys.argv[7]

design_name, inputs = verilog_reader.get_module_inputs(verilog_path)

tcl_maker.make_tcl(design_name, inputs, clock_names, transitions, liberty_path, tcl_dir, out_dir, netlist_path)
