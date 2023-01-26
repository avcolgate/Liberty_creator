import sys
import re

class Macro:
    def __init__(self, name=''):
        self.name = name
        self.size = {0, 0}

def get_size(file_path: str) -> float:
    with open(file=file_path, mode='rt') as file:
        lines = file.read().split('\n')
        lines = list(filter(None, lines))  # deleting '' lines
        section_macro = False

        for line in lines:
            # print(line)
            if 'MACRO' in line:
                macro = Macro()
                macro_name = line.replace('MACRO ', '')
                macro.name = macro_name

                section_macro = True
                continue

            if section_macro and 'SIZE' in line:
                size = line.replace('SIZE ', '')
                size = re.sub("[;| ]", "", size)
                size = size.split('BY')
                macro.size = size
                continue

            if section_macro and 'END' in line and macro_name in line:

                section_macro = False
                continue

        del lines

        area = float(macro.size[0]) * float(macro.size[1])

    return area