nome = input("Digite o nome do produto: ")
qte = int(input("Digite a quantidade comprada: "))
preco = float (input ("Digite o preço unitário: R$ "))

total = preco * qte
if(qte > 10):
  desconto = total * 0.05
elif(qte > 5):
  desconto = total * 0.03
else:
  desconto = total * 0.02

print("\n------------------------")
print("Total: R$", total, "\nDesconto: R$", desconto, "\nTotal a pagar: R$", total - desconto )