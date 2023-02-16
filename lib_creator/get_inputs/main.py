from lib_creator.get_inputs.parse_func import get_top_module


def get_module_params(filename: str) -> tuple:
    module = get_top_module(filename)

    return module.name, module.inputs
