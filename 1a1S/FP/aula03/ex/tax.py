def tax(r):
    if r <= 1000:
        taxr = 0.1 * r
    elif 1000 < r <= 2000:
        taxr = 0.2 * r - 100
    else:
        taxr = 0.3 * r - 300
    return taxr

r = float(input("r? "))
print(tax(r))
     