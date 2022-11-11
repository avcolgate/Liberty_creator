import sys
import verilog_reader.inputs_parser as verilog_parser
from tcl_maker.make_tcl import make_tcl

# print(sys.argv)

verilog_path = sys.argv[1]
netlist_path = sys.argv[2]
liberty_path = sys.argv[3]
clock_names = sys.argv[4]
tcl_dir  = sys.argv[5]
out_dir = sys.argv[6]
transitions = sys.argv[7]

design_name, inputs = verilog_parser.get_module_inputs(verilog_path)

make_tcl(design_name, inputs, clock_names, transitions, liberty_path, tcl_dir, out_dir, netlist_path)
