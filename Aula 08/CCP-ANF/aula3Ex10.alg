algoritmo exercio10
	inicio
		real cotacao, valor
		escreva("Qual a cotação do dólar hoje em R$ ?")
		leia(cotacao)
		escreva("Qual o valor em U$ a ser convertido?")
		leia(valor)

		escreva("O valor equivalente em reais é: R$" + converteDolar(valor, cotacao))
	fim 
	
real converteDolar(real valor, real cotacao)
		retorne (valor * cotacao)
	fim 