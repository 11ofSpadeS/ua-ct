
def factorial(n):
   assert isinstance(n, int), "n should be an int"
   assert n >= 0 , "n should not be negative"
   fac = 1
   if n == 0:
      fac = 1
   for x in range (1 , n+1): 
        fac = fac*x
   return fac

print (factorial(int(input("n?"))))