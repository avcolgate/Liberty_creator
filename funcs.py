import os
from classes import Path


def data_init(
        path_sta: str,
        path_input_lib: str,
        path_lef: str,
        path_verilog: str,
        path_netlist: str,
        dir_results: str,
        dir_tcl: str) -> tuple[Path]:
    try:
        type_ = 'file'
        name = 'OpenSTA'
        path = path_sta
        OPENSTA = Path(type_=type_, name=name, path=path)

        type_ = 'file'
        name = 'Input Library'
        path = path_input_lib
        LIBRARY = Path(type_=type_, name=name, path=path)

        type_ = 'file'
        name = 'LEF'
        path = path_lef
        LEF = Path(type_=type_, name=name, path=path)

        type_ = 'file'
        name = 'Verilog'
        path = path_verilog
        VERILOG = Path(type_=type_, name=name, path=path)

        type_ = 'file'
        name = 'Netlist'
        path = path_netlist
        NETLIST = Path(type_=type_, name=name, path=path)

        type_ = 'directory'
        name = 'Results'
        path = dir_results
        RESULTS = Path(type_=type_, name=name, path=path)

        type_ = 'directory'
        name = 'Tcl'
        path = dir_tcl
        TCL = Path(type_=type_, name=name, path=path)

    except NameError:
        print('data init step:\n\tfatal: %s %s is missing!\n\texiting' % (name, type_))
        exit()
    else:
        print('data init step:\n\tdata init success')
        return OPENSTA, LIBRARY, LEF, VERILOG, NETLIST, RESULTS, TCL


def clean_up_or_make(dir_name: str) -> None:
    if os.path.exists(dir_name) and os.path.isdir(dir_name):
        for f in os.listdir(dir_name):
            os.remove(os.path.join(dir_name, f))
    else:
        os.mkdir(dir_name)
