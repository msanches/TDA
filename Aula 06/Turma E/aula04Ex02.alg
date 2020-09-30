algoritmo salario
	inicio
		real horas, salario
		literal turno
		escreva("Digite as horas trabalhadas")
		leia(horas)
		escreva("Digite seu turno (N ou D)")
		leia(turno)
		
		se(turno == 'n' e turno == 'N'){
			salario = horas * 45
		} senao {
			salario = horas * 37.5
		}
		
		escreva("O seu salário é de: " + salario)
	fim
	