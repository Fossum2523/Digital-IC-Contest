comp_begin_word = '^'
comp_end_word = '$'
comp_any_char = '.'
comp_any_char_plus = '*'

test_string_1 = "This is a pencil"
string_1 = []
test_pattern_1 = ["^This","his$","^is$","^a$","^a pencil$"]

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
for i in range(len(test_pattern_1[1])):
    pattern.append(test_pattern_1[1][i])

print(pattern)
# pattern read end---------------------------------------

#--------------------
string_index = 0
pattern_index = 0
first_match_index = 0
match = 0

while (1):


    if (pattern_index == len(pattern)):
        match = 1
        break
    elif (string_index == len(test_string_1)) :
        match = 0
        break
    
    print("pattern_index = ",pattern_index)
    print("string_index = ",string_index)
    print("pattern = ",ord(pattern[pattern_index]))
    print("string = ",ord(string_1[string_index]))

    if (ord(pattern[pattern_index])-62 == ord(string_1[string_index])):
        pattern_index = pattern_index + 1
        string_index = string_index + 1
        print("^")
    elif (ord(pattern[pattern_index])-4 == ord(string_1[string_index])):
        pattern_index = pattern_index + 1
        string_index = string_index + 1
    elif (ord(pattern[pattern_index]) == ord(string_1[string_index])):
        pattern_index = pattern_index + 1
        string_index = string_index + 1
        print("char")
    else:
        pattern_index = 0
        string_index = string_index + 1
        print("else")



print(match)


    # for pattern_index in range(len(pattern)):
    #     if (ord(pattern[pattern_index])-62 == ord(string_1[string_index])) and pattern_index == 0:
    #         print("ok")
    
    # string_index = string_index + 1
#--------------------
    




