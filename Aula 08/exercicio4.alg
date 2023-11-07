algoritmo exercicio4
	inteiro salMin, salario
	inicio
		escreva("Digite o valor do salário mínimo")
		leia(salMin)
		escreva("Digite o valor do salário")
		leia(salario)
		calculaSalario(salMin, salario)
	fim 
void calculaSalario(real sm, real s)
	inicio
		real qte
		qte = s/sm
		escreva("Você recebe " + qte + "salários mínimos")
	fim 