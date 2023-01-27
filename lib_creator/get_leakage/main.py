import os

def get_leakage(file_path: str) -> float:
    if not os.path.exists(file_path):
        print("fatal (getting module leakage): input file does not exist")
        exit()
    if os.path.splitext(file_path)[1] != '.txt':
        print("fatal (getting module leakage): extension of input file must be .txt")
        exit()

    group_list = list()
    total_list = list()
    leakage_num = -1
    leakage = -1
    with open(file=file_path, mode='rt') as file:
        lines = file.read().split('\n')

        for line in lines:
            if 'Group' in line:
                group_list = line.split()
                for num, group in enumerate(group_list):
                    if str(group) == 'Leakage':
                        leakage_num = num
                continue
            if 'Total' in line:
                total_list = line.split()
                leakage = float(total_list[leakage_num])
                break

    if leakage == -1:
        print("fatal (getting module leakage): leagake not found")
        exit()
    
    return leakage