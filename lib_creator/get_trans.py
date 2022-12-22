import sys
from transition.main import get_net_transition

liberty_path = sys.argv[1]

transitions = get_net_transition(liberty_path) 

print(transitions)
