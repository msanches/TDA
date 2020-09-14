/* 3- Implementar um algoritmo que obtenha a idade e 
mostre se a pessoa é maior ou menor de idade
*/

algoritmo maioridade
	inicio
		inteiro idade
		escreva ("Informe a sua idade: ")
		leia (idade)
		se (idade >= 18) {
			escreva("Você é maior de idade!")
		}
		senão {
			escreva("Você ainda não é maior de idade.")
		}
	fim 