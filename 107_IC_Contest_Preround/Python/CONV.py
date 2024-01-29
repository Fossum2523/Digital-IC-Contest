kernel_w = []
image_temp_row = []
acc =[]
image_in =[]
idata =[]
bias =[]

for row in range(64): # FOR_ROW
    for column in range(64): # FOR_COLUMN
        for kernel_row in range(3): #FR_KERNEL_ROW
            for kernel_column in range(3): # FR_KERNERL_COLUMN
                #ZERO_PADDING
                if (row + kernel_row) < 0 or (row + kernel_row) > 63 or (column + kernel_column) < 0 or (column + kernel_column > 63):
                    image_temp_row[row + kernel_row - 1 ][column + kernel_column-1] = 0
                else:
                    image_temp_row[row + kernel_row - 1 ][column + kernel_column-1] = idata[(row + kernel_row-1)*64+(column + kernel_column-1)]
        
        mul = image_temp_row * kernel_w #MUL

        acc = acc + mul #ACC

        acc = acc + bias #BIAS


        
            