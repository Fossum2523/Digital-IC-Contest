comp_begin_word = '^'
comp_end_word = '$'
comp_any_char = '.'
comp_any_char_plus = '*'

test_string_1 = "This is a pencil"
string_1 = []
test_pattern_1 = ["^This","his$","^is$","^a$","^a pencil$","^his","pen$","hi$","h.s",
                  "p.n.il","is.a.pe..il","p*l","pen*cil","is*pencil","pen*","*cil","pencil",
                  "is","^is","h.s","Is*pencil","*pencil","pen","pen$","nn"]

print(test_string_1)
print(test_pattern_1)

# string space extned str--------------------------------
string_1.append(' ')

for i in range(len(test_string_1)):
    string_1.append(test_string_1[i])

string_1.append(' ')

print(string_1)
# string space extned end--------------------------------

# pattern read str---------------------------------------
pattern = []
for i in range(len(test_pattern_1[20])):
    pattern.append(test_pattern_1[20][i])

print(pattern)
# pattern read end---------------------------------------

# --------------------
first_match_index = 0
pattern_index = 0
cnt = 0

print(len(pattern))
print(len(test_string_1))

for a in range(len(test_pattern_1)):
    for string_order_index in range(len(test_string_1)+2):
    # for string_order_index in range(2):
        string_index = string_order_index
        match = 0
        str_fg = 0
        while (1):
            if (pattern_index == len(pattern)):
                match = 1
                break
            elif (string_index == (len(test_string_1)+2)) :
                match = 0
                break
            
            print("pattern_index = ",pattern_index)
            print("string_index = ",string_index)
            print("pattern = ",ord(pattern[pattern_index]),pattern[pattern_index])
            print("string = ",ord(string_1[string_index]),string_1[string_index])

            if (ord(pattern[pattern_index]) == 42):
                pattern_index = pattern_index + 1
                str_fg = 1
                print("*")
            elif (ord(pattern[pattern_index]) == 94 and ord(string_1[string_index]) == 32):
                pattern_index = pattern_index + 1
                string_index = string_index + 1
                print("^")
            elif (ord(pattern[pattern_index]) == 36 and ord(string_1[string_index]) == 32):
                pattern_index = pattern_index + 1
                string_index = string_index + 1
                print("$")
            elif(ord(pattern[pattern_index]) == 46):
                pattern_index = pattern_index + 1
                string_index = string_index + 1
                print(".")
            elif (ord(pattern[pattern_index]) == ord(string_1[string_index])):
                pattern_index = pattern_index + 1
                string_index = string_index + 1
                str_fg = 0
                print("char")
            elif(str_fg):
                string_index = string_index + 1
                print("*__")
            else:
                pattern_index = 0
                string_index = string_index + 1
                print("else")
        
        print("----------------------------------------------------------")
        if match == 1:
            cnt = cnt + 1
            break
        pattern_index = 0

print(cnt)
print(match)




