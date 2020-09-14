Algoritmo valorPagar
	inicio
		real vcompra, valorjuros
		inteiro parcela
		escreva (“Qual o valor da mercadoria em R$?”)
		leia (vcompra)
		escreva (“Quantidade de parcelas : ”)
		leia (parcela)
		escreva ( “Valor a pagar por mês é R$” + calculaParcela(vcompra, parcela) )
	fim

real calculaParcela ( real vcompra, inteiro parcela )
	inicio
		real valorparcela
		valorparcela = (vcompra + (vcompra*5/100)) /parcela
		retorne valorparcela
	fim 