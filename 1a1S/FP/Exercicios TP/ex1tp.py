d = {"um":"one" , "dois":"two" , "tres":"three" , "quatro":"four" , "cinco":"five" , "seis":"six" , "sete":"seven" , "oito":"eight",  "nove":"nine" , "dez":"ten"}
frase = "Eu vi dois estudandes tres de FP quatro em dez"
frase2 = frase.split()

def translateno():
    for w in range(len(frase2)):   
        if frase2[w] in d:
            frase2[w] = d.get(frase2[w])
    frase = ' '.join(frase2)
    print(frase)

translateno()