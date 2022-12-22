import sys
from leakage.main import get_leakage

power_path = sys.argv[1]

leakage = get_leakage(power_path) 

print(leakage)
