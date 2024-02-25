import numpy as np

comp_begin_word = '^'
comp_end_word = '$'
comp_any_char = '.'
comp_any_char_plus = '*'

print(ord(comp_begin_word))
print(ord(comp_end_word))
print(ord(comp_any_char))
print(ord(comp_any_char_plus))

f = open('Btestdata_4.txt',"r")
text = f.read()
f.close
s = text.split('\n')

print(s)
test_string_1 = s[0]
test_pattern_1 = []

for i in range(1,len(s)):
    test_pattern_1.append(s[i])

print(test_string_1)
print(test_pattern_1)

# string space extned str--------------------------------
string_1 = []
string_1.append(' ')

for i in range(len(test_string_1)):
    string_1.append(test_string_1[i])

string_1.append(' ')

print(string_1)
# string space extned end--------------------------------

#--------------------
match_index_of_string =[]
match_fg = -1

dot_fg = 0
comp_begin_word_fg = 0 

first_match_index = 0
pattern_index = 0
cnt = 0

# for a in range(len(test_pattern_1)):
for a in range(11,12):
    pattern = test_pattern_1[a]
    print(pattern)
    print(test_pattern_1[a])
    for string_order_index in range(len(test_string_1)+2):
    # for string_order_index in range(2):
        str_cnt = 0
        string_index = string_order_index
        match = 0
        comp_any_char_plus_fg = 0
        while (1):
            if (pattern_index == len(pattern)):
                print(match_fg)
                first_match_index = match_fg - 1 + comp_begin_word_fg
                match = 1
                break
            elif (string_index == (len(test_string_1)+2)) :
                first_match_index = -1
                match = 0
                break
            print("----------------------------------------------------------")
            print("dot_fg =",dot_fg)
            print("str_cnt =",str_cnt)
            print("match_fg = ",match_fg)
            print("comp_any_char_plus_fg =",comp_any_char_plus_fg)
            print("pattern_index = ",pattern_index)
            print("string_index = ",string_index)
            print("pattern = ",ord(pattern[pattern_index]),pattern[pattern_index])
            print("string = ",ord(string_1[string_index]),string_1[string_index])
            print("----------------------------------------------------------")
            if(comp_any_char_plus_fg == 2):
                if match_fg < 0:
                    match_fg = string_index
                string_index = string_index + 1
                print("*__")
            elif (ord(pattern[pattern_index]) == 42):
                if match_fg < 0 and string_index != 0:
                    match_fg = string_index
                if string_index != 0:
                    pattern_index = pattern_index + 1
                comp_any_char_plus_fg = 2
                print("*")
            elif (ord(pattern[pattern_index]) == 94 and ord(string_1[string_index]) == 32):
                if match_fg < 0:
                    match_fg = string_index
                comp_begin_word_fg = 1#############
                pattern_index = pattern_index + 1
                string_index = string_index + 1
                print("^")
            elif (ord(pattern[pattern_index]) == 36 and ord(string_1[string_index]) == 32):
                if match_fg < 0:
                    match_fg = string_index
                pattern_index = pattern_index + 1
                string_index = string_index + 1
                print("$")
            elif(ord(pattern[pattern_index]) == 46):
                if match_fg < 0 and string_index != 0:
                    match_fg = string_index
                if string_index != 0:
                    pattern_index = pattern_index + 1
                
                if comp_any_char_plus_fg == 1 :
                    str_cnt = str_cnt + 1
                string_index = string_index + 1

                dot_fg = 1
                print(".")
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
                print("char")

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
                print("else")
        
        
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
print(cnt)
print(match)