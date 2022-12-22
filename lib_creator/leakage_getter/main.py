import sys
import re

file_path = sys.argv[1]

def get_leakage(file_path):
    group_list = list()
    total_list = list()
    leakage_ind = -1
    with open(file=file_path, mode='rt') as file:
        lines = file.read().split('\n')
        lines = list(filter(None, lines))  # deleting '' lines

        for line in lines:
            # print(line)
            if 'Group' in line:
                group_list = line.replace('Group', '').split()
                for index, group in enumerate(group_list):
                    if str(group) == 'Leakage':
                        leakage_ind = index
                continue

            if 'Total' in line:
                total_list = line.replace('Total', '').split()
                leakage = total_list[leakage_ind]
                break

    return leakage