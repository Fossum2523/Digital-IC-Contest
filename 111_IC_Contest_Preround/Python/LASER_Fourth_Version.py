# # get object location str--------------------------
# f = open('./img6.pattern',"r")
# text = f.read()
# f.close

# s = text.split('\n')

# object_x = []
# object_y = []

# for i in range(80):
#     if i%2:
#         object_y.append(int(s[i]))
#     else:
#         object_x.append(int(s[i]))
        
# ################ value define
# fir_circle_max = 0
# fir_circle_max_old = 0
# fir_circle_rx = 0
# fir_circle_ry = 0
# sec_circle_max_old = 0
# sec_circle_rx = 0
# sec_circle_ry = 0

# ################ create point map
# point_map =[]
# for i in range(256):
#     point_map.append(0)

# for i in range(40):
#     point_map[object_y[i]*16+object_x[i]] = 3

# point_cnt = 0
# while(1):
#     for ry in range(16): # y location for center of circcle
#         for rx in range(16):# x location for center of circcle
#             point_cnt = 0
#             for cry in range(9):
#                 for crx in range(9):
#                     x_dist = abs(((rx - 4) + crx) - rx)
#                     y_dist = abs(((ry - 4) + cry) - ry)
#                     t_dist = x_dist + y_dist
#                     # print("x= {},y = {}".format((rx - 4) + crx,(ry - 4) + cry))
#                     if ((rx - 4) + crx) >= 0 and ((rx - 4) + crx) < 16 \
#                         and ((ry - 4) + cry) >=0 and ((ry - 4) + cry) < 16:
#                         if(t_dist < 5 or (t_dist==5 and x_dist <4 and y_dist<4))\
#                             and point_map[((rx - 4) + crx) + ((ry - 4) + cry) * 16] == 3:
#                             point_cnt = point_cnt + 1
            
#                 if point_cnt  >= fir_circle_max :
#                     fir_circle_max = point_cnt
#                     fir_circle_rx = rx
#                     fir_circle_ry = ry

#     for cry in range(9):
#         for crx in range(9):
#             x_dist = abs(((sec_circle_rx - 4) + crx) - sec_circle_rx)
#             y_dist = abs(((sec_circle_ry - 4) + cry) - sec_circle_ry)
#             t_dist = x_dist + y_dist
#             # print("x= {},y = {}".format((rx - 4) + crx,(ry - 4) + cry))
#             if ((sec_circle_rx - 4) + crx) >= 0 and ((sec_circle_rx - 4) + crx) < 16 \
#                 and ((sec_circle_ry - 4) + cry) >=0 and ((sec_circle_ry - 4) + cry) < 16:
#                 if(t_dist < 5 or (t_dist==5 and x_dist <4 and y_dist<4))\
#                     and point_map[((sec_circle_rx - 4) + crx) + ((sec_circle_ry - 4) + cry) * 16] == 1:
#                     point_map[((sec_circle_rx - 4) + crx) + ((sec_circle_ry - 4) + cry) * 16] = 3

#     for cry in range(9):
#         for crx in range(9):
#             x_dist = abs(((fir_circle_rx - 4) + crx) - fir_circle_rx)
#             y_dist = abs(((fir_circle_ry - 4) + cry) - fir_circle_ry)
#             t_dist = x_dist + y_dist
#             # print("x= {},y = {}".format((rx - 4) + crx,(ry - 4) + cry))
#             if ((fir_circle_rx - 4) + crx) >= 0 and ((fir_circle_rx - 4) + crx) < 16 \
#                 and ((fir_circle_ry - 4) + cry) >=0 and ((fir_circle_ry - 4) + cry) < 16:
#                 if(t_dist < 5 or (t_dist==5 and x_dist <4 and y_dist<4))\
#                     and point_map[((fir_circle_rx - 4) + crx) + ((fir_circle_ry - 4) + cry) * 16] == 3:
#                     point_map[((fir_circle_rx - 4) + crx) + ((fir_circle_ry - 4) + cry) * 16] = 1

#     if (fir_circle_max == fir_circle_max_old):
#         break
#     else:
#         # 圓1與圓2圓心交換 str----------------------------------------
#         temp = fir_circle_rx
#         fir_circle_rx = sec_circle_rx
#         sec_circle_rx = temp

#         temp = fir_circle_ry
#         fir_circle_ry = sec_circle_ry
#         sec_circle_ry = temp
#         # 圓1與圓2圓心交換 end----------------------------------------

#         # 將圓1的最大值儲存，並與圓2交換，使得下次遞迴時可以比較正確得max old值 str-------------------------
#         fir_circle_max_old = sec_circle_max_old
#         sec_circle_max_old = fir_circle_max
#         fir_circle_max = 0
#         # 將圓1的最大值儲存，並與圓2交換，使得下次遞迴時可以比較正確得max old值 end-------------------------

# for cry in range(9):
#     for crx in range(9):
#         x_dist = abs(((sec_circle_rx - 4) + crx) - sec_circle_rx)
#         y_dist = abs(((sec_circle_ry - 4) + cry) - sec_circle_ry)
#         t_dist = x_dist + y_dist
#         # print("x= {},y = {}".format((rx - 4) + crx,(ry - 4) + cry))
#         if ((sec_circle_rx - 4) + crx) >= 0 and ((sec_circle_rx - 4) + crx) < 16 \
#             and ((sec_circle_ry - 4) + cry) >=0 and ((sec_circle_ry - 4) + cry) < 16:
#             if(t_dist < 5 or (t_dist==5 and x_dist <4 and y_dist<4))\
#                 and point_map[((sec_circle_rx - 4) + crx) + ((sec_circle_ry - 4) + cry) * 16] == 3:
#                 point_map[((sec_circle_rx - 4) + crx) + ((sec_circle_ry - 4) + cry) * 16] = 1

# max = 0
# for i in range(256):
#     if point_map[i]==1:
#         max = max + 1
# print("max = ",max)
                
# print("C1 = ({}, {}), C2 = ({}, {})".format(fir_circle_rx, fir_circle_ry, sec_circle_rx, sec_circle_ry))
# print(point_cnt)

# test = [[0]*16 for i in range(16)]
# for i in range(16):
#     print(test[i])
