import sys
from inputs.main import get_module_name

verilog_path = sys.argv[1]

module_name = get_module_name(verilog_path)

print(module_name)