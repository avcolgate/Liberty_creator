import sys
from logic import Liberty
import copy

file_path = sys.argv[1]

def get_net_transition(file_path):
    lib = []
    tran_arr = []
    index_1 = ''
    lib = copy.deepcopy(Liberty.load(file_path))

    index_1 = lib.lu_table_template['delay_cell'].index_1  # type: ignore

    for tran in index_1.split(','):
        tran_arr.append(float(tran))

    return tran_arr