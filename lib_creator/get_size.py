import sys
from size.main import get_size

lef_path = sys.argv[1]

size = get_size(lef_path) 

print(size)
