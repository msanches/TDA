algoritmo exercicio3
	inteiro data, dia, mes, ano
	inicio
		escreva("Digite a data no formato ddmmaa")
		leia(data)
		dia = data/10000
		mes = data%10000/100
		ano = data%100
		escreva("Dia: " + dia)
		escreva("Mês: " + mes)
		escreva("Ano: " + ano)
	fim 