import sys
from inputs.main import get_module_inputs

verilog_path = sys.argv[1]

inputs = get_module_inputs(verilog_path)

print(inputs)