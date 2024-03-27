#load race data str---------------------------------------------------------
f = open(('image'),"r")
text = f.read()
f.close

pattern_image = text.split('\n')

print(pattern_image)


num = 0 
for row in range(1):
    for col in range(7,-1,-1):
        if(pattern_image[row][col]=='1'):
            num = num + pow(2,col)
            print(col)
    
    pattern_image[row] = num
    num = 0 

print(pattern_image[0])
#load race data str---------------------------------------------------------
