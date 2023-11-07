algoritmo Exemplo4
	real media
	inteiro idade[20], soma, i, acima
	inicio
		soma = 0
		acima = 0
		para(i = 0; i < 20; i++){
			escreva("Digite a idade do aluno:")
			leia(idade[i])
			soma = soma + idade[i]
		}
		media = soma / tamanho(idade)
		para(i = 0; i < 20; i++){
			se(idade[i] > media)
				acima++
		}
		escreva("A média de idade dos alunos é de: " + media)
		escreva("O número de alunos acima da 
					média de idade é de: " + acima)
	fim	