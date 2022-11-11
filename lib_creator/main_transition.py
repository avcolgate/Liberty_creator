import sys
from transition_getter.get_transition import get_net_transition

liberty_path = sys.argv[1]

transitions = get_net_transition(liberty_path) 

print(transitions)
