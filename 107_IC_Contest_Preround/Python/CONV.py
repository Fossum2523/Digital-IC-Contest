for row in range(64):
    for column in range(64):
        for kernel_row in range(-1, 2):
            for kernel_column in range(-1, 2):
                if (row + kernel_row) < 0 or (row + kernel_row) > 63 or (column + kernel_column) < 0 or (column + kernel_column > 63):
                    image_temp_row[kernel_row+1][kernel_column+1] = 0
                else:
                    image_temp_row[kernel_row+1][kernel_column+1] = kernel[(row + kernel_row)*64+(column + kernel_column)]
            