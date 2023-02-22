people = [("John", 64.5 , 1.769) , ("Bertha", 64.0, 1.62) , ("Maria", 45.1 , 1.71) , ("Andy", 98.3 , 1.81) , ("Lisa" , 46.8 , 1.62) , ("Kelly" , 83.2, 1.78)]

above70 = [(a , b , c) for a , b , c in people if b > 70]

print(above70)