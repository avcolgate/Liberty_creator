import sys

from transition_getter.classes import Template
# from classes import Template

file_path = sys.argv[1]

def get_net_transition(file_path):

    index_arr = []
    template_list = []
    is_template_section = False
    lb_index = '("'
    rb_index = '")'


    f = open(file_path, 'r')

    # collecting body of all templates
    for line_num, line in enumerate(f):
        if 'lu_table_template' in line:
            is_template_section = True
            template = Template()
        if is_template_section:
            template.body.append(line)
            if '}' in line:
                is_template_section = False
                template_list.append(template)
        if 'cell(' in line:                      # temp!
            break

    # filling name, variables, indices of template
    for templ in template_list:
        for line in templ.body:
            if 'lu_table_template' in line:
                line = line[line.find('(')+1:line.find(')')].strip()
                templ.name = line
            if 'variable' in line:
                line = line[line.find(':')+1:line.find(';')].strip()
                templ.variable.append(line)
            if 'index' in line:
                line = line[line.find(lb_index)+len(lb_index):line.find(rb_index)].strip()
                templ.index.append(line)

    # searching for right template
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