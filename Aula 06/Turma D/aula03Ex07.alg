algoritmo aula3_ex7
inicio

	inteiro qte
	real venda, comissao
	escreva("Informe a quantidade de pregos do tipo telheiro: ")
	leia(qte)
	venda = 1.05 * qte
	escreva("Informe a quantidade de pregos do tipo quadrado: ")
	leia(qte)
	venda = venda + (qte * 0.51)
	comissao = venda - (venda * 10/100)

	escreva("O valor total da venda foi R$" + venda + " . Portanto, a comissão é de " + comissao)

fim
