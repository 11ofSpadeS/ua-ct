def isLeapYear(year):
   return year%4 == 0 and year%100 != 0 or year%400 == 0

def printLeapYears(year1, year2):
    for x in range (year1 , year2):  
        if isLeapYear(x):
            print(x)


def numLeapYears(year1, year2):
   x = 0
   for a in range (year1 , year2):
      if isLeapYear(a) == True:
         x = x + 1
   return x

def listLeapYears(year1, year2):
   """Return a list of leap years in range [year1, year2[."""
   lst = []
   for x in range (year1 , year2):
      if isLeapYear(x):
         lst.append(x)
   return lst

# MAIN PROGRAM:
def main():
   printLeapYears(1870, 1921)

   x = numLeapYears(1679, 2079)
   print("In [1679, 2079[ there are", x, "leap years")

   print(listLeapYears(1970, 2002))


if __name__ == "__main__":
   main()