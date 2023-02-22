
def isLeapYear(year):
   return year%4 == 0 and year%100 != 0 or year%400 == 0

def monthDays(year, month):
    if isLeapYear(year):
        f = 29
    else:
        f = 28
    MONTHDAYS = (0, 31, f , 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)
    days = MONTHDAYS[month]
    return days


def nextDay(year, month, day):  
    if day < monthDays(year, month):
        day += 1
    elif month != 12:
        month += 1
        day = 1
    else:
        day = 1
        month = 1
        year += 1
    
    return year, month, day

def dateIsValid(year, month, day):
    if month == 2:
        if day >= 30:
            date = False                   
        elif isLeapYear(year) == True and day <= 29:
            date = True
        elif isLeapYear(year) == False and day <= 28:
            date = True
        else:
            date = False
    else:
        if day <= monthDays(year, month):
            date = True
        else:
            date = False
    return date
        
#def previousDay(year, month, day):

print(dateIsValid(1999, 13, 2))