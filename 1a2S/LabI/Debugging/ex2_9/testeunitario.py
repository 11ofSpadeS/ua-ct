import pytest
from calculadora import multiplicacao,div,raiz,soma,subtracao,restoDivisao


def test_sum_neg():
    assert soma(-1, -1) == -2

def test_sum_neg_pos():
    assert soma(-5, 1) == -4

def test_sum_pos():
    assert soma(6,6) == 12

def test_sub_neg():
    assert subtracao(-1, -1) == 0

def test_sub_neg_pos():
    assert soma(-5, 1) == -6

def test_sub_pos():
    assert subtracao(6,6) == 0


def teste_multiplicacao():
    assert multiplicacao(2, 2) == 4
    assert multiplicacao(3, 5) == 15
    assert multiplicacao(0.5, 10) == 5
    assert multiplicacao(-4, 8) == -32
    assert multiplicacao(0, 10) == 0
    assert multiplicacao(2.5, 4) == 10

def teste_raiz():
    assert raiz(0) == 0.0
    assert raiz(1) == 1.0
    assert raiz(4) == 2.0
    assert raiz(25) == math.sqrt(25)
    assert raiz(2567) == math.sqrt(2567)
    assert raiz(-1) == "ValueError"


def teste_raiz_geral(x):
    assert raiz(x) == math.sqrt(x)


def teste_divisao():
    assert div(n/n) == 1
    assert div(n/1) == n
    assert div(0/n) == 0
    assert div(n/0) == "ZeroDivisionError"

def test_restoDivisao():
    assert restoDivisao(10, 2) == 0
    assert restoDivisao(8, 5) == 3
    assert restoDivisao(1000, 754) == 246
    assert restoDivisao(-7, 7) == 0
    assert restoDivisao(7.4, 2) == 1.4
