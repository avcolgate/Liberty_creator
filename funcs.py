import os
from typing import List

from classes import Path
from config import path_input_lib, path_lef, path_netlist, path_sta, path_verilog, tcl_dir, results_dir


STA = Path(type='file', name='OpenSTA', path=path_sta, is_critical=True)
LIB = Path(type='file', name='Input Library', path=path_input_lib, is_critical=True)
LEF = Path(type='file', name='LEF', path=path_lef, is_critical=False)
VERILOG = Path(type='file', name='Verilog', path=path_verilog, is_critical=True)
NETLIST = Path(type='file', name='Netlist', path=path_netlist, is_critical=True)
RESULTS = Path(type='directory', name='Results', path=results_dir, is_critical=True)
TCL = Path(type='directory', name='Tcl', path=tcl_dir, is_critical=True)


def clean_up_or_make(dir: str) -> None:
    if os.path.exists(dir) and os.path.isdir(dir):
        for f in os.listdir(dir):
            os.remove(os.path.join(dir, f))
    else: 
        os.mkdir(dir)

def data_check(data_list: List[Path]) -> None:
    for p in data_list:
        if not os.path.exists(p.path):
            if p.is_critical:
                print('fatal: %s %s is missing!' % (p.name, p.type))
                exit()
            else:
                print('warning: %s %s is missing!' % (p.name, p.type))