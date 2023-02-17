from lib_merger import bus_funcs
from lib_merger import pin_funcs
from lib_merger import misc_funcs
from lib_merger import axis_funcs
from copy import deepcopy

def merge_lib(data_from: str, data_to: str, module_name: str, module_size: float, module_leakage: float):
    data_files, net_transitions = misc_funcs.data_load(data_from)
    data_template = deepcopy(data_files[0])

    cell_name = next(iter(data_template.cell.keys()))

    bus_data = bus_funcs.final_bus_data(data_files)
    pin_data = pin_funcs.final_pin_data(data_files)

    data_template.cell[cell_name].pin = ''
    data_template.cell[cell_name].bus = ''

    data_template.cell[cell_name].pin = pin_data.pin
    data_template.cell[cell_name].bus = bus_data.bus
    axis_funcs.add_axis(data_template, net_transitions)

    with open(data_to + '/' + module_name + '.lib', 'w', encoding='utf-8') as final_solution:
        data_template.dump(final_solution, '')

    return 1
