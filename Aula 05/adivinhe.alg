algoritmo
	inicio
		inteiro num, x, i
		num = rand(20) \\gera um número aleatório entre 0 e 20
		i = 0
		
		faça{
			i = i + 1
			escreva("Digite um número entre 0 e 20: ")
			leia (x)
			se (x == num)
				escreva("Parabéns, você acertou em " + i + " tentativas")
			senao se (x < num)
				escreva("O número pensado é maior")
			senao
				escreva("O número pensado é menor")
		} enquanto ( x != num)
	fim
	
	