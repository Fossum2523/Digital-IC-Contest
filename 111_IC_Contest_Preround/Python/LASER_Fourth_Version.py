# get object location str--------------------------
f = open('./img6.pattern',"r")
text = f.read()
f.close

s = text.split('\n')

object_x = []
object_y = []
ol_object = []
for i in range(80):
    if i%2:
        object_y.append(int(s[i]))
        ol_object.append(0)
    else:
        object_x.append(int(s[i]))
        
################ value define
fir_circle_max = 0
fir_circle_rx = 0
fir_circle_ry = 0
fir_circle_rx_old = 0
fir_circle_ry_old = 0

sec_circle_rx = 0
sec_circle_ry = 0

iteration = 0
################ create point map

point_cnt = 0
while(1):
    for ry in range(16): # y location for center of circcle
        for rx in range(16):# x location for center of circcle
            point_cnt = 0
            for ci in range(40):
                x_dist = abs(object_x[ci] - rx)
                y_dist = abs(object_y[ci] - ry)
                t_dist = x_dist + y_dist
                if (t_dist < 5 or (t_dist==5 and x_dist <4 and y_dist<4)) \
                and ol_object[ci]== 0:
                    point_cnt = point_cnt + 1
            # print(point_cnt)
            if point_cnt >= fir_circle_max :
                fir_circle_max = point_cnt
                fir_circle_rx = rx
                fir_circle_ry = ry

    for ci in range(40):
        x_dist = abs(object_x[ci] - sec_circle_rx)
        y_dist = abs(object_y[ci] - sec_circle_ry)
        t_dist = x_dist + y_dist
        if (t_dist < 5 or (t_dist==5 and x_dist <4 and y_dist<4)) \
        and ol_object[ci] == 1:
            ol_object[ci] = 0

    for ci in range(40):
        x_dist = abs(object_x[ci] - fir_circle_rx)
        y_dist = abs(object_y[ci] - fir_circle_ry)
        t_dist = x_dist + y_dist
        if (t_dist < 5 or (t_dist==5 and x_dist <4 and y_dist<4)) \
        and ol_object[ci] == 0:
            ol_object[ci] = 1

    ###########  first_circle break or not
    if (fir_circle_rx == fir_circle_rx_old and fir_circle_ry == fir_circle_ry_old):
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
        fir_circle_max = 0

        fir_circle_rx_old = fir_circle_rx
        fir_circle_ry_old = fir_circle_ry

print("C1 = ({}, {}), C2 = ({}, {})".format(fir_circle_rx, fir_circle_ry, sec_circle_rx, sec_circle_ry))
        
