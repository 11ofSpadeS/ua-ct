import csv
from statistics import mean 

def tuplecreate(file):
    with open (file , 'r' , encoding="utf8") as database:
        database.readline()
        db = csv.reader(database)
        tuplelst = list(tuple(line) for line in db)
        #print(tuplelst)
    return tuplelst

def avgtemp(tuplelst):
    alltemps = 0
    totaltemps = 0
    for tempreg in tuplelst:
        alltemps += float(tempreg[2])
        totaltemps += 1
    tempavg = round((alltemps / totaltemps) , 2)
    return tempavg


def maxtemp(tuplelst):
    temps = []
    for temp in tuplelst:
        temps.append(float(temp[2]))
    print(temps)
    maxtemp = max(temps)
    return maxtemp

def mintemp(tuplelst):
    temps = []
    for temp in tuplelst:
        temps.append(float(temp[2]))
    print(temps)
    minimum = min(temps)
    return minimum

def main():
    data = tuplecreate("weather.csv")

    print(avgtemp(data))

    print (maxtemp(data))

    print(mintemp(data))

main()