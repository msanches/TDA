algoritmo menuOpc
	inicio
		inteiro opc, num1, num2
		escreva("Digite o primeiro número")
		leia(num1)
		escreva("Digite o segundo número")
		leia(num2)
		escreva("Menu de opções")
		escreva("1- Somar dois números")
		escreva("2- Subtrair dois números")
		escreva("3- Multiplicar dois números")
		escreva("4- sair")
		escreva("Digite uma opção:")
		leia(opc)
		escolha (opc){
			caso 1:
				soma(num1, num2)
				pare
			caso 2:
				subtracao(num1, num2)
				pare
			caso 3:
				multiplicacao(num1, num2)
				pare
			caso 4:
				divisao(num1, num2)
				pare
			caso 5:
				pare	
			padrao:
				escreva("Opção inválida")
		}
	fim

void soma(inteiro n1, inteiro n2)
	inicio
		escreva("A soma dos números é igual a " n1 + n2)
	fim

void subtracao(inteiro n1, inteiro n2)
	inicio
		escreva("A subtração dos números é igual a " n1 - n2)
	fim
	
void multiplicacao(inteiro n1, inteiro n2)
	inicio
		escreva("A multiplicação dos números é igual a " n1 * n2)
	fim	
	
void divisao(inteiro n1, inteiro n2)
	inicio
		se(n2 != 0)
			escreva("A divisao dos números é igual a " n1 / n2)
		senao
			escreva("Operação inválida, o denominador não pode ser nulo")
	fim	
	
	
	
	