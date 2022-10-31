
set design_name lib_sample

set clocks {CLK}

set verilog_file ${design_name}/${design_name}.v

set netlist_file ${design_name}/${design_name}_netlist.v

set core_lib liberty/M125_M3_IO_tt_1.80_27.lib

set libs {liberty/sky130_fd_sc_hd__ss_n40C_1v60_ccsnoise.lib}

set tcl_dir tcl

set output_dir output