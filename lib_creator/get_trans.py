import sys
import transition_getter.main as transition_getter

liberty_path = sys.argv[1]

transitions = transition_getter.get_net_transition(liberty_path) 

print(transitions)
