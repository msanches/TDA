algoritmo produtos
inicio
	inteiro produtos[] = {10, 23, 34, 50, 10, ..., 10, 5, 11}

	escreva("A média vendida nesse período foi de: " + calculaMedia() + " produtos")
	escreva("A maior quantidade vendida foi " + maiorQuantidade() + " e a menor foi " + menorQuantidade())
	escreva("A média vendida foi superada por " + qteMaiorQueAMedia() + "dias nesse período")	
fim

real calculaMedia()
	inicio
		inteiro soma = 0
		para(i = 0; i < 365; i++){
			soma += produtos[i]
		}
		retorne (soma/365)
	fim

real maiorQuantidade()
	inicio
		inteiro maior = 0
		para(i = 0; i < 365; i++){
			se(produtos[i] > maior)
				maior = produtos[i]
		}
		retorne maior
	fim

real menorQuantidade()
	inicio
		inteiro menor = maiorQuantidade()
		para(i = 0; i < 365; i++){
			se(produtos[i] < menor)
				menor = produtos[i]
		}
	retorne menor
	fim

real qteMaiorQueAMedia()
	inicio
		inteiro qte = 0
		para(i = 0; i < 365; i++){
			se(produtos[i] > calculaMedia())
				qte++
		}
		retorne qte
	fim 