algoritmo aula3Ex7
	inicio
		inteiro telheiro, quadrado
		escreva("Quantos pregos telheiro foram vendidos? ")
		leia(telheiro)
		escreva("Quantos pregos quadrado foram vendidos? ")
		leia(quadrado)
		calculaVendas(telheiro, quadrado)
	
	fim 

void calculaVendas(inteiro te, inteiro qua)
		real total, comissao
		total = te * 1.05 + qua * 0.51
		comissao = total * (10/100)
		escreva("O valor total arrecadado foi de R$ " + total)
		escreva("A comissão é R$ " + comissao)
		fim
