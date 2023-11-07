algoritmo exercicio1
	real deposito, taxa, valor, total
	inicio
		escreva("Digite o valor do depósito")
		leia(deposito)
		escreva("Digite a taxa de juros")
		leia(taxa)
		valor = deposito*taxa/100
		total = deposito + valor
		escreva("Redimento: R$ " + valor + "\nTotal: R$" + total)
	fim
	
