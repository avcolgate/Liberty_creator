
from __future__ import annotations


class Module:
    def __init__(self, name: str='') -> None:
        self.name = name
        self.pins = list()

    def append_pin(self, pin: Pin) -> None:
        if pin.direction == 'input' or \
            pin.direction == 'output' or \
            pin.direction == 'inout':
            self.pins.append(pin)
        else:
            print('fatal: wrong type of pin %s\n' % pin.name)
            exit()


class Module_for_search:
    def __init__(self, name: str='') -> None:
        self.name = name
        self.attachments = []
        self.called = False
        self.attach_num = 0
        self.offset = 0
        self.text = ''
        self.text_arr = []


class Pin:
    def __init__(self, name: str='', direction: str='', wire_type: str='wire') -> None:
        self.name = name
        self.direction = direction
        self.wire_type = wire_type


class Line:
    def __init__(self, content: str='') -> None:
        self.content = content

    def is_pin_line(self) -> bool:
        if 'input' in self.content or 'output' in self.content or 'inout' in self.content:
            return True
        return False

    def is_endmodule_line(self) -> bool:
        if 'endmodule' in self.content:
            return True
        return False

    def is_module_line(self) -> bool:
        if 'module' in self.content and not 'endmodule' in self.content:
            return True
        return False
