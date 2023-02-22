m = int(input('Moradores por piso?'))
a = int(input('Numero de andares?'))
alt = 3 * a
d = 0 
for i in range(a+1):
    d+= 4 * 3 * i * m   
t = (d*365) // 3600
dAno = (d * 365) / 1000
print('O elevador percorre' , dAno , 'Kms por ano')
print('O elevador esta em funcionamento' , t , 'horas por ano')
