algoritmo exercicio2
	real salarioMinimo, quilowatts, valorQuiloWatts, valorPago, desconto
	inicio
		escreva("Entre com o valor do salário mínimo:"
		leia(salarioMinimo)
		escreva("Entre com a quantidade de quilowatts gasto")
		leia(quilowatts)
		valorQuiloWatts = salarioMinimo/700
		valorPago = quilowatts * valorQuiloWatts
		desconto = valorPago * 0.9
		escreva("Preço do quilowatt: R$" + valorQuiloWatts)
		escreva("Valor a ser pago sem desconto: R$" + valorPago)
		escreva("Valor a ser pago com desconto: R$" + desconto)
	fim 