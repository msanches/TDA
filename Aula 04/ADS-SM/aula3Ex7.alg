algoritmo aula3Ex7
	real qTelheiro, qQuadrado
	inicio
		escreva("Digite a quantidade de pregos telheiro que foi vendida:")
		leia(qTelheiro)
		escreva("Digite a quantidade de pregos quadrado que foi vendida:")
		leia(qQuadrado)
		escreva("O valor da comissão é: R$" + calculaComissao(qTelheiro, qQuadrado))
		escreva("O valor total arrecadado é: R$" + calculaTotal(qTelheiro, qQuadrado))
	fim

real calculaTotal(real telheiro, quadrado)
		real total = telheiro*1.05 + quadrado*0.51
		retorne(total)
	fim

real calculaComissao(real telheiro, quadrado)
		real comissao = calculaTotal(telheiro, quadrado)*0.10
		retorne(comissao)
	fim 