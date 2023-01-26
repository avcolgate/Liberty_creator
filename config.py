import os

sta_path = '/home/avcolgate/OpenSTA/app/sta'
make_template_path = 'lib_creator/make_template.py'
get_trans_path = 'lib_creator/get_trans.py'
merge_lib_path = 'lib_merger/merge_lib.py'
get_leakage_path = 'lib_creator/get_leakage.py'
get_size_path = 'lib_creator/get_size.py'
get_inputs_path = 'lib_creator/get_inputs.py'
get_module_name_path = 'lib_creator/get_module_name.py'

liberty_path = 'tests/data/source/liberty/nom_1.65V_25C/CORELIB8DLL.lib'
# set liberty_path 'tests/data/source/liberty/sky130_fd_sc_hd__ss_n40C_1v60_ccsnoise.lib'

design_name = 'lib_sample'
#TODO попробовать убрать

# case-sensitive (set empty if no clocks in design)
clocks = ['CLK']

lef_path = 'tests/data/source/%s/%s.lef' % (design_name, design_name)
verilog_file = 'tests/data/source/%s/%s.v' % (design_name, design_name)
netlist_file = 'tests/data/source/%s/%s_netlist_mikron.v' % (design_name, design_name)
tcl_dir = '.tcl'
results_dir = 'tests/data/results/%s' % design_name
temp_tcl_name = 'temp'


def clean_up_or_make(dir: str) -> None:
    if os.path.exists(dir) and os.path.isdir(dir):
        for f in os.listdir(dir):
            os.remove(os.path.join(dir, f))
    else: 
        os.mkdir(dir)

def clean_up(dir: str) -> None:
    if os.path.exists(dir) and os.path.isdir(dir):
        for f in os.listdir(dir):
            os.remove(os.path.join(dir, f))