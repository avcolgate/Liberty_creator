import os
from classes import Path
from config import *
from lib_creator.get_inputs.process_func import is_good_name

def data_init() -> tuple[Path]:

    # design name and clock check
    try:
        if not is_good_name(design_name):
            print('data init step:\n\tfatal: design_name is bad name!\n\texiting')
            exit()
    except NameError:
        print('data init step:\n\tfatal: design_name is not defined in config.py!\n\texiting')
        exit()
        
    try:
        for clk in clocks:
            if not is_good_name(clk):
                print('data init step:\n\tfatal: %s is bad clock name!\n\texiting' % clk)
                exit()
    except NameError:
        print('data init step:\n\tfatal: clock list is not defined in config.py! set empty list if no clocks in design\n\texiting')
        exit()

    # paths check
    try:
        if not os.path.exists(path_opensta):
            print('data init step:\n\tfatal: %s does not exist!\n\texiting' % path_opensta)
            exit()
    except NameError:
        print('data init step:\n\tfatal: path_opensta is not defined in config.py!\n\texiting')
        exit()

    try:
        if not os.path.exists(path_input_lib):
            print('data init step:\n\tfatal: %s does not exist!\n\texiting' % path_input_lib)
            exit()
    except NameError:
        print('data init step:\n\tfatal: path_input_lib is not defined in config.py!\n\texiting')
        exit()

    try:
        if not os.path.exists(path_lef):
            print('data init step:\n\tfatal: %s does not exist!\n\texiting' % path_lef)
            exit()
    except NameError:
        print('data init step:\n\tfatal: path_lef is not defined in config.py!\n\texiting')
        exit()

    try:
        if not os.path.exists(path_verilog):
            print('data init step:\n\tfatal: %s does not exist!\n\texiting' % path_verilog)
            exit()
    except NameError:
        print('data init step:\n\tfatal: path_verilog is not defined in config.py!\n\texiting')
        exit()
    
    try:
        if not os.path.exists(path_netlist):
            print('data init step:\n\tfatal: %s does not exist!\n\texiting' % path_netlist)
            exit()
    except NameError:
        print('data init step:\n\tfatal: path_netlist is not defined in config.py!\n\texiting')
        exit()

    # directories check
    try:
        clean_up_or_make(dir_results)
    except NameError:
        print('data init step:\n\tfatal: dir_results is not defined in config.py!\n\texiting')
        exit()

    try:
        clean_up_or_make(dir_tcl)
    except NameError:
        print('data init step:\n\tfatal: dir_tcl is not defined in config.py!\n\texiting')
        exit()


def clean_up_or_make(dir_name: str) -> None:
    if os.path.exists(dir_name) and os.path.isdir(dir_name):
        for f in os.listdir(dir_name):
            os.remove(os.path.join(dir_name, f))
    else:
        os.mkdir(dir_name)
