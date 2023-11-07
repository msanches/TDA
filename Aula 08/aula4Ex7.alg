algoritmo aula4Ex7
	real altura, escada, distancia
	inicio
		escreva("Digite a altura desejada em m")
		leia(altura)
		escreva("Digite o tamanho da escada em m")
		leia(escada)
		distancia = raiz(escada*escada - altura*altura)
		escreva("A distância é: " + distancia + "metros")
	fim 