class Module:
    def __init__(self, name: str = '') -> None:
        self.name = name
        self.attachments = list()
        self.called = False
        self.attach_num = 0
        self.inputs = list()
        self.content = list()
        self.text = ''
