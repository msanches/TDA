algoritmo fatorial
	inicio
		inteiro num, i
		inteiro fatorial = 1
		
		escreva("Digite um número inteiro")
		leia(num)
		
		se(num == 0)
			escreva("O fatorial é 1")
		senao {
				para(i = 1; i =< num; i++){
					fatorial *= i
				}
			escreva("O fatorial é: " + fatorial)	
			}
	
	fim
	
	