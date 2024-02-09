import numpy as np
#read file str-------------------------------------------------------------------
f = open('./grad.data',"r")

text = f.read()

f.close

spl = text.split()

correct_num = 0
#read file end-------------------------------------------------------------------

for object_num in range(6, 7):
# FSM: RECIEVE_DATA ---------------
#read fence position str--------------------------------------
    gold_data = spl[object_num*21+2]

    fence_pos = np.zeros((6, 2))
    obj2fence_dis = np.zeros((6, 1))

    for row in range(6):
        for column in range(3):
            if column <2:
                fence_pos[row][column] = int(spl[row*3+column+3+object_num*21])
            else :
                obj2fence_dis[row][0] = int(spl[row*3+column+3+object_num*21])

    vector = np.zeros((5, 2))
    # print (fence_pos)
    # print (obj2fence_dis)
#read fence position end--------------------------------------
    
#build fence str----------------------------------------------
    for i in range(5): # FSM: BUILD_VECTORS---------------------------
        vector[i] = fence_pos[i+1] - fence_pos[0] 

    # print(vector)
    cross_result = 0
    arrange = np.array([0,0,0,0,0,0])

    for change_vec in range(5) : # FSM: CHANGE_VECTORS----------------------
        negtive_num = 0

        for cross_pos in range(5) : # FSM: CROSS_POS------------------------

            if cross_pos != change_vec :
                cross_result = vector[change_vec][0] * vector[cross_pos][1] - vector[change_vec][1] * vector[cross_pos][0]
                # print ("cross_result[{}] = {}".format(cross_pos, cross_result))
                
                if cross_result < 0 : # FSM: NEG_NUM-------------------------------
                    negtive_num = negtive_num + 1
        
        # print ("netive_num[{}] = {}".format(change_vec, negtive_num))
        arrange[change_vec+1] = negtive_num + 1
        # print ("arrange = ", arrange)

    fence_pos_new = np.zeros([6, 2])
    obj2fence_dis_new = np.zeros((6, 1))

    for i in range(6): # FSM: SWAP
        fence_pos_new[arrange[i]] = fence_pos[i]
        obj2fence_dis_new[arrange[i]] = obj2fence_dis[i]
        
    # print ("fence_pos_new : \n{}\nobj2fence_dic_new : \n{}\n".format(fence_pos_new, obj2fence_dis_new))
#build fence end----------------------------------------------

#calculate polygon area str-----------------------------------
    polygon_area = 0

    for area_cnt in range(6): # FSM: CAL_POLYGON_AREA1
        if area_cnt + 1 != 6 :
            polygon_area = polygon_area + fence_pos_new[area_cnt][0]*fence_pos_new[area_cnt + 1][1] - fence_pos_new[area_cnt][1]*fence_pos_new[area_cnt + 1][0]
        else :
            polygon_area = polygon_area + fence_pos_new[area_cnt][0]*fence_pos_new[0][1] - fence_pos_new[area_cnt][1]*fence_pos_new[0][0]
    # print ("polygon_area = ", polygon_area)

    polygon_area = polygon_area / 2 # FSM: CAL_POLYGON_AREA2

    print("polygon_area = ",polygon_area)
#calculate polygon area end-----------------------------------
    
#calculate triangle area str----------------------------------
    tri_area = 0

    for tri_cnt in range(6): # FSM: CAL_TRI_AREA1
        if tri_cnt + 1 != 6:
            a = obj2fence_dis_new[tri_cnt][0]
            b = obj2fence_dis_new[tri_cnt+1][0]
            c = np.power(fence_pos_new[tri_cnt][0]-fence_pos_new[tri_cnt+1][0],2) + np.power(fence_pos_new[tri_cnt][1]-fence_pos_new[tri_cnt+1][1],2)
        else :
            a = obj2fence_dis_new[tri_cnt][0]
            b = obj2fence_dis_new[0][0]
            c = np.power(fence_pos_new[tri_cnt][0]-fence_pos_new[0][0],2) + np.power(fence_pos_new[tri_cnt][1]-fence_pos_new[0][1],2)

        c = np.power (c, 0.5) # module
        s = (a + b + c) / 2 # ASSIGN
        print ("a[{}] = {}, b[{}] = {}, c[{}] = {}, s[{}] = {}".format(tri_cnt, a, tri_cnt, b, tri_cnt, c, tri_cnt, s))

        if s*(s-a) < 0:# FSM: CAL_TRI_AREA2
            sa = 0
        else:
            sa = s*(s-a)

        if (s-b)*(s-c) < 0:
            bc = 0
        else:
            bc = (s-b)*(s-c)

        print ("sa[{}] = {}, bc[{}] = {}".format(tri_cnt, sa, tri_cnt, bc))
        sa = np.power(sa,0.5)
        bc = np.power(bc,0.5)
        # print ("sa[{}] = {}, bc[{}] = {}".format(tri_cnt, sa, tri_cnt, bc))

        tri_area = tri_area  + sa * bc# FSM: CAL_TRI_AREA3
        print("tri_area = ", tri_area)


    # print("tri_area = ", int(tri_area))

#calculate triangle area end----------------------------------
    
#determine if object inside the polygon str-------------------
    is_inside = 0

    if (tri_area > polygon_area): # FSM: OVER (VALID)
        is_inside = "0"
    else :
        is_inside = "1"

    if gold_data == is_inside:
        correct_num = correct_num + 1
        print ("Golde/Return => {}/{}".format(gold_data, is_inside))
        print("object {} is correct".format(object_num + 1))
    else:
        print("object {} is wrong".format(object_num + 1))
    
    print("\n")
#determine if object inside the polygon end-------------------

    

print("correct_num =",correct_num)
