import numpy as np

comp_begin_word = '^'
comp_end_word = '$'
comp_any_char = '.'
comp_any_char_plus = '*'

# print(ord(comp_begin_word))
# print(ord(comp_end_word))
# print(ord(comp_any_char))
# print(ord(comp_any_char_plus))

f = open('Btestdata.txt',"r")
text = f.read()
f.close
s = text.split('\n')

test_string_1 = s[0]
test_pattern_1 = []

for i in range(1,15):
    test_pattern_1.append(s[i])

print(test_string_1)
print(test_pattern_1)