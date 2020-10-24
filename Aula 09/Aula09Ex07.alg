algoritmo numerosÍmpares
	inicio
		inteiro num[10], i, c
		c = 0
		para(i = 0; i < 10; i++){
			escreva("Digite um número inteiro")
			leia(num[i])
		}
		
		para(i = 0; i < 10; i++){
			se(num[i] % 2 != 0){
				escreva(num[i] + "posição" + i)
				c++
			}	
		}
		se(c == 0)
			escreva("Não há números ímpares nessa lista")
	
	fim
	