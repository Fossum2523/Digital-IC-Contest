f = open('Btestdata.txt',"r")
text = f.read()
f.close
s = text.split('\n')

test_string_1 = s[0]
test_pattern_1 = []

for i in range(1,len(s)):
    test_pattern_1.append(s[i])

# string space extned str--------------------------------
string_1 = []
string_1.append(' ')

for i in range(len(test_string_1)):
    string_1.append(test_string_1[i])

string_1.append(' ')

# string space extned end--------------------------------

#--------------------
match_index_of_string =[]
match_fg = -1

comp_begin_word_fg = 0 

first_match_index = 0
pattern_index = 0
cnt = 0

for a in range(len(test_pattern_1)):
    pattern = test_pattern_1[a]
    for string_order_index in range(len(test_string_1)+2):
        str_cnt = 0
        string_index = string_order_index
        match = 0
        comp_any_char_plus_fg = 0
        while (1):
            if (pattern_index == len(pattern)):
                first_match_index = match_fg - 1 + comp_begin_word_fg
                match = 1
                break
            elif (string_index == (len(test_string_1)+2)) :
                first_match_index = -1
                match = 0
                break
            # "*" str-------------------------------------------------------
            if (ord(pattern[pattern_index]) == 42):
                if match_fg < 0:
                    match_fg = string_index
                pattern_index = pattern_index + 1
                comp_any_char_plus_fg = 2
            # "*" end-------------------------------------------------------
                
            # "^" str-------------------------------------------------------
            elif (ord(pattern[pattern_index]) == 94 and ord(string_1[string_index]) == 32):
                if match_fg < 0:
                    match_fg = string_index
                comp_begin_word_fg = 1#############
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

            # "." str------------------------------------------------------- 
            elif(ord(pattern[pattern_index]) == 46):
                if match_fg < 0 and string_index != 0:
                    match_fg = string_index
                if string_index != 0:
                    pattern_index = pattern_index + 1
                
                if comp_any_char_plus_fg == 1 :
                    str_cnt = str_cnt + 1
                string_index = string_index + 1
            # "." end------------------------------------------------------- 
                
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
            # "else" end----------------------------------------------------
        
        
        if match == 1:
            cnt = cnt + 1
            break

        match_fg = -1
        comp_begin_word_fg = 0 
        pattern_index = 0
    
    match_index_of_string.append(first_match_index)

    match_fg = -1
    comp_begin_word_fg = 0 
    pattern_index = 0

print(match_index_of_string)