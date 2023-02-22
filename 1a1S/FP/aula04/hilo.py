# Complete the code to make the HiLo game...

import random

def main():
    # Pick a random number between 1 and 100, inclusive
    secret = random.randrange(1, 101);
    print (secret)
    print("Can you guess my secret?")
    for n in range (1, 101):   
        t = 1
        t = t + 1
        yg = int(input("Your guess?"))
        if yg == secret:
            print ("Good job, acertaste em", t , "tentativas")
            exit()
        elif yg > secret:
            print("High")  
            continue
        else:
            print("Low") 
            continue



     


main()
