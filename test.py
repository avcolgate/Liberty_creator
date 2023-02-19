
from lib_merge.main import merge_lib

# module_name = get_module_name('lib_creator/get_inputs/v/spm.v')
# module_inputs = get_module_inputs('lib_creator/get_inputs/v/spm.v')

merge_lib('lib_merge/data/', 'lib_merge/results', module_name='lib_sample', size=1000.1, leakage=2.2)

