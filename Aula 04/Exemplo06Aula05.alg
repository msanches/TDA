algoritmo hospedagem
	inteiro qtDiarias
	caractere tipo
	inicio
		escreva ("Digite a quantidade de diárias: ")
		leia (qtDiarias)
		escreva ("Digite o tipo de hospedagem:\n[S]imples\n[D]upla\n[T]ripla")
		leia (tipo)
		se(tipo == 's' ou tipo == 'S')
			escreva("Valor a pagar: R$" + (qtDiarias * 255.50))
		senao se(tipo == 'd' ou tipo == 'D')
			escreva("Valor a pagar: R$" + (qtDiarias * 305.50))
		senao se(tipo == 't' ou tipo == 'T')
			escreva("Valor a pagar: R$" + (qtDiarias * 360.50))
		senao
			escreva("Tipo de hospedagem inválido")
	fim

