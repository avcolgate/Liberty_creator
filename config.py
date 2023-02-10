path_opensta = '/home/avcolgate/OpenSTA/app/sta'

design_name = 'lib_sample'
#TODO попробовать убрать

clocks = ['CLK'] # case-sensitive (set empty if no clocks in design)

path_input_lib = 'tests/data/source/liberty/nom_1.65V_25C/CORELIB8DLL.lib'
path_lef = 'tests/data/source/%s/%s.lef' % (design_name, design_name)
path_verilog = 'tests/data/source/%s/%s.v' % (design_name, design_name)
path_netlist = 'tests/data/source/%s/%s_netlist_mikron.v' % (design_name, design_name)

dir_results = 'tests/data/results/%s' % design_name
