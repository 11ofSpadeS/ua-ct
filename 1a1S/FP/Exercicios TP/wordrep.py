d = {}
wordrep = ["os" , "armas" , "que"]

def wordrepetition():
    with open(pg3333.txt, r) as file1:
        for line in file1:
            for w in line.split():
                w = w.lower()
                if w in d:
                    d[w] += 1
                else:
                    d[w] 