algoritmo aula4Ex1
	inteiro deposito, taxa, rendimento, vTotal
	inicio
		escreva ("Digite o valor do deposito")
		leia (deposito)
		escreva ("Digite o valor da taxa de juros")
		leia (taxa)
		redimento = deposito * (taxa/100)
		vTotal = deposito + rendimento
		escreva ("O rendimento por mes " + rendimento)
		escreva ("O valor total é " + vTotal)
	fim 