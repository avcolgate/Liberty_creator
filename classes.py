class Path:
    def __init__(self, type: str, name: str, is_critical: bool, path: str = '') -> None:
        self.type = type
        self.name = name
        self.is_critical = is_critical
        self.path = path