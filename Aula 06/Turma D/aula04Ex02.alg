algoritmo aula04_ex02
	inicio
		literal turno
		inteiro horas
		real salario
		escreva("Digite o turno de trabalho N/D")
		leia(turno)
		escreva("Digite a quantidade de horas trabalhadas")
		leia(horas)
		se(turno == 'n' ou turno == 'N'){
			salario = horas * 45
		} senao {
			salario = horas * 37.5
		}
		escreva("O salário é de " + salario)
	fim
	