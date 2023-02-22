t = int(input("Tempo de chamada? (em segundos)"))
if t <= 60 :
    print("Uma chamada com duração de" , t , "segundos custa 0.12€")
else:
    textra = t - 60
    pextra = textra * 0.002
    custo = 0.12 + pextra
    custo = round(custo , 2)
    print("Uma chamada com duração de" , t , "segundos custa" , custo ) 