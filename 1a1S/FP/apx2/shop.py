# Pode correr o programa sem argumentos:
#   python3 shop
# ou passando outros ficheiros de produtos como argumento:
#   python3 shop produtos1.txt ...

def loadDataBase(fname, produtos):
   """
   Lê dados do ficheiro fname e atualiza/acrescenta a informação num
   dicionário de produtos com o formato {código: (nome, secção, preço, iva), ...}.
   """
   
   with open(fname, 'r', encoding="utf-8") as file1:
      file1.readline() #ignorar 1a linha
      for line in file1:
            line = line.strip() #remover newline character \n
            prodbuff = line.split(";")  #separar cada linha numa lista
            prodbuff[-1] = float(prodbuff[-1].strip('%'))/100 #converter % para float com que possamos trabalhar
            produtos[prodbuff[0]] = tuple(prodbuff[:0] + prodbuff[0+1:]) #adicionar ou atualizar um produto
   return produtos
                      
    



def registaCompra(produtos , buyfinal):
   """Lê códigos de produtos (ou códigos e quantidades),
   mostra nome, quantidade e preço final de cada um,
   e devolve dicionário com {codigo: quantidade, ...}
   """
   buyfinal = {}
   proddic = {}                        #dicionario com o codigo do produto : quantiade total
   while True:
      code = input("Code? ").split()
      if len(code) == 0:               #caso o utilizador nao insira input
         break
      elif len(code) > 2:
         continue
      elif len(code) == 1:             #caso o utilizador insira apenas o codigo/id
         id = code[0]
         if id not in produtos:        #verificar se o produto existe
            continue
         else:
            if id in proddic:          #manter registo da quantidade total
               proddic[id] +=1         #manter registo da quantidade total
            else:                      #manter registo da quantidade total
               proddic[id] = 1         #manter registo da quantidade total
         preço = produtos[id][2]
         preço = float(preço)
         iva = produtos[id][-1]
         iva = float(iva)
         pfinal = preço + (preço * iva)
         pfinal = round(pfinal , 2)
         buyfinal[id] = (produtos[id][0], proddic[id] , produtos[id][1] , pfinal*proddic[id] , produtos[id][-1])
         
         print(produtos[id][0], 1, pfinal )
      else:                            #caso o utilizador insira um codigo/id e uma quantidade
         quant = int(code[1]) 
         id = code[0]
         if id in produtos:            #verificar se o produto existe
            if id in proddic:          #caso exista uma compra anterior deste produto
               proddic[id] += quant
            else:
               proddic[id] = quant     #caso seja a primeira compra deste produto
            preço = produtos[id][2]
            preço = quant * float(preço)
            iva = produtos[id][-1]
            iva = float(iva)
            pfinal = preço + (preço * iva)
            pfinal = round(pfinal , 2)
            buyfinal[id] = (produtos[id][0], proddic[id] , produtos[id][1] , pfinal*proddic[id] , produtos[id][-1])
            print(produtos[id][0], quant, pfinal )
         else:
            continue
   return buyfinal  
    



def fatura(produtos, compra):
   secçoes = ["placeholder"]
   preçoliq = 0
   preçobrut = 0
   """Imprime a fatura de uma dada compra."""
   while True:
        try:
            ncompra = int(input("Numero compra? "))
            break
        except (ValueError, IndexError):
            continue
   buyfinal = compra[ncompra-1]
   for prod in buyfinal:
      preçobase = float(produtos[prod][2])            #preço sem iva
      preçofinal = (preçobase * buyfinal[prod][1])    #preço final sem iva
      preçofinal += (preçofinal * buyfinal[prod][-1]) #preço final com iva
      iva = round(buyfinal[prod][-1]*100)
      preçoliq += preçofinal
      preçobrut += float(produtos[prod][2]) * buyfinal[prod][1]
      preçobrut = round(preçobrut , 2)
      if buyfinal[prod][2] not in secçoes:  
         secçoes[0] = (buyfinal[prod][2])
         print("{} \n {:>3} {:<31} ({:>2}%) {:>10} ".format(buyfinal[prod][2] , buyfinal[prod][1] ,buyfinal[prod][0], iva , round(preçofinal,2)))
      else:
         print("{:>4} {:<31} ({:>2}%) {:>10} ".format(buyfinal[prod][1] ,buyfinal[prod][0], iva , round(preçofinal,2)))
     
   print("{:>30}: {:>10}".format("Total Bruto" , preçobrut))
   print("{:>30}: {:>10}".format("Total IVA" , round(preçoliq - preçobrut , 2)))
   print("{:>30}: {:>10.2f}".format("Total Liquido" , preçoliq))

faturas = []

def main(args):
   produtos = {'p1': ('Ketchup.', 'Mercearia Salgado', 1.59, 0.23)}   # produtos guarda a informação da base de dados numa forma conveniente.

   buyfinal = {}                                                      #dicionario com o codigo : (produto , quantidade , secção , preço final e iva)
   # Carregar base de dados principal 
   loadDataBase("produtos.txt", produtos)
   # Juntar bases de dados opcionais (Não altere)
   for arg in args:
      loadDataBase(arg, produtos)
    
    

   # Use este código para mostrar o menu e ler a opção repetidamente
   MENU = "(C)ompra (F)atura (S)air ? "
   repetir = True
   while repetir:
      # Utilizador introduz a opção com uma letra minúscula ou maiúscula
      op = input(MENU).upper()
      # Processar opção
      if op == "C":
         # Esta opção regista os produtos de uma compra
         compra = registaCompra(produtos, buyfinal)
         faturas.append(compra)
      elif op == "F":
         fatura(produtos, faturas) 
      elif op == "S":
         repetir = False # Esta opção termina o programa

   print("Obrigado!")


# Não altere este código / Do not change this code
import sys
if __name__ == "__main__":
    main(sys.argv[1:])

