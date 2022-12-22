import sys

from inputs.parse_func import get_top_module, parse_body
from inputs.process_func import define_init_data
# from parse_func import get_top_module, parse_body
# from process_func import define_init_data

#*         0    1     2
#* AUTO:  PATH
#* MANUAL PATH -m MODULE_NAME

def get_module_inputs(init_data = []):
    init_data = init_data.split()
    
    # print('init_data for get_module_inputs(): %s\n' %init_data)
    input_arr = []
    path, specified_name = define_init_data(init_data)

    with open(file=path, mode='rt') as file:
        
        lines = file.read().split('\n')
        file.close()

        temp_module = get_top_module(lines, specified_name)

        module = parse_body(temp_module)

        # log_file = open(log_path, 'w')
        # module.print(log_file)

        # output_file = open(out_path, 'w')
        for pin in module.pins:
            if pin.direction == 'input':
                # output_file.write(pin.name + ' ')
                input_arr.append(pin.name)

    return module.name, input_arr


if __name__ == "__main__":
    print(get_module_inputs("v/spm.v"))
