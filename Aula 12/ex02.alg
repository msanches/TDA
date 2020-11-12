algoritmo aula12Ex02
	inicio
		inteiro anoNasc, anoIng, idade, tempoServ
		inteiro hoje = 2020
		
		escreva("Digite o ano de nascimento: ")
		leia(anoNasc)
		escreva("Digite o ano de ingresso: ")
		leia(anoIng)
		
		idade = hoje - anoNasc
		tempoServ = hoje - anoIng
		escreva("O funcionário tem: " + idade " anos de idade e " + tempoServ + "anos de empresa" )
	
		se(idade >= 65 ou tempoServ >= 30 ou (idade >= 60 e tempoServ >= 25))
			escreva("Requerer aposentadoria")
		senão 
			escreva("Não requerer")		
	fim
	