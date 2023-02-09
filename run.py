import os

from funcs import clean_up_or_make, data_init
from config import *

from lib_creator.get_inputs.main import get_module_name, get_module_inputs
from lib_creator.get_leakage.main import get_leakage
from lib_creator.get_size.main import get_size
from lib_creator.parse_templates.main import get_transitions
from lib_creator.make_tcl.main import make_tcl
from lib_merger.merger.main import merge_lib

OPENSTA, LIBRARY, LEF, VERILOG, NETLIST, RESULTS, TCL = data_init(path_opensta, path_input_lib, path_lef,
                                                                  path_verilog, path_netlist, dir_results, dir_tcl)

clean_up_or_make(RESULTS.path)
clean_up_or_make(TCL.path)

module_name = get_module_name(VERILOG.path)
module_inputs = get_module_inputs(VERILOG.path)
size = get_size(LEF.path)
pin_transitions = get_transitions(LIBRARY.path)

make_tcl(module_name, module_inputs, clocks, pin_transitions, LIBRARY.path, TCL.path, RESULTS.path, NETLIST.path)

clk_transition = 'NaN' if not clocks else pin_transitions

temp_tcl_path = TCL.path + '/temp.tcl'

for clk_t in clk_transition:
    for pin_t in pin_transitions:
        with open(file=temp_tcl_path, mode='rt') as file:
            text = file.read()
            text = text.replace('%pin%', str(pin_t))
            text = text.replace('%clk%', str(clk_t))
            exec_path = TCL.path + '/make_lib_clk_%s_pin_%s.tcl' % (clk_t, pin_t)
            with open(file=exec_path, mode="w") as file_out:
                file_out.write(text)

            cmd = OPENSTA.path + ' -no_splash ' + exec_path
            os.system(cmd)
            os.remove(exec_path)

            print('ready: clk_%s_pin_%s' % (clk_t, pin_t))
os.remove(temp_tcl_path)

module_leakage = get_leakage("%s/%s_power.txt" % (RESULTS.path, module_name))

merge_lib(RESULTS.path)
