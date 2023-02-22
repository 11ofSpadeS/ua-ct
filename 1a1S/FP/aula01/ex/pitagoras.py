import math

pi = 22/7
catA = float(input('Comprimento cateto A?'))
catB = float(input('Comprimento cateto B?'))
h = math.sqrt(catA**2 + catB**2)
sin = catB / h
a = math.asin(sin)
adeg = a*(180/pi)
print('A hipotenusa tem', h , 'cm de comprimento e o angulo formado entre o cateto A e a hipotenusa é de' , adeg, )