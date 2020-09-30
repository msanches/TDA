algoritmo cofrinho
	inicio
		inteiro vc, d, c
		escreva("Digite o número de moedas de 25 centavos")
		leia(vc)
		escreva("Digite o número de moedas de 10 centavos")
		leia(d)
		escreva("Digite o número de moedas de 5 centavos")
		leia(c)
		escreva("O valor em reais é de: " + valorCofre(vc, d, c))

	fim
	
real valorCofre(inteiro vinteCinco, inteiro dez, inteiro cinco)
	inicio
		real valor
		valor = (vinteCinco * 0.25 +  dez * 0.1 + cinco * 0.05) / 100
		retorne valor
	fim	