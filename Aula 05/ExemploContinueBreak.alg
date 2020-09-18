algoritmo ExContinue
inicio
	inteiro i 
	para (i = 0; i <= 10; i = i + 1){
		se (i % 2 == 0){
			continue
		}
		escreva(i) //imprime somente os ímpares
	}
fim


algoritmo ExBreak
inicio
	inteiro soma = 0
	real numero
	enquanto (verdadeiro){
		escreva("Digite um número ")
		leia(num)
		se (num == 0){
			break
		}
		soma = soma + num
	}
	escreva("Soma = "+ soma)
fim

