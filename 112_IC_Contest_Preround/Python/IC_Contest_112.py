import math
import numpy as np
# load race data str---------------------------------------------------------
f = open(('image'), "r")
text = f.read()
f.close

pattern_image = text.split('\n')

for row in range(10000):
    val = int(pattern_image[row], 2)
    pattern_image[row] = val

f = open(('pattern3_workdata.txt'), "r")
text = f.read()
f.close

workdata = text.split('\n')

H0 = int(workdata[0])
V0 = int(workdata[1])
SW = int(workdata[2])
SH = int(workdata[3])
TW = int(workdata[4])
TH = int(workdata[5])

print(f"H0 = {H0}")
print(f"V0 = {V0}")
print(f"SW = {SW}")
print(f"SH = {SH}")
print(f"TW = {TW}")
print(f"TH = {TH}")

# load race data end--------------------------------------------------------


# -------------------------------------------------------------------------
def p(x, pattern):
    a, b, c, d = find_abcd (pattern)
    px = a*pow(x,3) + b*pow(x,2) + c*x + d
    p_round = round(px)
    if (p_round < 0):
        return 0
    elif (p_round > 255):
        return 255
    else:
        return p_round
    

def find_abcd(pattern):
    a = (-1/2)*pattern[0] + (3/2)*pattern[1] - (3/2)*pattern[2] + (1/2)*pattern[3]
    b = pattern[0] - (5/2)*pattern[1] + 2*pattern[2] - (1/2)*pattern[3]
    c = (-1/2)*pattern[0] + (1/2)*pattern[2]
    d = pattern[1]
    return a, b, c, d
# -------------------------------------------------------------------------


# main--------------------------------------------------------------------------

# step0--------------------------------------------------------------------------
sw_n = SW - 1
tw_n = TW - 1
ratio_w = sw_n / tw_n

sh_n = SH - 1
th_n = TH - 1
ratio_h = sh_n / th_n

# print(f"ratio_w={ratio_w}")
# print(f"ratio_h={ratio_h}")
# print()

target = np.zeros((TH, TW))
target_final = np.zeros((TH, TW))


# step1--------------------------------------------------------------------------
for row in range(SH+2):
# step2--------------------------------------------------------------------------
    for col in range(TW):
# step3--------------------------------------------------------------------------
        ini_pos = (V0 + row - 1) * 100 + (H0)
        col_ratio = math.floor(col * ratio_w)
# step4--------------------------------------------------------------------------
        ini_pos_plus_coldis = ini_pos + col_ratio
        col_dis = col * ratio_w - col_ratio
# step5--------------------------------------------------------------------------
        pattern = [pattern_image[ini_pos_plus_coldis - 1], pattern_image[ini_pos_plus_coldis], pattern_image[ini_pos_plus_coldis + 1], pattern_image[ini_pos_plus_coldis + 2]]
        target[row][col] = p(col_dis, pattern)

print (target)

# step6--------------------------------------------------------------------------
for col in range(TW):
# step7--------------------------------------------------------------------------
    for row in range(TH):
# step8--------------------------------------------------------------------------
        ini_row = 1
# step9--------------------------------------------------------------------------
        ini_row_plus_row_dis = ini_row + math.floor(row * ratio_h)
        
        row_dis = row * ratio_h - math.floor(row * ratio_h)
# step10--------------------------------------------------------------------------
        pattern = [target[ini_row_plus_row_dis - 1][col], target[ini_row_plus_row_dis][col], target[ini_row_plus_row_dis + 1][col], target[ini_row_plus_row_dis + 2][col]]

        target_final[row][col] = p(row_dis, pattern)
        
    
target_final = target_final.astype(int)

for i in range(TH):
    for j in range(TW):
        print(f"{hex(target_final[i][j])}", end=" ")
    print()

#--------------------------------------------------------------------------