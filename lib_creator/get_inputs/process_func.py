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
