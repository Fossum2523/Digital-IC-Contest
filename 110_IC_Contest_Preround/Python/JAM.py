import numpy as np

f = open('./cost_rom.txt',"r")

text = f.read()

f.close

s = text.split('\n')

print(s)