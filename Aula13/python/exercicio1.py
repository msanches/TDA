fixo = float(input("Digite o salário fixo: "))
vendas = float(input("Digite o valor das vendas "))

if(vendas <= 1500):
  comissao = vendas * 0.03
else:
  comissao = (vendas - 1500) * 0.05
  comissao += 1500 * 0.03

fixo += comissao
print("O salário total é de: R$ " , fixo)