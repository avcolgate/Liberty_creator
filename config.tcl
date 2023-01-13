
set sta_path /home/avcolgate/OpenSTA/app/sta
set make_template_path lib_creator/make_template.py
set get_trans_path lib_creator/get_trans.py
# set merge_lib_path lib_creator/merge_lib.py
set get_leakage_path lib_creator/get_leakage.py
set get_size_path lib_creator/get_size.py
set get_inputs_path lib_creator/get_inputs.py
set get_module_name_path lib_creator/get_module_name.py

set liberty_path tests/data/source/liberty/nom_1.65V_25C/CORELIB8DLL.lib

set design_name lib_sample
#TODO попробовать убрать

# case-sensitive (set empty if no clocks in design)
set clocks {CLK}

set lef_path tests/data/source/${design_name}/${design_name}.lef
set verilog_file tests/data/source/${design_name}/${design_name}.v
set netlist_file tests/data/source/${design_name}/${design_name}_netlist_mikron.v

set tcl_dir .tcl
set output_dir tests/data/results/${design_name}/
