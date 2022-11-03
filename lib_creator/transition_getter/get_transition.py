import sys

from transition_getter.classes import Template

file_path = sys.argv[1]

def get_net_transition(file_path):

    index_arr = []
    template_list = []
    is_template_section = False


    f = open(file_path, 'r')
    for line_num, line in enumerate(f):
        if 'lu_table_template' in line:
            is_template_section = True
            template = Template()
        if is_template_section:
            template.body.append(line)
            if '}' in line:
                is_template_section = False
                template_list.append(template)
        if 'timing()' in line:                      # temp!
            break

    for templ in template_list:
        for line in templ.body:
            if 'lu_table_template' in line:
                line = line[line.find('(')+1:line.find(')')].strip()
                templ.name = line
            if 'variable' in line:
                line = line[line.find(':')+1:line.find(';')].strip()
                templ.variable.append(line)
            if 'index' in line:
                lb = '("'
                rb = '")'
                line = line[line.find(lb)+len(lb):line.find(rb)].strip()
                templ.index.append(line)

    for templ in template_list:
        if 'input_net_transition' in templ.variable and \
           'total_output_net_capacitance' in templ.variable:
            for var_num, var in enumerate(templ.variable):
                if var == 'input_net_transition':
                    index_num = var_num
            index_line = templ.index[index_num]
            break

    index_line = index_line.replace(' ', '').split(',')

    for ind in index_line:
        temp = float(ind)
        index_arr.append(temp)

    # print(index_arr)

    return index_arr

# print(get_net_transition(file_path))