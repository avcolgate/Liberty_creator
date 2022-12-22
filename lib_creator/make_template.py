import sys
from inputs.main import get_module_inputs
from template.main import make_template

verilog_path = sys.argv[1]
netlist_path = sys.argv[2]
liberty_path = sys.argv[3]
clock_names = sys.argv[4]
tcl_dir  = sys.argv[5]
out_dir = sys.argv[6]
transitions = sys.argv[7]

design_name, inputs = get_module_inputs(verilog_path)

make_template(design_name, inputs, clock_names, transitions, liberty_path, tcl_dir, out_dir, netlist_path)
