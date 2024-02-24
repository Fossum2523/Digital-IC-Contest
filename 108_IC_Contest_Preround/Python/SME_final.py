#create input data str-----------------------------------
for opop in range(4,5): #can change test data
    aoao =str(opop)
    f = open(('Btestdata_'+aoao+'.txt'),"r")
    text = f.read()
    f.close
    s = text.split('\n')

    test_string_1 = s[0]
    test_pattern_1 = []

    for i in range(1,len(s)):
        test_pattern_1.append(s[i])
#create input data end-----------------------------------
        
# string space extned str--------------------------------
string_1 = []
string_1.append(' ')

for i in range(len(test_string_1)):
    string_1.append(test_string_1[i])

string_1.append(' ')
# string space extned end--------------------------------

#--------------------
match_index_of_string =[] #log "all" test data match index
match_fg = -1 #log test data match index

dot_fg = 0
comp_begin_word_fg = 0  #if pattern match a "*"

pattern_index = 0 #log index which pattern been compared

for test_data_pattern_index in range(len(test_pattern_1)): #for used to compare each pattern
    pattern = test_pattern_1[test_data_pattern_index] #pattern to compare with
    
    dot_fg = 0
    match_fg = -1
    comp_begin_word_fg = 0 
    pattern_index = 0
    str_cnt = 0 #Used to record how many char were compared after "*"
    string_index = 0
    match = 0
    comp_any_char_plus_fg = 0
    while (1):
        if (pattern_index == len(pattern)):
            match_fg = match_fg - 1 + comp_begin_word_fg
            match = 1
            break
        elif (string_index == (len(test_string_1)+2)) :
            match_fg = -1
            break
        # "*" str-------------------------------------------------------
        if (ord(pattern[pattern_index]) == 42):
            if match_fg < 0:
                match_fg = string_index
            pattern_index = pattern_index + 1
            comp_any_char_plus_fg = 2
        # "*" end-------------------------------------------------------
        
        # "." str------------------------------------------------------- 
        elif(ord(pattern[pattern_index]) == 46):
            if match_fg < 0 and string_index != 0:
                match_fg = string_index
            if string_index != 0:
                pattern_index = pattern_index + 1
            
            if comp_any_char_plus_fg == 1 :
                str_cnt = str_cnt + 1
            string_index = string_index + 1

            dot_fg = 1
        # "." end-------------------------------------------------------
             
        # "^" str-------------------------------------------------------
        elif (ord(pattern[pattern_index]) == 94 and ord(string_1[string_index]) == 32):
            if match_fg < 0:
                match_fg = string_index
            comp_begin_word_fg = 1
            pattern_index = pattern_index + 1
            string_index = string_index + 1
        # "^" end-------------------------------------------------------
        
        # "$" str-------------------------------------------------------
        elif (ord(pattern[pattern_index]) == 36 and ord(string_1[string_index]) == 32):
            if match_fg < 0:
                match_fg = string_index
            pattern_index = pattern_index + 1
            string_index = string_index + 1
        # "$" end-------------------------------------------------------
            
        # "char" str----------------------------------------------------
        elif (ord(pattern[pattern_index]) == ord(string_1[string_index])):
            if match_fg < 0:
                match_fg = string_index

            if comp_any_char_plus_fg == 2 :
                comp_any_char_plus_fg = 1
                str_cnt = str_cnt + 1
            elif comp_any_char_plus_fg == 1 :
                str_cnt = str_cnt + 1
            pattern_index = pattern_index + 1
            string_index = string_index + 1
        # "char" end----------------------------------------------------
            
        # "*__" str-----------------------------------------------------
        elif(comp_any_char_plus_fg == 2):
            if match_fg < 0:
                match_fg = string_index
            string_index = string_index + 1
        # "*__" end-----------------------------------------------------
            
        # "else" str----------------------------------------------------
        else:
            if comp_any_char_plus_fg == 1 :
                pattern_index = pattern_index - str_cnt
                # pattern_index = pattern_index - 1
                str_cnt = 0
                comp_any_char_plus_fg = 2
                string_index = string_index + 1
            else:
                comp_begin_word_fg = 0
                pattern_index = 0
                string_index = string_index + 1
                match_fg = -1
            
            if dot_fg:
                    dot_fg = 0
                    string_index = string_index - 1
        # "else" end----------------------------------------------------   

    match_index_of_string.append(match_fg)

    match_fg = -1
    comp_begin_word_fg = 0 
    pattern_index = 0

print(match_index_of_string)