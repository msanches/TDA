algoritmo aula07Exercicio02
	inicio
		inteiro num[10], i, maior
		maior = 0
		//Leitura dos números
		para(i = 0; i <10; i++){
			escreva("Digite um número inteiro")
			leia(num[i])
		}

		para(i = 0; i < 10; i++){
			se(num[i] > maior) //comparo se o num armazenado é maior
				maior = num[i]
		}

		para(i = 0; i < 10; i++){
			num[i] = num[i]/maior //monto o vetor com os valores divididos por maior
			escreva(num[i])
		}
	fim


	/* teste de mesa */
	/*
	num[] = {5, 1, 6, 8, 10, 12, 3, 20, 18,9}
						maior = 0
	i = 0 	5 > 0?		maior = 5
	i = 1 	1 > 5?		maior = 5
	i = 2	6 > 5?		maior = 6
						maior = 12
	i = 7	20 > 12?	maior = 20

	*/
