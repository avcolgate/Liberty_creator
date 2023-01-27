import os

from funcs import STA, LIB, LEF, VERILOG, NETLIST, RESULTS, TCL, clean_up_or_make, data_check
from config import clocks

from lib_creator.get_inputs.main import get_module_name, get_module_inputs
from lib_creator.get_size.main import get_size
from lib_creator.get_transition.main import get_net_transition
from lib_creator.make_template.main import make_template
from lib_merger.merger.main import merge_lib

data_check(data_list=[STA, LIB, LEF, VERILOG, NETLIST, RESULTS, TCL])

clean_up_or_make(RESULTS.path)
clean_up_or_make(TCL.path)

module_name = get_module_name(VERILOG.path)
module_inputs = get_module_inputs(VERILOG.path)

if os.path.exists(LEF.path):
    size = get_size(LEF.path)

#TODO: check if tr not found
pin_transitions = get_net_transition(LIB.path)

make_template(module_name, module_inputs, clocks, pin_transitions, LIB.path, TCL.path, RESULTS.path, NETLIST.path)

clk_transition = 'NaN' if not clocks else pin_transitions

temp_tcl_path = TCL.path + '/temp.tcl'

for clk_t in clk_transition:
    for pin_t in pin_transitions:
        with open(file = temp_tcl_path, mode='rt') as file:
            text = file.read()
            text = text.replace('%pin%', str(pin_t))
            text = text.replace('%clk%', str(clk_t))
            exec_path = TCL.path + '/make_lib_clk_%s_pin_%s.tcl' % (clk_t, pin_t)
            with open(file = exec_path, mode = "w") as file_out:
                file_out.write(text)

            cmd = STA.path + ' -no_splash ' + exec_path
            os.system(cmd)
            os.remove(exec_path)

            print('ready: clk_%s_pin_%s' % (clk_t, pin_t))
os.remove(temp_tcl_path)

merge_lib(RESULTS.path)