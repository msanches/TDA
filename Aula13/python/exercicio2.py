litros = int(input("Digite a qte de litros vendidos: "))
tipo = input("Digite o tipo de combustível: ")

if(tipo == "a" or tipo == "A"):
  if(litros > 20):
    valor = 2.9 * 0.95
  else:
    valor = 2.9 * 0.97
elif(tipo == "g" or tipo == "G"):
  if(litros > 20):
    valor = 3.3 * 0.96
  else:
    valor = 3.3 * 0.94

print(litros * valor)