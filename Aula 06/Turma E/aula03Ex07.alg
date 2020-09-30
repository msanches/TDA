algoritmo olhaOPrego
	inicio
		inteiro n
		real vendas, comissao
		escreva("Qual a quantidade de pregos telheiro que foi vendida?")
		leia(n)
		vendas = 1.05 * n
		escreva("Qual a quantidade de pregos quadrado que foi vendida?")
		leia(n)
		vendas = vendas + (0.51 * n)
		comissao = vendas * 0.1
		escreva("O valor arrecadado é de " + vendas)
		escreva("O valor da comissão é de " + comissao)
	fim
	