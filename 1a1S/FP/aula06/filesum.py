from tkinter import filedialog

def main():
    # 1) Pedir nome do ficheiro (experimente cada alternativa):
    #name = input("File? ")                                  #A
    name = filedialog.askopenfilename(title="Choose File") #B

    # 2) Calcular soma dos números no ficheiro:
    total = fileSum(name)
    
    # 3) Mostrar a soma:
    print("Sum:", total)


def fileSum(filename):
    # Complete a função para ler números do ficheiro e devolver a sua soma.
    soma = 0
    with open(filename, 'r') as file1:
        for line in file1:
            if float(line):
                soma += float(line)
            else:
                continue
    return soma
        


if __name__ == "__main__":
    main()

