algoritmo somaDeInversos
	inicio
		inteiro num, i
		real soma
		soma = 0
		escreva("Digite um número")
		leia(num)
		para(i = 1; i <= num; i++){
			soma = soma + 1/i
		}
		escreva("A soma é igual a " + soma)
	fim
	