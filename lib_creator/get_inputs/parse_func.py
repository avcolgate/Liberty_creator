import re

from lib_creator.get_inputs.classes import Module
from lib_creator.get_inputs.process_func import is_good_name, skip_comment


# * fatals:
# no modules in file
# duplicate module name
# duplicate pin name
# bad module name
# bad pin name
# two or more non-callable modules
def get_top_module(filename: str) -> Module:
    top_module = Module()
    module_list = list()

    with open(file=filename, mode='rt') as file:
        lines = file.read().split('\n')
        is_module_section = False

        for line_num, curr_line in enumerate(lines):
            curr_line = skip_comment(curr_line).replace('\t', ' ')

            if curr_line == ' ' or '`define' in curr_line:
                continue

            if not is_module_section:
                if 'module' in curr_line and not 'endmodule' in curr_line:
                    module = Module()
                    is_module_section = True
                else:
                    continue

            if is_module_section:
                module.content.append(curr_line)
                module.text += curr_line + ' '
                if 'input' in curr_line:
                    input_line = re.sub(r'\[[^()]*\]', '', curr_line)  # subtracting size
                    inputs = input_line[input_line.find('input') + len('input'):input_line.find(';')].replace(' ', '').split(',')
                    for i in inputs:
                        if i in module.inputs:
                            print("read verilog step:\n\tfatal: duplicate input name '%s'!\n\texiting" % i)
                            exit()
                        if not is_good_name(i):
                            print("read verilog step:\n\tfatal: bad input name '%s'!\n\texiting" % i)
                            exit()
                        module.inputs.append(i)

            if is_module_section and 'endmodule' in curr_line:
                is_module_section = False
                module_list.append(module)

    for mod in module_list:
        name = ''
        for string in mod.content:
            name += string
            if '(' in string:
                break
        name = name[name.find('module') + len('module'):name.find('(')].strip()  # from module to ()
        mod.name = name

    for x in module_list:
        for y in module_list:
            if x.name == y.name and x != y:
                print("read verilog step:\n\tfatal: duplicate module name '%s'!\n\texiting" % x.name)
                exit()

    if not module_list:
        print("read verilog step:\n\tfatal: no module in file!\n\texiting")
        exit()

    # * define top module
    # finding attachments, and it's number in each module
    for master in module_list:
        for slave in module_list:
            if slave.name in master.text and slave.name not in master.attachments and slave.name != master.name:
                master.attachments.append(slave.name)
                master.attach_num += 1
                slave.called = True

    max_att = -1
    count_masters = 0
    for mod in module_list:
        if not mod.called:
            count_masters += 1
            if mod.attach_num > max_att:
                max_att = mod.attach_num
                top_module = mod

    if count_masters > 1:
        print(
            "read verilog step:\n\tfatal: top module is implicitly specified (there are two or more non-callable modules)!\n\texiting")
        exit()

    return top_module
