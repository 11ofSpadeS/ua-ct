
# This program generates 20 terms of a sequence by a recurrence relation.
Un = 100                   # Un = each term of the sequence. Initially = U0
def f(Un):
    x = 0
    while Un > 0:
        print(Un)
        x = x + 1
        Un = 1.01*Un - 1.01  
    return x    
           # Set Un to the next term of the sequence True:
           
print (f(Un))