from funcs import data_init, multirun, clean_up_or_make
from config import *

from data_processing.verilog_funcs import get_module_params
from data_processing.leakage_funcs import get_leakage
from data_processing.lef_funcs import get_size
from data_processing.lib_funcs import get_transitions
from data_processing.tcl_funcs import make_tcl
from file_merging.merge_funcs import merge_lib

data_init()

module_name, module_inputs = get_module_params(path_verilog)
module_size = get_size(path_lef)
pin_transitions = get_transitions(path_input_lib)
clk_transitions = ['NaN'] if not clocks else pin_transitions

make_tcl(module_name, module_inputs, clocks, pin_transitions, path_input_lib, dir_results, path_netlist, dir_temp)

multirun(clk_transitions, pin_transitions, dir_temp)

module_leakage = get_leakage("%s/%s_power.txt" % (dir_results, module_name))

merge_lib(data_from=dir_results, data_to=dir_results, module_name=module_name, size=module_size, leakage=module_leakage)

clean_up_or_make(dir_name=dir_results, except_of=module_name+'.lib')
