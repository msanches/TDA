algoritmo produtos
inicio
	inteiro produtos[] = {10, 23, 34, 50, 10, ..., 10, 5, 11}
	inteiro i, maior = 0, menor, soma = 0, qte = 0
	real media
	
	para(i = 0; i < 365; i++){
		soma += produtos[i] //acumular
	}
	media = soma / 365 //resposta da letra b)
	
	para(i = 0; i < 365; i++){
		se(produtos[i] > maior)
			maior = produtos[i]
		se(produtos[i] > media)
			qte++
	}
	menor = maior
	para(i = 0; i < 365; i++){
		se(produtos[i] < menor)
			menor = produtos[i]
	}
	escreva("A média vendida nesse período foi de: " + media + " produtos")
	escreva("A maior quantidade vendida foi " + maior + " e a menor foi " + menor)
	escreva("A média vendida foi superada por " + qte + "dias nesse período")	
fim
