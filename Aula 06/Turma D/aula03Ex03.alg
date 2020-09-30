algoritmo aula03_ex03
	inicio
		real valorCompra
		inteiro qtParcelas
		escreva("Digite o valor da compra R$")
		leia(valorCompra)
		escreva("Digite a quantidade de parcelas")
		leia(qtParcelas)
		escreva("O valor das parcelas é de: " + calculaParcela(valorCompra, qtParcelas))
	fim

real calculaParcela(real valor, inteiro parcelas)
	inicio
		real v
		v = valor * (1 + 5 /100)
		retorne (v / parcelas)
	fim
	