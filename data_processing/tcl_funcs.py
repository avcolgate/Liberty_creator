from typing import List

def make_tcl(
    design_name: str,
    inputs: List[str],
    clock_names_arr: List[str],
    transitions: List[float],
    lib_arr: List[str],
    output_dir: str,
    netlist_path: str,
    temp_dir: str
    ) -> None:

    max_val = -1.0
    for ind in transitions:
        if float(ind) > max_val:
            max_val = float(ind)

    lib_arr = lib_arr.split(',')
    ports_arr = []
    clock_period = max_val * 4

    for input in inputs:
        if str(input) not in clock_names_arr:
            ports_arr.append(input)
    
    for name in clock_names_arr:
        if name not in inputs:
            print('fatal: no specified clock in design\n')
            exit()


    str_clocks = ' '.join(clock_names_arr)
    str_ports = ' '.join(ports_arr)

    clk_tran = '%clk%'
    pin_tran = '%pin%'

    output_tcl_name = temp_dir + '/temp.tcl'
    
    output_tcl = open(output_tcl_name , 'w')

    for lib_name in lib_arr:
        output_tcl.write('read_liberty %s\n' % lib_name.strip())

    output_tcl.write('read_verilog %s\n' % netlist_path)
    output_tcl.write('link_design %s\n\n' % design_name)
    
    
    for clk_num, clock in enumerate(clock_names_arr):
        output_tcl.write('create_clock -name %s -period %f [get_ports {%s}]\n' % (clock, clock_period, clock))

    output_tcl.write('set_input_transition %s [get_ports {%s}]\n' % (pin_tran, str_ports))

    output_tcl.write('report_power > "%s/%s_power.txt"\n\n' % (output_dir, design_name))

    if clock_names_arr:
        output_tcl.write('set_clock_transition %s [get_clocks {%s}]\n' % (clk_tran, str_clocks))
        output_tcl.write('write_timing_model %s/%s_clk_%s_pin_%s.lib\n\n' % (output_dir, design_name, clk_tran, pin_tran))
    else:
        output_tcl.write('write_timing_model %s/%s_clk_%s_pin_%s.lib\n\n' % (output_dir, design_name, 'NaN', pin_tran))

    output_tcl.write('exit\n')
