import os

from funcs import data_init, multirun, clean_up_or_make
from config import *

from lib_creator.get_inputs.main import get_module_name, get_module_inputs
from lib_creator.get_leakage.main import get_leakage
from lib_creator.get_size.main import get_size
from lib_creator.parse_templates.main import get_transitions
from lib_creator.make_tcl.main import make_tcl
from lib_merger.merger.main import merge_lib

data_init()

module_name = get_module_name(path_verilog)
module_inputs = get_module_inputs(path_verilog)
size = get_size(path_lef)
pin_transitions = get_transitions(path_input_lib)
clk_transitions = 'NaN' if not clocks else pin_transitions

make_tcl(module_name, module_inputs, clocks, pin_transitions, path_input_lib, dir_results, path_netlist)

multirun(clk_transitions, pin_transitions)

module_leakage = get_leakage("%s/%s_power.txt" % (dir_results, module_name))

merge_lib(dir_results, module_name)

clean_up_or_make(dir_name=dir_results, except_of=module_name+'.lib')
