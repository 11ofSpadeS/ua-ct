string = "1234 fsahda 233"
def countDigit(string):
    stripstr = []
    digits = [1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 ,9 , 0]
    digitnumber = 0
    i = 0
    stripstr = [*string]
    
    while i in range(len(stripstr)):
        if stripstr[i].isdigit():
            digitnumber += 1
            i += 1
        else:
            i += 1
            continue
    return digitnumber

print(countDigit(string))