algoritmo aula04_ex04
	inicio
		inteiro codigo, percentual
		real salario, valorAumento
		literal cargo
		escreva("Digite o código do seu cargo")
		leia(codigo)
		escreva("Digite o seu salario")
		leia(salario)
		escolha(codigo){
			caso 1:
				cargo = "Escriturário"
				percentual = 50/100
			pare
			caso 2:
				cargo = "Secretário"
				percentual = 35/100
			pare
			caso 3:
				cargo = "Caixa"
				percentual = 20/100
			pare
			caso 4:
				cargo = "Gerente"
				percentual = 10/100
			pare
			caso 5:
				cargo = "Diretor"
				percentual = 0
			pare
			padrao:
			escreva("Código inválido")
		}
		valorAumento = salario * (1 + percentual)
		salario = salario valorAumento
		escreva("Cargo " + cargo + "aumento" + valorAumento + "salário novo " + salario)
	fim
	