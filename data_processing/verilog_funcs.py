import re

class Module:
    def __init__(self, name: str = '') -> None:
        self.name = name
        self.attachments = list()
        self.called = False
        self.attach_num = 0
        self.inputs = list()
        self.content = list()
        self.text = ''

def get_module_params(filename: str) -> tuple:
    module = get_top_module(filename)

    return module.name, module.inputs


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
                    input_line = input_line.replace('wire', '').replace('reg', '')
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
        name = name[name.find('module') + len('module'):name.find('(')].strip()  # from module to (
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


def is_good_name(name: str) -> bool:
    # cannot be a keyword
    if name in keyword_list:
        return False

    # can include only letters, digits, _, $
    for letter in name:
        if letter.isalpha() or letter.isdigit() or letter == '_' or letter == '$':
            continue
        else:
            return False

    # starts with alpha
    if not str(name[0]).isalpha():
        return False

    # cannot start with dollar
    if str(name[0]) == '$':
        return False

    return True


def skip_comment(line: str) -> str:
    if '//' in line:
        line = line[:line.find('//')]
    return line

keyword_list = ['above', 'abs', 'absdelay', 'ac_stim', 'acos', 'acosh', 'always', 'analog', 'analysis', 'and', 'asin',
                'asinh', 'assign', 'atan', 'atan2', 'atanh', 'begin', 'branch', 'buf', 'bufif0', 'bufif1', 'case',
                'casex', 'casez', 'ceil', 'cmos', 'connectrules', 'cos', 'cosh', 'cross', 'ddt', 'deassign', 'default',
                'defparam', 'disable', 'discipline', 'driver_update', 'edge', 'else', 'end', 'endcase',
                'endconnectrules', 'enddiscipline', 'endfunction', 'endmodule', 'endnature', 'endprimitive',
                'endspecify', 'endtable', 'endtask', 'event', 'exclude', 'exp', 'final_step', 'flicker_noise', 'flow',
                'for', 'force', 'forever', 'fork', 'from', 'function', 'generate', 'genvar', 'ground', 'highz0',
                'highz1', 'hypot', 'idt', 'idtmod', 'if', 'ifnone', 'inf', 'initial', 'initial_step', 'inout', 'input',
                'integer', 'join', 'laplace_nd', 'laplace_np', 'laplace_zd', 'laplace_zp', 'large', 'last_crossing',
                'limexp', 'ln', 'log', 'macromodule', 'max', 'medium', 'min', 'module', 'nand', 'nature', 'negedge',
                'net_resolution', 'nmos', 'noise_table', 'nor', 'not', 'notif0', 'notif1', 'or', 'output', 'parameter',
                'pmos', 'posedge', 'potential', 'pow', 'primitive', 'pull0', 'pull1', 'pulldown', 'pullup', 'rcmos',
                'real', 'realtime', 'reg', 'release', 'repeat', 'rnmos', 'rpmos', 'rtran', 'rtranif0', 'rtranif1',
                'scalared', 'sin', 'sinh', 'slew', 'small', 'specify', 'specparam', 'sqrt', 'strong0', 'strong1',
                'supply0', 'supply1', 'table', 'tan', 'tanh', 'task', 'time', 'timer', 'tran', 'tranif0', 'tranif1',
                'transition', 'tri', 'tri0', 'tri1', 'triand', 'trior', 'trireg', 'vectored', 'wait', 'wand', 'weak0',
                'weak1', 'while', 'white_noise', 'wire', 'wor', 'wreal', 'xnor', 'xor', 'zi_nd', 'zi_np', 'zi_zd',
                'zi_zp']