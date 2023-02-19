import os

def get_leakage(file_path: str) -> float:
    group_list = list()
    total_list = list()
    leakage_num = -1
    leakage = -1

    if os.path.splitext(file_path)[1] != '.txt':
        print("get leakage step:\n\tfatal: input file must be txt file\n\texiting")
        exit()
    if not os.path.exists(file_path):
        print("get leakage step:\n\tfatal: input file does not exist\n\texiting")
        exit()

    with open(file=file_path, mode='rt') as file:
        lines = file.read().split('\n')

        for line in lines:
            if 'Group' in line and not group_list:
                group_list = line.split()
                for num, group in enumerate(group_list):
                    if str(group) == 'Leakage':
                        leakage_num = num
                continue

            if 'Total' in line and group_list:
                total_list = line.split()
                if len(total_list) >= leakage_num:
                    leakage = float(total_list[leakage_num])
                else:
                    print("get leakage step:\n\tfatal: not enough items in Total line\n\texiting")
                    exit()
                break

        if not group_list:
            print("get leakage step:\n\tfatal: Group line not found\n\texiting")
            exit()
        if not total_list:
            print("get leakage step:\n\tfatal: Total line not found\n\texiting")
            exit()

    if leakage == -1:
        print("get leakage step:\n\tfatal: leagake not found\n\texiting")
        exit()
    else:   
        return leakage