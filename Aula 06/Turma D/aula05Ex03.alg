algoritmo aula05_ex03
	inicio
		inteiro num, i
		real soma
		escreva("Digite um número inteiro e positivo")
		leia(num)
		soma = 0
		para(i=1; i <= num; i++){
			soma = soma + 1/i
		}		
		escreva("A soma é " + soma)
	fim
	