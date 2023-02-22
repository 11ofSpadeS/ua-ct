x1 = float(input("x1? "))
x2 = float(input("x2? "))
x3 = float(input("x3? "))

def max2(x1 , x2) :
    if x1 < x2 :
        maxi = x2
    else:
        maxi = x1
    return maxi


def max3() :
    maxi3 = max2(max2(x1 , x2) , x3)
    return maxi3

def main():
    print("O maximo entre x1 e x2 é:" , max(x1 , x2))
    print("O maximo entre x1 , x2 e x3 é:" , max3())

main()

    



