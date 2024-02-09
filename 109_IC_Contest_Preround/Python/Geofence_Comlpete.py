import numpy as np
#read file str-------------------------------------------------------------------
f = open('./grad.data',"r")

text = f.read()

f.close

spl = text.split()

correct_num = 0

for object_num in range(1):
    gold_data = spl[object_num*21+2]

    fence_pos = np.zeros((6, 2))
    obj2fence_dis = np.zeros((6, 1))

    for row in range(6):
        for column in range(3):
            if column <2:
                fence_pos[row][column] = int(spl[row*3+column+3+object_num*21])
            else :
                obj2fence_dis[row][0] = int(spl[row*3+column+3+object_num*21])

    # print(fence_pos)
    # print(obj2fence_dis)

    vector = np.zeros((5, 2))

    for i in range(5):
        vector[i] = fence_pos[i+1] - fence_pos[0] 

    print(vector)
    cross_result = 0

    # print (vector)
    arrange = np.array([0,0,0,0,0,0])
    # print(arrange)

    for change_vec in range(5) :
        negtive_num = 0
        for cross_pos in range(5) :
            if cross_pos != change_vec :
                cross_result = vector[change_vec][0] * vector[cross_pos][1] - vector[change_vec][1] * vector[cross_pos][0]
                # print (vector[change_vec][0], vector[cross_pos][1], vector[change_vec][1], vector[cross_pos][0])
                # print("cross_result",cross_result)
                if cross_result < 0 :
                    negtive_num = negtive_num + 1
        
        arrange[change_vec+1] = negtive_num + 1

    # print("before arrange vector sequance: \n", fence_pos)
    # # print ("[0 1 2 3 4 5]")
    # print(arrange)

    fence_pos_new = np.zeros([6, 2])
    obj2fence_dis_new = np.zeros((6, 1))
    # print (temp)
    for i in range(6):
        # print ("i = {}, temp[i] = {}\narrange[i] = {}, fence_pos[arrange[i]] = {}".format(i, temp [i], arrange[i], fence_pos[arrange[i]]))
        fence_pos_new[arrange[i]] = fence_pos[i]
        obj2fence_dis_new[arrange[i]] = obj2fence_dis[i]

    print("after arrange vector sequance: \n", fence_pos_new)

    # print(arrange)

    polygon_area = 0

    for area_cnt in range(6):
        if area_cnt + 1 != 6 :
            polygon_area = polygon_area + fence_pos_new[area_cnt][0]*fence_pos_new[area_cnt + 1][1] - fence_pos_new[area_cnt][1]*fence_pos_new[area_cnt + 1][0]
        else :
            polygon_area = polygon_area + fence_pos_new[area_cnt][0]*fence_pos_new[0][1] - fence_pos_new[area_cnt][1]*fence_pos_new[0][0]

    polygon_area = polygon_area / 2

    print("polygon_area = ",polygon_area)

    tri_area = 0
    for tri_cnt in range(6):
        if tri_cnt + 1 != 6:
            a = obj2fence_dis_new[tri_cnt][0]
            b = obj2fence_dis_new[tri_cnt+1][0]
            c = np.power(np.power(fence_pos_new[tri_cnt][0]-fence_pos_new[tri_cnt+1][0],2) + np.power(fence_pos_new[tri_cnt][1]-fence_pos_new[tri_cnt+1][1],2),0.5)
        else :
            a = obj2fence_dis_new[tri_cnt][0]
            b = obj2fence_dis_new[0][0]
            c = np.power(np.power(fence_pos_new[tri_cnt][0]-fence_pos_new[0][0],2) + np.power(fence_pos_new[tri_cnt][1]-fence_pos_new[0][1],2),0.5)

        s = (a + b + c) / 2

        sabc = s*(s-a)*(s-b)*(s-c)
        if sabc < 0:
            sabc = 0
        tri_area = tri_area  + np.power(sabc,0.5)


    print("tri_area = ", int(tri_area))

    is_inside = 0
    if (tri_area > polygon_area):
        is_inside = "0"
    else :
        is_inside = "1"

    if gold_data == is_inside:
        correct_num = correct_num + 1
        print("object {} is correct".format(object_num))
    else:
        print("object {} is wrong".format(object_num))

    

print(correct_num)
