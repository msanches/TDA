def calculaParcelas(valor, parcelas):
		parcela = (valor * 1.05)/parcelas
		return(parcela)

valor = float(input("Digite o valor da compra R$ "))
parcelas = int(input("Digite a quantidade de parcelas "))
print("O valor de cada parcela será de R$", calculaParcelas(valor, parcelas))