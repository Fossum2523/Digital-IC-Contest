import numpy as np

f = open('./cnn_sti.dat',"r")
test = f.read()
f.close
s = test.split("\n")
data = np.array(s)
print(data)

row1 = []
row2 = []
row3 = []

for row in range(64):
    for column in range(64):
        