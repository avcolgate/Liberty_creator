from file_merging.logic import Liberty
import os
import re

def data_load(data_dir: str) -> list:
    data_files = list()
    data = list()
    temp_data = os.listdir(data_dir)

    for t_file in temp_data:
        name, ext = os.path.splitext(t_file)
        if ext != '.lib':
            continue

        clk, clk_val, pin, pin_val = name[name.find('clk'):].split('_')
        if clk_val == 'NaN':
            data.append(t_file)
        else:
            if clk_val == pin_val:
                data.append(t_file)

    for count, file in enumerate(data):
        lib = Liberty.load(data_dir + '/' + data[count])
        data_files.append(lib)

    input_net_transitions = []

    for file in temp_data:
        if re.search('.lib', file):
            input_net_transitions.append(tuple(re.findall("\d+\.\d+", file)))

    return data_files, input_net_transitions
def data_load_legacy(data_dir):
    data_files = []
    data = os.listdir(data_dir)

    for count, file in enumerate(data):
        lib = Liberty.load(data_dir + '/' + data[count])
        data_files.append(lib)
    return data_files

