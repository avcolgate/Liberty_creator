def data_pin_init(timing_data, key):
    cell_fall_data = []
    cell_rise_data = []
    fall_transition_data = []
    rise_transition_data = []

    for pin in timing_data[key]:
        if hasattr(pin[0], 'cell_fall'):
            for item in pin:
                if hasattr(item, 'cell_fall'):
                    cell_fall_data.append(item.cell_fall)
                if hasattr(item, 'cell_rise'):
                    cell_rise_data.append(item.cell_rise)
                if hasattr(item, 'fall_transition'):
                    fall_transition_data.append(item.fall_transition)
                if hasattr(item, 'rise_transition'):
                    rise_transition_data.append(item.rise_transition)
        print(f"Data for {key} have been collected.")
    return cell_fall_data, cell_rise_data, fall_transition_data, rise_transition_data


def table_merge(data):
    all_data = []
    temp_data = []
    names = []
    temp_dict = {}

    data_name = set()

    left_bracket = ''
    right_bracket = ''
    tab = ''
    quotes = '\"'
    comma = ''
    line_feed = '\n'

    for item in data:
        for name, value in item.items():
            data_name.add(name)
            all_data.append({name: value.values})

    for item in all_data:
        for name, values in item.items():
            names.append(name)

    names = list(set(names))

    for name in names:
        for item in all_data:
            if name in item.keys():
                temp_data.append(item[name])
        temp_dict[name] = temp_data
        temp_data = []

    all_data.clear()

    for name, values in temp_dict.items():
        temp_data = temp_dict[name]
        temp_value = ''

        for counter, value in enumerate(temp_data):
            if counter == 0:
                left_bracket = '('
            else:
                tab = '\t\t\t\t\t'
            if counter == len(value.split(sep=',')) - 1:
                #TODO: Cringe
                right_bracket = ')'
                line_feed = ''
                temp_value = temp_value + tab + quotes + value + quotes + comma + line_feed
                tab = ''
                left_bracket = ''
                right_bracket = ''
                comma = ''
                line_feed = '\n'
                break
            else:
                comma = ',' + '\\'

            temp_value = temp_value + tab + quotes + value + quotes + comma + line_feed

            tab = ''
            left_bracket = ''
            right_bracket = ''
            comma = ''
            line_feed = '\n'

        all_data.append({name: temp_value})
        print(f"The pin data of {name} have been merged.")
    return all_data, list(data_name)


def final_pin_data(data_files):
    timing_pin_names = []
    timing_data = {}
    pins = []
    values = []
    cell_name = ''

    for lib in data_files:
        for name, value in lib.cell.items():
            if len(cell_name) == 0:
                cell_name = name
            values.append(value)

    for item in values:
        keys_pins = []
        values_pins = []
        pins_final_data = {}

        for name, value in item.pin.items():
            keys_pins.append(name)
            values_pins.append(value)

        for key in keys_pins:
            for value in values_pins:
                if value.name == key:
                    if hasattr(value, 'timing'):
                        timing_pin_names.append(value.name)
                timing_pin_names = list(set(timing_pin_names))

        for pin in values_pins:
            if pin.name in timing_pin_names:
                if pin.name not in timing_data.keys():
                    pins.append(pin.name)
                    timing_data[pin.name] = []
                if pin.name in timing_data.keys():
                    timing_data[pin.name].append(pin.timing)

        for key in pins:
            pins_final_data[key] = timing_data[key][0]

    for key in pins:
        if hasattr(timing_data[key][0][0], 'cell_fall'):
            # TODO: maybe i should change the logic here

            cell_fall_data, cell_rise_data, fall_transition_data, rise_transition_data = data_pin_init(timing_data, key)

            cell_fall_data, cell_fall_names = table_merge(cell_fall_data)
            cell_rise_data, cell_rise_names = table_merge(cell_rise_data)
            fall_transition_data, fall_transition_names = table_merge(fall_transition_data)
            rise_transition_data, rise_transition_names = table_merge(rise_transition_data)

            for related_pin_instance in pins_final_data[key]:
                pin_template_names = []
                for template_name in related_pin_instance.cell_fall.keys():
                    pin_template_names.append(template_name)

                for pin_template_name in pin_template_names:
                    if pin_template_name in cell_fall_names \
                            and pin_template_name in related_pin_instance.cell_fall.keys():
                        for cell_related_template in cell_fall_data:
                            if pin_template_name in cell_related_template:
                                related_pin_instance.cell_fall[pin_template_name].values = \
                                    cell_related_template[pin_template_name]

            for related_pin_instance in pins_final_data[key]:
                pin_template_names = []
                for template_name in related_pin_instance.cell_rise.keys():
                    pin_template_names.append(template_name)

                for pin_template_name in pin_template_names:
                    if pin_template_name in cell_rise_names \
                            and pin_template_name in related_pin_instance.cell_rise.keys():
                        for cell_related_template in cell_rise_data:
                            if pin_template_name in cell_related_template:
                                related_pin_instance.cell_rise[pin_template_name].values = \
                                    cell_related_template[pin_template_name]

            for related_pin_instance in pins_final_data[key]:
                pin_template_names = []
                for template_name in related_pin_instance.fall_transition.keys():
                    pin_template_names.append(template_name)

                for pin_template_name in pin_template_names:
                    if pin_template_name in fall_transition_names \
                            and pin_template_name in related_pin_instance.fall_transition.keys():

                        for cell_related_template in fall_transition_data:
                            if pin_template_name in cell_related_template:
                                related_pin_instance.fall_transition[pin_template_name].values = \
                                    cell_related_template[pin_template_name]

            for related_pin_instance in pins_final_data[key]:
                pin_template_names = []
                for template_name in related_pin_instance.rise_transition.keys():
                    pin_template_names.append(template_name)

                for pin_template_name in pin_template_names:
                    if pin_template_name in rise_transition_names \
                            and pin_template_name in related_pin_instance.rise_transition.keys():
                        for cell_related_template in rise_transition_data:
                            if pin_template_name in cell_related_template:
                                related_pin_instance.rise_transition[pin_template_name].values = \
                                    cell_related_template[pin_template_name]

            # for index, name in enumerate(cell_fall_names):
            #     if name in pins_final_data[key][index].cell_fall.keys():
            #         pins_final_data[key][index].cell_fall[cell_fall_names[index]].values = cell_fall_data[index][name]
            # for index, name in enumerate(cell_rise_names):
            #     if name in pins_final_data[key][index].cell_rise.keys():
            #         pins_final_data[key][index].cell_rise[cell_rise_names[index]].values = cell_rise_data[index][name]
            # for index, name in enumerate(fall_transition_names):
            #     if name in pins_final_data[key][index].fall_transition.keys():
            #         pins_final_data[key][index].fall_transition[fall_transition_names[index]].values = \
            #             fall_transition_data[index][name]
            # for index, name in enumerate(rise_transition_names):
            #     if name in pins_final_data[key][index].rise_transition.keys():
            #         pins_final_data[key][index].rise_transition[rise_transition_names[index]].values = \
            #             rise_transition_data[index][name]

    for key in keys_pins:
        for obj in pins:
            if obj == values[0].pin[key].name:
                values[0].pin[key].timing[0] = pins_final_data[obj][0]

    final_data = values[0]
    print(f"All the pins have been combined.")
    return final_data
