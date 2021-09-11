algoritmo aula3Ex3
	real valor
	inteiro qparcelas
	inicio
		escreva("Digite o valor da compra R$ ")
		leia(valor)
		escreva("Digite a quantidade de parcelas")
		leia(qparcelas)
		
		escreva("A compra será em " + qparcelas + "parcelas de R$" + 
									calculaParcela(valor, qparcelas))
	fim 
	
real calculaParcela(real valor, inteiro qparc)
	real parcelas
	valor = valor + valor * (5/100)
	parcelas = valor / qparc
	retorne(parcelas)
	fim 


