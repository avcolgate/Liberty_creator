
set sta_path /home/avcolgate/OpenSTA/app/sta
set script_path lib_creator/main.py
set liberty_path liberty/nom_1.65V_25C/CORELIB8DLL.lib

set design_name lib_sample
set clocks {CLK}

set verilog_file ${design_name}/${design_name}.v
set netlist_file ${design_name}/${design_name}_netlist.v

set tcl_dir .tcl
set output_dir output
