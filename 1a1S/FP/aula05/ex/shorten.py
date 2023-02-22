def shorten(string):
    stripstr = []
    stripstr = [*string]
    i = 0
    abr = ""
    for i in range(len(stripstr)):
        if stripstr[i].isupper():
            abr = abr + stripstr[i]
            i += 1
        else:
            i += 1 
            continue
    return abr

string = "Guarda Nacional Republicana"
print(shorten(string))
