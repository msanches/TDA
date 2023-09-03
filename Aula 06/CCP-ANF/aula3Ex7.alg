algoritmo exercicio7
	real arrecadado, comissao
	inteiro telheiro, quadrado
	inicio
		escreva("Quantos pregos telheiros foram vendidos?")
		leia(telheiro)
		escreva("Quantos pregos quadrados foram vendidos?")
		leia(quadrado)
		arrecadado = calculaValor(telheiro,quadrado)
		comissao = calculaComissao(arrecadado)
		escreva("O total arrecadado: R$"+arrecadado+"O valor da comissão: R$"+comissao)
	fim
	
real calculaValor(inteiro t, inteiro q)
	real telhado = 1,05 * t
	real quadrado = 0,51 * q
	real total = telhado + quadrado
	retorne(total)
fim

real calculaComissao(real valor)
	real comissao = valor * 0.1
	retorne(comissao)
fim 