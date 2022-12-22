import sys
from leakage_getter.main import get_leakage

power_path = sys.argv[1]

leakage = get_leakage(power_path) 

print(leakage)
