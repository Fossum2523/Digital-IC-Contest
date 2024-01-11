# produce circle point str-------------------------
cir_point_x = []
cir_point_y = []

list = [0,2,3,3,4,3,3,2,0]

for i in range(0, 9 ,1):
    for j in range(4-list[i], 4+list[i]+1, 1):
        cir_point_x.append(j-4)
        cir_point_y.append(i-4)

# produce circle point end-------------------------
        
# get object location str--------------------------
f = open('./img6.pattern',"r")
text = f.read()
f.close

s = text.split('\n')

object_x = []
object_y = []

for i in range(80):
    if i%2:
        object_y.append(int(s[i]))
    else:
        object_x.append(int(s[i]))
# get object location end--------------------------
        
################ value define
fir_circle_max = 0
fir_circle_max_old = 0
fir_circle_rx = 0
fir_circle_ry = 0
sec_circle_max_old = 0
sec_circle_rx = 0
sec_circle_ry = 0

################ create point map
point_map =[]
for i in range(256):
    point_map.append(0)

while (1):
    ################################## 1. 固定圓二位置，重新調整圓一位置，使得到的覆蓋量最大。 ######################
    for rx in range(16): # x location for center of circcle
        for ry in range(16):# y location for center of circcle
            point_cnt = 0
            # print("rx =",rx,"ry = ",ry) # checking circle center position
            for ci in range(len(cir_point_y)):# 49 point in circle 
                for k in range(40): # check 40 points in target list
                    if (rx + cir_point_x[ci])==object_x[k] and (ry + cir_point_y[ci])==object_y[k] \
                        and point_map[(rx + cir_point_x[ci])+(ry + cir_point_y[ci])*16] != 1:
                        # print(object_x[k],object_y[k])  # checking target position
                        point_cnt = point_cnt + 1
            if point_cnt  >= fir_circle_max :
                fir_circle_max = point_cnt
                fir_circle_rx = rx
                fir_circle_ry = ry

    ############ clear second circle dots in point_map
    for ci in range(len(cir_point_y)):
        for k in range(40):
            if (sec_circle_rx + cir_point_x[ci])==object_x[k] and (sec_circle_ry + cir_point_y[ci])==object_y[k]:
                point_map[(sec_circle_rx + cir_point_x[ci])+(sec_circle_ry + cir_point_y[ci])*16] = 0


    ################# set first circle dots into point_map
    for ci in range(len(cir_point_y)):
        for k in range(40):
            if (fir_circle_rx + cir_point_x[ci])==object_x[k] and (fir_circle_ry + cir_point_y[ci])==object_y[k]:
                point_map[(fir_circle_rx + cir_point_x[ci])+(fir_circle_ry + cir_point_y[ci])*16]= 1

    ###########  first_circle break or not
    if (fir_circle_max == fir_circle_max_old):
        break
    else:
        # 圓1與圓2圓心交換 str----------------------------------------
        temp = fir_circle_rx
        fir_circle_rx = sec_circle_rx
        sec_circle_rx = temp

        temp = fir_circle_ry
        fir_circle_ry = sec_circle_ry
        sec_circle_ry = temp
        # 圓1與圓2圓心交換 end----------------------------------------

        # 將圓1的最大值儲存，並與圓2交換，使得下次遞迴時可以比較正確得max old值 str-------------------------
        fir_circle_max_old = fir_circle_max

        fir_circle_max = 0

        temp = fir_circle_max_old
        fir_circle_max_old = sec_circle_max_old
        sec_circle_max_old = temp
        # 將圓1的最大值儲存，並與圓2交換，使得下次遞迴時可以比較正確得max old值 end-------------------------

print("C1 = ({}, {}), C2 = ({}, {})".format(fir_circle_rx, fir_circle_ry, sec_circle_rx, sec_circle_ry))