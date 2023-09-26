algoritmo consistencia
    real nota, soma, media
	inteiro i
    início
		soma = 0
		para(i=1; i<=3; i++){
			faca {
				escreva ("Digite a ", i, "º nota do aluno (0-10): ")
				leia (nota)
				se(nota < 0 ou nota > 10)
					escreva("Média digitada inválida\n")
				senao
					soma += nota
			} enquanto (nota < 0 ou nota > 10)
		}
		media = soma/3
		escreva ("\nA média do aluno é:", media, "\n")    
    fim