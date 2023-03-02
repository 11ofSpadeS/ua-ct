"""
A sequência de Fibonacci começa com os números 0 e 1.  Depois, cada elemento
consecutivo da sequência obtém-se pela soma dos dois elementos anteriores.
Complete a função genFibonacci(n) para _devolver_ uma lista com os n primeiros
números de Fibonacci.  Por exemplo, se n=6, deve devolver [0, 1, 1, 2, 3, 5].
A função só tem de funcionar para n>=2.
"""

def genFibonacci(n):
    lst = []
    assert n >= 2
    for i in range(n):
        if i == 0:
            lst.append(i)
        elif i == 1:
            lst.append(i)
        else:
            fn = lst[i-2] + lst[i-1]
            lst.append(fn)
    return lst

