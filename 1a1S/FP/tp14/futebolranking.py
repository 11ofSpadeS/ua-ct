import csv
from statistics import mean 

file = "Soccer_Football Clubs Ranking.csv"
savefile = "clubsbycountry.txt"

#recebe o nome do ficheiro e cria uma lista de tuplos
def tuplecreate(file):
    with open (file , 'r' , encoding="utf8") as database:
        database.readline()
        db = csv.reader(database)
        tuplelst = list(tuple(line) for line in db)
        #print(tuplelst)
    return tuplelst

#recebe o nome de um pais e apresenta a lista de clubes desse pais
def countryclubs(file , country):
    clubsincountry = []
    clubs = tuplecreate(file)
    for clubdata in clubs:
        if clubdata[2] == country:
            print(clubdata[1] , clubdata[0], clubdata[3])
            clubsincountry.append((clubdata[1] , clubdata[0] , clubdata[3]))
        else:
            continue
    return clubsincountry

#escreve os clubes de um dado pais num ficheiro
def countrywrite(savefile, clubs):
    with open(savefile , 'w' , encoding="utf8") as file:
            for data in clubs:
                clubinfo  = data[0] + " " +  data[1] + " " + data[2] + "\n"
                file.write(clubinfo)


#recebe lista de tuplos e devolve dicionario em que o chave é o pais
def countrydic(tuplelst):
    cd = {}
    for club in tuplelst:
        if club[2] not in cd:
            cd[club[2]] = [club[1]]
        else:
            cd[club[2]] += [club[1]]
    return cd

#recebe lista de tuplos e devolve o clube que mais subiu no ranking
def rankup(tuplelst):
    defaultimprove = 0
    for club in tuplelst:
        if club[-1] == "+":
            improve = int(club[3]) - int(club[5])
            if defaultimprove < improve:
                defaultimprove = improve
                rankup = club
            else:
                continue
        else:
            continue
    return rankup

#pede o nome de um clube e apresenta informação sobre esse clube caso este exista
def clubinfo(tuplelst):
    x = ""
    while True:
        club = input("Clube? ")
        for team in tuplelst:
            if club not in team:
                x = "na"
                continue
            else:
                return team
        if x == "na":
            print("O clube não existe ou o nome está incorreto")
            continue        
            

def avgrank(tuplelst):
    countryrank = {}
    countryavg = {}
    for clubdata in tuplelst:
        if clubdata[2] not in countryrank:
            countryrank[clubdata[2]] = [int(clubdata[0])]
        else:
            countryrank[clubdata[2]] += [int(clubdata[0])]

    for country in countryrank:
        countryavg[country] = round(mean(countryrank.get(country)) , 2)
    return countryavg


def main():

   # tuplecreate(file)
   # country = input("Country?")
   # clubsincountry = countryclubs(file , country)
   # countrywrite(savefile , clubsincountry)
    tuplelst = tuplecreate(file)
   # print(countrydic(tuplelst))
   # print(rankup(tuplelst))
   # print(clubinfo(tuplelst))
    print(avgrank(tuplelst))

main()