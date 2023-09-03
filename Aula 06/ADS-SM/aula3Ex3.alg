algoritmo aula3Ex3
	real valor
	inteiro parcelas
	inicio
		escreva("Digite o valor da compra R$")
		leia(valor)
		escreva("Digite o número de parcelas")
		leia(parcelas)
		
		escreva("O valor de cada parcela será de R$" + calculaParcelas(valor, parcelas))
	fim 

real calculaParcelas(real valor, inteiro parcelas)
		real parcela
		parcela = (valor * 1.05)/parcelas
		retorne(parcela)
	fim
