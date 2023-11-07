algoritmo aula4Ex2
	real salMin, qtKw, valorKw, valorPago, valorDescontado
	inicio
		escreva("Digite o valor do salário mínimo: R$")
		leia(salMin)
		escreva("Digite a quantidade de quilowatts gasto: ")
		leia(qtKw)
		valorKw = salMin / 700
		valorPago = qtKw * valorKw
		valorDescontado = valorPago * 0.9
		
		escreva("Cada kw custa R$" + valorKw)
		escreva("O valor a ser pago é R$ " + valorPago)
		escreva("O valor com desconto é R$ " + valorDescontado)
	fim 