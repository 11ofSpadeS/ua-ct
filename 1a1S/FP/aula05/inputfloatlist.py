lst = []
def inputFloatList():
    while True:
        inp = input("Numero?")
        try:
            inp = float(inp)
            lst.append(inp)
        except ValueError:
            print("O input não é um numero ou é invalido")
            break
    return lst

def listsize(lst):
    lenlst = len(lst)
    return lenlst

def countLower(lst , v):
    x = 0
    n = 0
    lenlst = listsize(lst)
    for x in range (lenlst):
        if v > lst[x]:
            print(lst[x])
            n += 1
            x += 1
        else:
            x += 1         
    print (n , "numeros são inferiores a " , v)
    return n 

def minmax(lst):
    lenlst = listsize(lst)
    maxi = lst[0]
    mini = lst[0]
    for n in range(lenlst):
        if maxi < lst[n]:
            maxi = lst[n]
       
    for n in range(lenlst):
        if mini > lst[n]:
            mini = lst[n]

        
    print("O valor maximo presente na lista é" , maxi, "e o valor minimo é" , mini)
    return maxi , mini

def average(mini , maxi):
        vmedio = float((mini + maxi) / 2)
        countLower(lst , vmedio)

def main():
    inputFloatList()
    lista = lst
    print(lista)

    lenlst = listsize(lista)
    print("A lista tem um tamanho de", lenlst)

    v = float(input("Valor de Comparação?"))
    countLower(lista , v )

    maxi , mini = minmax(lista)
    average(mini, maxi)

main()
