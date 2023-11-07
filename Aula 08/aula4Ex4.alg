algoritmo aula4Ex4
	real salMinimo, salario
	inicio
		escreva("Digite o valor do salário mínimo": R$)
		leia(salMinimo)
		escreva("Digite o valor do salário: R$")
		leia(salario)
		
	fim 

void calculaSalario(real salMinimo, real salario) 
	real qteSalarios
	qtSalarios = salario/salMinimo
	escreva("Você recebe" + qtSalarios + " salários mínimos")
	fim 