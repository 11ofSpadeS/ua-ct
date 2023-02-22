teams = ["t1","t2", "t3","t4", "t5"]

def matches(teams):
    matches = []
    i = 0
    d = 0
    assert len(teams) >= 2
    try:
        while d in range(len(teams)):
            for i in range(len(teams)):
                if i == d:
                    continue
                else:
                    match = (teams[d] , teams[i])
                    matches.append(match)
                    i += 1
            d += 1
    except AssertionError:
        print("Número de equipas invalido")
    return (matches)

print(matches(teams))