def evenThenOdd(s):
    string = []
    string = [*s]
    i = 0 
    endstr1 = ""
    endstr2 = ""
    for i in range(len(string)):
        if i%2 == 0:
            endstr1 = endstr1 + string[i]
            i += 1
        else:
            endstr2 = endstr2 + string[i]
            i += 1
    endstr = endstr1 + endstr2
    return endstr

print(evenThenOdd)
