import sys

file_path = sys.argv[1]

def get_net_transition(file_path):
    temp = []
    index_arr = []  
    trans_line = ''

    f = open(file_path, 'r')
    for line in f:
        if 'index_1' in line:
                trans_line = line
                break

    lb = '("'
    rb = '")'

    trans_line = trans_line[trans_line.find(lb)+len(lb):trans_line.find(rb)]

    trans_line = trans_line.replace(' ', '').split(',')

    for ind in trans_line:
        temp = float(ind)
        index_arr.append(temp)

    return index_arr
