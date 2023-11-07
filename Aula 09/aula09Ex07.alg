algoritmo exemplo6
inicio
	real  sal[500], media
	literal  nome[500],sexo[500]
	inteiro i=0, n
	escreva  ("Digite quantidade de funcionários: ")
	leia (n)
	para(i=0; i<n; i++){
		escreva ("Digite o nome do funcionário: ")
		leia (nome[i])
		escreva ("Digite o gênero do funcionário: ")
		leia (sexo[i])
		escreva ("Digite o salário do funcionário:" )
		leia (sal[i])
	}

	real  soma=0, media
	inteiro  quantMulheres=0
	para(i=0; i<n; i++){
		se (sexo[i] = 'F'){
			soma += sal[i]
			quantMulheres++
		}
	}
	media  =  soma / quantMulheres
	escreva("Média salarial das mulheres: " + media)

	inteiro pos = 0
	real  menor = sal[0]
	para(i=1; i<n; i++){
		se ( sal[i] < menor ){
			menor = sal[i]
			pos = i
		}
	}
	escreva("Menor salário é R$" + sal[pos]
				+ " do funcionário: " + nome[pos]
				+ " do sexo:  " + sexo[pos] )

	inteiro  quantHomens = 0
	para (i=0; i<n; i++)
		se ( sal[i] > 1000  E  sexo[i]=’M’ ){
			quantHomens++
		}
	}
	escreva ("Qtde. de homens que ganham mais de R$1.000,00: "
            + quantHomens )

	real  menor = sal[0]
	para(i=1; i<n; i++)
		se ( sal[i] < menor ) então
			menor = sal[i]
		}
	}
	escreva ("O menor salário é R$" + menor )
	escreva ("Os trabalhadores que ganham R$"
              + menor + " são listados a seguir: " )
	para(i=0; i<n; i++){
		se ( sal[i] = menor ) então
			escreva  (nome[i]  +   " – "  +  sexo[i] )
		}
	}
fim
