import sys
from template.main import make_template

design_name = sys.argv[1]
inputs = sys.argv[2]
netlist_path = sys.argv[3]
liberty_path = sys.argv[4]
clock_names = sys.argv[5]
tcl_dir  = sys.argv[6]
out_dir = sys.argv[7]
transitions = sys.argv[8]

make_template(design_name, inputs, clock_names, transitions, liberty_path, tcl_dir, out_dir, netlist_path)
