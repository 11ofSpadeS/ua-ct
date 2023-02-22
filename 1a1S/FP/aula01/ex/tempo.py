""""
t = int(input('Tempo?'))
s = t % 60
m = t // 60
if m > 60 :
    h = m // 60
    m = m %  60
print("{:02d}:{:02d}:{:02d}".format(h, m, s))
"""
sec = float(input("segundos"))
h = 0
s = sec%60
m = sec//60
if m >= 60:
      h = m//60
      m = m%60

print(h , m , s)