algoritmo aumentoSalario
	inicio
		inteiro cargo
		real salario, aumento
		escreva("Digite o código do cargo (1 -5)")
		leia(cargo)
		escreva("Digite seu salário")
		leia(salario)
		escolha(cargo){
			caso 1:
				imprime("Escriturário", salario, 0.5)				
			pare
			caso 2:
				imprime("Secreário", salario, 0.35)				
			pare
			caso 3:
				imprime("Caixa", salario, 0.2)				
			pare
			caso 4:
				imprime("Gerente", salario, 0.1)				
			pare
			caso 5:
				escreva("O diretor não tem direito a aumento")				
			pare
		}
	fim
	
void imprime(literal cargo, real salario, real percentual)
	inicio
		real aumento
		aumento = salario * percentual
		salario = salario + aumento
		escreva("O " + cargo + " terá um aumento de" + 
						aumento + " e passará a ganhar " + salario)
	fim

	