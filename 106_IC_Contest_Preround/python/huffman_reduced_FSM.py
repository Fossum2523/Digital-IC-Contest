def insertionSort(array_prob,array_sym,array_weight,array_code):

    for step in range(1, len(array_prob)):
    # for step in range(len(array_prob) -1 , 1, -1):
        array_weight_orig= array_weight[step]
        array_sym_orig= array_sym[step]
        array_code_orig = array_code[step]
        key = array_prob[step]
        j = step - 1
        
        # Compare key with each element on the left of it until an element smaller than it is found
        # For descending order, change key<array_prob[j] to key>array_prob[j].        
        while (j >= 0 and key < array_prob[j] 
               or ((key == array_prob[j] and array_weight_orig == 0 and array_weight[j] == 0)
                   and array_sym[j] < array_sym_orig)):
            array_sym[j + 1] = array_sym[j]
            array_prob[j + 1] = array_prob[j]
            array_code[j + 1] = array_code[j]
            array_weight[j + 1] = array_weight[j]
            j = j - 1
        
        # Place key at after the element just smaller than it.
        array_weight[j + 1 ] = array_weight_orig 
        array_sym[j + 1 ] = array_sym_orig
        array_code[j + 1 ] = array_code_orig
        array_prob[j + 1] = key

##### FSM 0 : RECIEVE_DATA #####################################################################

#create input data str-----------------------------------
pattern_num = 3

f = open(('pattern'+str(pattern_num)+'.dat'),"r")
text = f.read()
f.close

pattern_data = text.split('\n')

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

##### FSM 0 : RECIEVE_DATA ###########################################################################


##### FSM 1 : INSERTION_SORT  ###########################################################################
huffman_array_weight = [0,0,0,0,0,0]
Huffman_code = ['','','','','','']

print("------------------------------------------------------")
print("Origin")
print(f"prob = {huffman_array_prob}")
print(f"wght = {huffman_array_weight}")
print(f"symb = {huffman_array_sym}")
print("------------------------------------------------------\n")

insertionSort(huffman_array_prob,huffman_array_sym,huffman_array_weight,Huffman_code)

print("------------------------------------------------------")
print("C0")
print(f"prob = {huffman_array_prob}")
print(f"wght = {huffman_array_weight}")
print(f"symb = {huffman_array_sym}")
print(f"code = {Huffman_code}")
print("------------------------------------------------------\n")
##### FSM 1 : INSERTION_SORT  ###########################################################################

##### FSM 2 : COMBINE  ###########################################################################
for combine_cnt in range (5):

    fg1 = 0
    fg2 = 0
    prob_temp = 0

##### FSM 3 : FIND_FLAG ##########################################################################

    for prob_cnt in range (5):
        print(f"prob_cnt = {prob_cnt}")
        if huffman_array_prob[prob_cnt] != huffman_array_prob[prob_cnt + 1] and fg1 == 0:
            fg1 = prob_cnt + 1
            print(f"flag1 = {fg1}")
        elif huffman_array_prob[prob_cnt] != huffman_array_prob[prob_cnt + 1] and fg1 != 0: # CH_FSM 1
            fg2 = prob_cnt + 1
            print(f"flag2 = {fg2}")
            break
        elif (huffman_array_weight[prob_cnt] != huffman_array_weight[prob_cnt + 1] and fg1 == 0 # CH_FSM 2
            and huffman_array_weight[prob_cnt + 1] == 0):
            fg1 = prob_cnt + 1
            fg2 = prob_cnt + 2
            print(f"flag1 = {fg1}")
            print(f"flag2 = {fg2}")
            break
##### FSM 3 : FIND_FLAG ##########################################################################

##### FSM 4 : FIND_FLAG_FINAL ##########################################################################
    if (fg1 != 0 and fg2 == 0 and prob_cnt == 4):
        fg2 = 6
        print(f"flag2 = {fg2}")
##### FSM 4 : FIND_FLAG_FINAL ##########################################################################
        

##### FSM 5 : GIVE_HUFFCODE ##########################################################################
    for (weight_cnt) in range (fg1):
        Huffman_code[weight_cnt] = ('1'+Huffman_code[weight_cnt])

    for (weight_cnt) in range (fg1,fg2):
        Huffman_code[weight_cnt] = ('0'+Huffman_code[weight_cnt])
##### FSM 5 : GIVE_HUFFCODE ##########################################################################
            

##### FSM 6 : ADD_WEIGHT ##########################################################################    
    for (weight_cnt) in range (fg2):
        huffman_array_weight[weight_cnt] = huffman_array_weight[weight_cnt] + 1

    prob_temp = huffman_array_prob[fg1 - 1] + huffman_array_prob[fg1]
##### FSM 6 : ADD_WEIGHT ##########################################################################


##### FSM 7 : ADJUST_PROB ##########################################################################
    for (prob_cnt) in range (fg2):
        huffman_array_prob[prob_cnt] = prob_temp
##### FSM 7 : ADJUST_PROB ##########################################################################

##### FSM 1 : INSERTION_SORT  ###########################################################################
    print("------------------------------------------------------")
    print(f"C{combine_cnt+1} after increasing weight and merge prob")        
    print(f"prob = {huffman_array_prob}")
    print(f"wght = {huffman_array_weight}")
    print(f"symb = {huffman_array_sym}")
    print(f"code = {Huffman_code}")
 
    insertionSort(huffman_array_prob,huffman_array_sym,huffman_array_weight,Huffman_code)

    print(f"C{combine_cnt+1} after insertion sort") 
    print(f"prob = {huffman_array_prob}")
    print(f"wght = {huffman_array_weight}")
    print(f"symb = {huffman_array_sym}")
    print(f"code = {Huffman_code}")
    print("------------------------------------------------------\n")
##### FSM 1 : INSERTION_SORT  ###########################################################################


########################################################################################################################

insertionSort(huffman_array_sym,huffman_array_prob,huffman_array_weight,Huffman_code)

print("------------------------------------------------------")
print("split")
print(f"prob = {huffman_array_prob}")
print(f"wght = {huffman_array_weight}")
print(f"symb = {huffman_array_sym}")
print(f"code = {Huffman_code}")
print("------------------------------------------------------\n")
## Split end ----------------------------------------------------------------------------------------------------------

