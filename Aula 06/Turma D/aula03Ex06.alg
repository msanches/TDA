algoritmo aula03_ex06
	inicio
		real valor
		escreva("Informe o valor do produto: ")
		leia(valor)
		escreva("O valor do produto com o desconto é de: R$" + calculaDesconto(valor))
	fim

real calculaDesconto(real valor)
	inicio
		real desconto
		desconto = valor - (valor * 9/100)
		retorne desconto
	fim
	total = valor - (valor * 9/100)