def insertionSort(array_prob,array_sym,array_weight):

    for step in range(1, len(array_prob)):
        array_weight_orig= array_weight[step]
        array_sym_orig= array_sym[step]
        key = array_prob[step]
        j = step - 1
        
        # Compare key with each element on the left of it until an element smaller than it is found
        # For descending order, change key<array_prob[j] to key>array_prob[j].        
        while j >= 0 and key < array_prob[j]:
            array_sym[j + 1] = array_sym[j]
            array_prob[j + 1] = array_prob[j]
            array_weight[j + 1] = array_weight[j]
            j = j - 1
        
        # Place key at after the element just smaller than it.
        array_weight[j + 1 ] = array_weight_orig 
        array_sym[j + 1 ] = array_sym_orig
        array_prob[j + 1] = key

#create input data str-----------------------------------
pattern_num = 3

f = open(('pattern'+str(pattern_num)+'.dat'),"r")
text = f.read()
f.close

pattern_data = text.split('\n')

# print(s)
#create input data end-----------------------------------

# define gray code index str-----------------------------
A1 = '1'
A2 = '2'
A3 = '3'
A4 = '4'
A5 = '5'
A6 = '6'
# define gray code index end-----------------------------

A_cnt = [0,0,0,0,0,0]

for gray_data_cnt in range(100):
    if(pattern_data[gray_data_cnt] == A1):
        A_cnt[0] = A_cnt[0] + 1
    elif(pattern_data[gray_data_cnt] == A2):
        A_cnt[1] = A_cnt[1] + 1
    elif(pattern_data[gray_data_cnt] == A3):
        A_cnt[2] = A_cnt[2] + 1
    elif(pattern_data[gray_data_cnt] == A4):
        A_cnt[3] = A_cnt[3] + 1
    elif(pattern_data[gray_data_cnt] == A5):
        A_cnt[4] = A_cnt[4] + 1
    elif(pattern_data[gray_data_cnt] == A6):
        A_cnt[5] = A_cnt[5] + 1

print(A_cnt[0],A_cnt[1],A_cnt[2],A_cnt[3],A_cnt[4],A_cnt[5])

huffman_array_prob = []
huffman_array_sym = []

for insert_cnt in range(6):
    huffman_array_prob.append(A_cnt[insert_cnt])
    huffman_array_sym.append(insert_cnt)

huffman_array_weight = [0,0,0,0,0,0]

print("------------------------------------------------------")
print("Origin")
print(f"prob = {huffman_array_prob}")
print(f"wght = {huffman_array_weight}")
print(f"symb = {huffman_array_sym}")
print("------------------------------------------------------\n")

insertionSort(huffman_array_prob,huffman_array_sym,huffman_array_weight)

# huffman_array_prob = [7,7,10,18,22,28]
# huffman_array_weight = [1,1,0,0,0,0]

# huffman_array_prob = [7,7,10,10,22,28]
# huffman_array_weight = [1,1,2,2,0,0]

# huffman_array_prob = [7,7,7,17,22,28]
# huffman_array_weight = [2,2,1,0,0,0]

print("------------------------------------------------------")
print("C0")
print(f"prob = {huffman_array_prob}")
print(f"wght = {huffman_array_weight}")
print(f"symb = {huffman_array_sym}")
print("------------------------------------------------------\n")

for combine_cnt in range (4):

    fg1 = 0
    fg2 = 0
    prob_temp = 0
    for prob_cnt in range (5):
        print(f"prob_cnt = {prob_cnt}")
        if huffman_array_prob[prob_cnt] != huffman_array_prob[prob_cnt + 1] and fg1 == 0:
            fg1 = prob_cnt + 1
            print(f"flag1 = {fg1}")
        elif huffman_array_prob[prob_cnt] != huffman_array_prob[prob_cnt + 1] and fg1 != 0:
            fg2 = prob_cnt + 1
            print(f"flag2 = {fg2}")
            break
        elif (huffman_array_weight[prob_cnt] != huffman_array_weight[prob_cnt + 1] and fg1 == 0 
            and huffman_array_weight[prob_cnt + 1] == 0):
            fg1 = prob_cnt + 1
            fg2 = prob_cnt + 2
            print(f"flag1 = {fg1}")
            print(f"flag2 = {fg2}")
            break

## combine and weight adjust str---------------------------------------------------
    
    for (weight_cnt) in range (fg2):
        huffman_array_weight[weight_cnt] = huffman_array_weight[weight_cnt] + 1

    for (weight_cnt) in range (fg2,6):
        if huffman_array_weight[weight_cnt] != 0:
            huffman_array_weight[weight_cnt] = huffman_array_weight[weight_cnt] + 1
            
## combine and weight adjust end---------------------------------------------------

## combine and prob adjust str---------------------------------------------------
    prob_temp = huffman_array_prob[fg1 - 1] + huffman_array_prob[fg1]

    for (prob_cnt) in range (fg2):
        huffman_array_prob[prob_cnt] = prob_temp

## combine and prob adjust end--------------------------------------------------
    print("------------------------------------------------------")
    print(f"C{combine_cnt+1} after increasing weight and merge prob")        
    print(f"prob = {huffman_array_prob}")
    print(f"wght = {huffman_array_weight}")
    print(f"symb = {huffman_array_sym}")
    
    insertionSort(huffman_array_prob,huffman_array_sym,huffman_array_weight)

    print(f"C{combine_cnt+1} after insertion sort") 
    print(f"prob = {huffman_array_prob}")
    print(f"wght = {huffman_array_weight}")
    print(f"symb = {huffman_array_sym}")
    print("------------------------------------------------------\n")

## Split str -----------------------------------------------------------------------------------------------------------
Huffman_code = ['','','','','','']
Huffman_code_en = [1,1,1,1,1,1]

for combine_cnt in range (3):
    if(huffman_array_weight[combine_cnt] == 0):
        for i in range(combine_cnt,6):
            if(i==combine_cnt):
                Huffman_code[huffman_array_sym[i]] = (Huffman_code[huffman_array_sym[i]]+'1')
            else:
                Huffman_code[huffman_array_sym[i]] = (Huffman_code[huffman_array_sym[i]]+'0')
        # Huffman_code[huffman_array_sym[1]] = (Huffman_code[huffman_array_sym[1]]+'0')
        # Huffman_code[huffman_array_sym[2]] = (Huffman_code[huffman_array_sym[2]]+'0')
        # Huffman_code[huffman_array_sym[3]] = (Huffman_code[huffman_array_sym[3]]+'0')
        # Huffman_code[huffman_array_sym[4]] = (Huffman_code[huffman_array_sym[4]]+'0')
        # Huffman_code[huffman_array_sym[5]] = (Huffman_code[huffman_array_sym[5]]+'0')
    
    else:
        print(1)
        # Huffman_code[huffman_array_sym[0]] = (Huffman_code[huffman_array_sym[0]]+'0')
        # Huffman_code[huffman_array_sym[1]] = (Huffman_code[huffman_array_sym[1]]+'1')
        # Huffman_code[huffman_array_sym[2]] = (Huffman_code[huffman_array_sym[2]]+'1')
        # Huffman_code[huffman_array_sym[3]] = (Huffman_code[huffman_array_sym[3]]+'1')
        # Huffman_code[huffman_array_sym[4]] = (Huffman_code[huffman_array_sym[4]]+'1')
        # Huffman_code[huffman_array_sym[5]] = (Huffman_code[huffman_array_sym[5]]+'1')
    
    for shit in range(6):
        huffman_array_weight[shit] = huffman_array_weight[shit] - 1

## Split end -----------------------------------------------------------------------------------------------------------

    # print(f"wght = {huffman_array_weight}")
            

    print(Huffman_code)
    

