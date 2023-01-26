from config import *
import os

from lib_creator.inputs.main import get_module_name, get_module_inputs
from lib_creator.size.main import get_size
from lib_creator.transition.main import get_net_transition
from lib_creator.template.main import make_template

from lib_merger.merger.main import merge_lib

clean_up_or_make(results_dir)
clean_up_or_make(tcl_dir)

#TODO check if files are missing

module_name = get_module_name(verilog_file)

module_inputs = get_module_inputs(verilog_file)

size = get_size(lef_path)

#TODO: check if tr not found
pin_transitions = get_net_transition(liberty_path)

make_template(module_name, module_inputs, clocks, pin_transitions, liberty_path, tcl_dir, results_dir, netlist_file, temp_tcl_name)

clk_transition = 'NaN' if not clocks else pin_transitions

temp_tcl_path = tcl_dir + '/' + temp_tcl_name + '.tcl'

for clk_t in clk_transition:
    for pin_t in pin_transitions:
        with open(file = temp_tcl_path, mode='rt') as file:
            text = file.read()
            text = text.replace('%pin%', str(pin_t))
            text = text.replace('%clk%', str(clk_t))
            exec_path = tcl_dir + '/make_lib_clk_%s_pin_%s.tcl' % (clk_t, pin_t)
            with open(file = exec_path, mode = "w") as file_out:
                file_out.write(text)

            cmd = sta_path + ' -no_splash ' + exec_path
            os.system(cmd)
            os.remove(exec_path)

            print('ready: clk_%s_pin_%s' % (clk_t, pin_t))
os.remove(temp_tcl_path)

merge_lib(results_dir)