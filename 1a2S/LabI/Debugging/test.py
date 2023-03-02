import pytest
from fibonacci import genFibonacci

def teste1():
    if genFibonacci(0) == [0] and genFibonacci(-1) == []:
        print("Teste OK")
    else:
        print("Teste Falhou")
