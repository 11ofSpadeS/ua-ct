
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
    if dateIsValid(year, month, day) == False:
        print("A data inserida é invalida")
    else:
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
    months = [1 , 2 , 3, 4 , 5 , 6 , 7 , 8 , 9 , 10 , 11 , 12]
    if month not in months: 
        date = False
    elif month == 2:
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
        
def previousDay(year, month, day):
    if 1 < day < monthDays(year, month):
        day -= 1
    elif month != 1:
        month -= 1
        day = monthDays(year, month) 
    else:
        day = monthDays(year, 12)
        month = 12
        year -= 1
    return year,  month, day

def main():
    print("Verifica se foi/será ano bissexto")
    print(isLeapYear(int(input("Ano?"))))

    print("Verifica os dias existentes no mês (necessita que insiras o ano)")
    print(monthDays(int(input("Ano?")), int(input("Mês?"))))

    print("Verifica o dia seguinte à data fornecida?")
    print(nextDay(int(input("Ano?")), int(input("Mês?")), int(input("Dia?"))))

    print("Verifica se a data é válida inserindo o Ano, Mês e Dia:" )
    print(dateIsValid(int(input("Ano? ")) ,int(input("Mês? ")) ,int(input("Dia? "))))

    print("Verifica o dia anterior à data fornecida")
    print(previousDay(int(input("Ano?")), int(input("Mês?")), int(input("Dia?"))))

main()