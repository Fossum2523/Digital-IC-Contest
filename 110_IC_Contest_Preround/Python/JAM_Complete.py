#for three pattern
import numpy as np
#read file str-------------------------------------------------------------------
f = open('./cost_rom.txt',"r")

text = f.read()

f.close

s = text.split()

job_cost_P1 = np.zeros((8, 8))
job_cost_P2 = np.zeros((8, 8))
job_cost_P3 = np.zeros((8, 8))

for row in range(8):
    for column in range(8):
        job_cost_P1[row][column] = int(s[row*8+column])

for row in range(8):
    for column in range(8):
        job_cost_P2[row][column] = int(s[(row+8)*8+column])

for row in range(8):
    for column in range(8):
        job_cost_P3[row][column] = int(s[(row+16)*8+column])

#read file end-------------------------------------------------------------------
arrange = [0,1,2,3,4,5,6,7]

nl=8
nl_num = 1
for nl_i in range(1,nl+1):
    nl_num = nl_num * nl_i

min_cost = 1024
print("Pattern 1 Result")
for time_cnt in range(nl_num-1):
#step 1 str----------------------------------------------------------------------
    
    # p indicate change_point
    for p in range(6,-1,-1): #7 ~ 0
        if(arrange[p] < arrange[p + 1]):
            break

#step 1 end----------------------------------------------------------------------

#step 2 str----------------------------------------------------------------------
    min = 100
    min_pos = 0

    for i in range(p + 1,8):
        if(min > arrange[i] and arrange[i] >arrange[p]):
            min = arrange[i]
            min_pos = i

    temp = arrange[min_pos]
    arrange[min_pos] = arrange[p]
    arrange[p] = temp
#step 2 end----------------------------------------------------------------------

#step 3 str----------------------------------------------------------------------
    change_time = int((7-p)/ 2)

    for i in range(change_time):
        temp = arrange[p+1+i]
        arrange[p+1+i]=arrange[7-i]
        arrange[7-i] = temp
#step 3 end----------------------------------------------------------------------

    total_num = 0
    for i in range(8):
        total_num = total_num + int(job_cost_P1[i][arrange[i]])
    
    if min_cost > total_num:
        match_cnt = 1
        min_cost = total_num
    elif min_cost == total_num:
        match_cnt = match_cnt + 1

# print("done")
print("match_cnt = ",match_cnt)
print("min_cost = ",min_cost)
print("\n")

min_cost = 1024
arrange = [0,1,2,3,4,5,6,7]
print("Pattern 2 Result")
for time_cnt in range(nl_num-1):
#step 1 str----------------------------------------------------------------------
    
    # p indicate change_point
    for p in range(6,-1,-1): #7 ~ 0
        if(arrange[p] < arrange[p + 1]):
            break

#step 1 end----------------------------------------------------------------------

#step 2 str----------------------------------------------------------------------
    min = 100
    min_pos = 0

    for i in range(p + 1,8):
        if(min > arrange[i] and arrange[i] >arrange[p]):
            min = arrange[i]
            min_pos = i

    temp = arrange[min_pos]
    arrange[min_pos] = arrange[p]
    arrange[p] = temp
#step 2 end----------------------------------------------------------------------

#step 3 str----------------------------------------------------------------------
    change_time = int((7-p)/ 2)

    for i in range(change_time):
        temp = arrange[p+1+i]
        arrange[p+1+i]=arrange[7-i]
        arrange[7-i] = temp
#step 3 end----------------------------------------------------------------------

    total_num = 0
    for i in range(8):
        total_num = total_num + int(job_cost_P2[i][arrange[i]])
    
    if min_cost > total_num:
        match_cnt = 1
        min_cost = total_num
    elif min_cost == total_num:
        match_cnt = match_cnt + 1

# print("done")
print("match_cnt = ",match_cnt)
print("min_cost = ",min_cost)
print("\n")

min_cost = 1024
arrange = [0,1,2,3,4,5,6,7]
print("Pattern 3 Result")
for time_cnt in range(nl_num-1):
#step 1 str----------------------------------------------------------------------
    
    # p indicate change_point
    for p in range(6,-1,-1): #7 ~ 0
        if(arrange[p] < arrange[p + 1]):
            break

#step 1 end----------------------------------------------------------------------

#step 2 str----------------------------------------------------------------------
    min = 100
    min_pos = 0

    for i in range(p + 1,8):
        if(min > arrange[i] and arrange[i] >arrange[p]):
            min = arrange[i]
            min_pos = i

    temp = arrange[min_pos]
    arrange[min_pos] = arrange[p]
    arrange[p] = temp
#step 2 end----------------------------------------------------------------------

#step 3 str----------------------------------------------------------------------
    change_time = int((7-p)/ 2)

    for i in range(change_time):
        temp = arrange[p+1+i]
        arrange[p+1+i]=arrange[7-i]
        arrange[7-i] = temp
#step 3 end----------------------------------------------------------------------

    total_num = 0
    for i in range(8):
        total_num = total_num + int(job_cost_P3[i][arrange[i]])
    
    if min_cost > total_num:
        match_cnt = 1
        min_cost = total_num
    elif min_cost == total_num:
        match_cnt = match_cnt + 1

# print("done")
print("match_cnt = ",match_cnt)
print("min_cost = ",min_cost)
print("\n")