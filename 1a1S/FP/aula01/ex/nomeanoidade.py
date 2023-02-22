from wsgiref.validate import InputWrapper


n = str(input('Como te chamas?'))
a = int(input('Em que ano nasceste?'))
i = 2030 - a
print('Como te chamas?' , n )
print('Em que ano nasceste?' , a)
print(n , ' fará' , i , 'anos em 2030')