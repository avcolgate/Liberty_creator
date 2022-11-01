import sys
import verilog_reader.inputs_parser as verilog_parser
from tcl_maker.make_tcl import make_tcl
from transition_getter.get_transition import get_net_transition

# print(sys.argv)

verilog_path = sys.argv[1]
netlist_path = sys.argv[2]
clock_names = sys.argv[3]
core_lib = sys.argv[4]
lib_arr = sys.argv[5]
tcl_dir  = sys.argv[6]
lib_dir = sys.argv[7]

design_name, inputs = verilog_parser.get_module_inputs(verilog_path)

# transitions = [0.0100, 0.0282, 0.0794, 0.2236, 0.6300, 0.7748, 5.0000]

transitions = get_net_transition(core_lib) #TODO: fix dir -> single file

for i in transitions:  # вывести в другой файл
    print(i)

make_tcl(design_name, inputs, clock_names, transitions, lib_arr, tcl_dir, lib_dir, netlist_path)
