from funcs import data_init, multirun, clean_up_or_make
from config import *

from lib_creator.verilog_reader.verilog_funcs import get_module_params
from lib_creator.leakage_reader.leakage_funcs import get_leakage
from lib_creator.lef_reader.lef_funcs import get_size
from lib_creator.lib_reader.lib_funcs import get_transitions
from lib_creator.tcl_maker.tcl_funcs import make_tcl
from lib_merger.main import merge_lib

data_init()

module_name, module_inputs = get_module_params(path_verilog)
module_size = get_size(path_lef)
pin_transitions = get_transitions(path_input_lib)
clk_transitions = ['NaN'] if not clocks else pin_transitions

make_tcl(module_name, module_inputs, clocks, pin_transitions, path_input_lib, dir_results, path_netlist)

multirun(clk_transitions, pin_transitions)

module_leakage = get_leakage("%s/%s_power.txt" % (dir_results, module_name))

merge_lib(data_from=dir_results, data_to=dir_results, module_name=module_name, size=module_size, leakage=module_leakage)

clean_up_or_make(dir_name=dir_results, except_of=module_name+'.lib')
