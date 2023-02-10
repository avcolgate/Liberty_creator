import os

from funcs import data_init
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

make_tcl(module_name, module_inputs, clocks, pin_transitions, path_input_lib, dir_tcl, dir_results, path_netlist)

clk_transition = 'NaN' if not clocks else pin_transitions

temp_tcl_path = dir_tcl + '/temp.tcl'

for clk_t in clk_transition:
    for pin_t in pin_transitions:
        with open(file=temp_tcl_path, mode='rt') as file:
            text = file.read()
            text = text.replace('%pin%', str(pin_t))
            text = text.replace('%clk%', str(clk_t))
            exec_path = dir_tcl + '/make_lib_clk_%s_pin_%s.tcl' % (clk_t, pin_t)
            with open(file=exec_path, mode="w") as file_out:
                file_out.write(text)

            cmd = path_opensta + ' -no_splash ' + exec_path
            os.system(cmd)
            os.remove(exec_path)

            print('ready: clk_%s_pin_%s' % (clk_t, pin_t))
os.remove(temp_tcl_path)

module_leakage = get_leakage("%s/%s_power.txt" % (dir_results, module_name))

merge_lib(dir_results)
