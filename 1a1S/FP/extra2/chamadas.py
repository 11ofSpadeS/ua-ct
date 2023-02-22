def validnum(cellnum):
    valid = False
    n = [*cellnum]
    if n[0] == "+" and len(n) < 4:
        print("Número Inválido")
        valid = True
    elif len(n) < 3:
        print("Número Inválido")
        valid = True
    else:
        for i in n:
            try:
                float(i)
            except ValueError:
                if i == "+":
                    continue
                else:
                    print("Número Inválido")
                    valid = True
    return valid


def regcall():
    nval = True
    while nval == True:
        caller = input("Telefone de Origem? ")
        nval1 = validnum(caller)
        if nval1:
            continue  
        called = input("Telefone de Destino? ")
        nval2 = validnum(called)
        if nval2:
            continue
        nval = nval1 and nval2


def main():
    while True:
        print("""MENU)
        1) Registar Chamada
        2) Ler Ficheiro
        3) Listar Clientes
        4) Fatura
        5) Terminar""")
        op = input("Opção? ")
        if op == "1" or op == "1)":
            regcall()
        elif op == "2" or op == "2)":
            readfile()
        elif op == "3" or op == "3)":
            listcl()
        elif op == "4" or op == "4)":
            fatura()
        elif op == "5" or op == "5)":
            break
        else:
            print("Opção Inválida")
            continue


main()