#create input data str-----------------------------------
for opop in range(4,5): #can change test data
    aoao = str(opop)
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
# print(string_1)
# string space extned end--------------------------------

#--------------------
match_index_of_string =[] #log "all" test data match index

# print(string_1)
for test_data_pattern_index in range(len(test_pattern_1)): #for used to compare each pattern
# for test_data_pattern_index in range(2,3): #for used to compare each pattern
    pattern = test_pattern_1[test_data_pattern_index] #pattern to compare with
    # print(pattern)
    # print(len(pattern))
    match = 0
    match_index = 0        # log test data match index
    pattern_index = 0       # log index which pattern been compared
    string_index = 0        # log index which pattern been compared
    
    dot_fg = 0              # if pattern match a "."
    begin_word_fg = 0       # if pattern match a "^"
    star_fg = 0             # if pattern match a "*"
    star_cnt = 0            # Used to record how many char were compared after "*"
    
    while (1):
        # "." str-------------------------------------------------------
        # print("----------------------------------------------------------")
        # print("dot_fg =",dot_fg)
        # print("star_cnt =",star_cnt)
        # print("star_fg =",star_fg)
        # print("match_index = ",match_index)
        # print("pattern_index = ",pattern_index)
        # print("string_index = ",string_index)
        # print("pattern = ",ord(pattern[pattern_index]),pattern[pattern_index])
        # print("string = ",ord(string_1[string_index]),string_1[string_index])
        # print("----------------------------------------------------------")  

        # "." str-------------------------------------------------------
        if(ord(pattern[pattern_index]) == 46):
            # pattern first match char with string and log string index
            # but can't be first string index, because the the first char of string is space which added extnedly by us
            if match == 0 and string_index != 0:
                match = 1
                match_index = string_index

            # avoid "." error match the first char of string is space which added extnedly by us
            if string_index != 0:
                pattern_index = pattern_index + 1
            
            # If there is a "*" in the pattrn and char comparison is successful after "*", 
            # then the number of characters passed after "*" will be recorded by srat_cnt.
            if star_fg == 1 :
                star_cnt = star_cnt + 1

            # "." can be any char so string index added 1 and dot_fg be 1
            string_index = string_index + 1
            dot_fg = 1
        # "." end-------------------------------------------------------
             
        # "^" str-------------------------------------------------------
        # pattern char = "^" match string char = " "
        elif (ord(pattern[pattern_index]) == 94 and ord(string_1[string_index]) == 32): 
            # pattern first match char with string and log string index 
            if match == 0:
                match = 1
                match_index = string_index

            #string index & pattern index added 1 and begin_word_fg be 1
            pattern_index = pattern_index + 1
            string_index = string_index + 1
            begin_word_fg = 1
        # "^" end-------------------------------------------------------
        
        # "$" str-------------------------------------------------------
        # pattern char = "$" match string char = " "
        elif (ord(pattern[pattern_index]) == 36 and ord(string_1[string_index]) == 32):
            # pattern first match char with string and log string index 
            if match == 0:
                match = 1
                match_index = string_index
            
            #string index & pattern index added 1
            pattern_index = pattern_index + 1
            string_index = string_index + 1
        # "$" end-------------------------------------------------------
            
        # "char" str----------------------------------------------------
        elif (ord(pattern[pattern_index]) == ord(string_1[string_index])):
            # pattern first match char with string and log string index 
            if match == 0:
                match = 1
                match_index = string_index

            # The first cahr to successfully compare after "*" 
            # star_fg  changes to 1 to indicate leaving the state of star and char comparison.
            # log how many characters were compared after "*"
            if star_fg == 2 :
                star_fg = 1
                star_cnt = star_cnt + 1
            # log how many characters were compared after "*"
            elif star_fg == 1 :
                star_cnt = star_cnt + 1

            #string index & pattern index added 1
            pattern_index = pattern_index + 1
            string_index = string_index + 1
        # "char" end----------------------------------------------------
            
        # "*__" str-----------------------------------------------------
        elif(star_fg == 2):
            string_index = string_index + 1
        # "*__" end-----------------------------------------------------
            
        # "*" str-------------------------------------------------------
        elif (ord(pattern[pattern_index]) == 42):
            # pattern first match char with string and log string index 
            if match == 0:
                match = 1
                match_index = string_index
            
            # pattern index added 1
            # the comparison of string index is handed over to "*__"
            # because the "*" can represent any number of chars including 0
            
            pattern_index = pattern_index + 1
            
            # star_fg  changes to 2
            star_fg = 2
        # "*" end-------------------------------------------------------
            
        # "else" str----------------------------------------------------
        else:
            # Indicates that the character after "*" failed to match
            if star_fg:
                pattern_index = pattern_index - star_cnt
                string_index = string_index
                star_cnt = 0
                star_fg = 2
            # Indicates that the character after "." failed to match
            # keep sting index because the same char need to compare
            # example:
            # string =  "bbabbbb"
            # pattern = ".a"
            # 1 round error match : .a != bb
            # 2 round match :.a == ba
            elif dot_fg:
                string_index = string_index
                pattern_index = 0
                match = 0
                match_index = 0
                dot_fg = 0
            # Indicates that the char failed to match without "*" and "."
            else:
                string_index = string_index + 1
                pattern_index = 0
                match = 0
                match_index = 0
        # "else" end----------------------------------------------------   

        # Determine whether pattern is found in string------------------
        # string have pattern  and ending char is "*" 
        if len(pattern) == 1 and star_fg == 2: 
            match_index = 0
            break
        # string have pattern
        elif pattern_index == len(pattern):
            # sub 1 is to correct the index of additional spaces
            # "^" does not represent any index
            match_index = match_index - 1 + begin_word_fg
            break
        # string don't have pattern
        elif string_index == (len(string_1)) :
            match_index = -1
            break
        # Determine whether pattern is found in string-----------------
        
    match_index_of_string.append(match_index)

print(match_index_of_string)
