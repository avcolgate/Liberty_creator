
set sta_path /home/avcolgate/OpenSTA/app/sta
set make_tcl_path lib_creator/make_tcl.py
set get_trans_path lib_creator/get_trans.py

set liberty_path liberty/nom_1.65V_25C/CORELIB8DLL.lib
# set liberty_path liberty/sky130_fd_sc_hd__ss_n40C_1v60_ccsnoise.lib

set design_name lib_sample
set clocks {CLK}

set verilog_file ${design_name}/${design_name}.v
set netlist_file ${design_name}/${design_name}_netlist_mikron.v
# set netlist_file ${design_name}/${design_name}_netlist_sky130.v

set tcl_dir .tcl
set output_dir output
