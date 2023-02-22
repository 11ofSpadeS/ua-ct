# Example: Print a multiplication table
# Like:
#   1 x 1  =   1
#   1 x 2  =   2
#   ...
#  10 x 10 = 100
#
# Make the program print an empty line after each group of ten.
# Also, use format specifiers to align the numbers.
#
# JMR 2019   
def main():
    for a in range (1 , 11):
        for b in range (1 , 11):
            tot = a * b
            print(a , "x" , b , "=" ,tot)
        print("")


if __name__ == "__main__":
   main()