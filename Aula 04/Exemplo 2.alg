/*2- Escreva um algoritmo que solicite um número inteiro 
ao usuário e escreva se ele é par ou ímpar.
num % 2==0
num mod2 == 0 */

algoritmo parOuImpar
inicio
	inteiro numero
	escreva("Digite um número")
	leia(numero)
	se(numero % 2 == 0){
		escreva("O número "+ numero + " é par")
	}
	senão{
		escreva("O número "+ numero + " é ímpar")
	}	
fim 