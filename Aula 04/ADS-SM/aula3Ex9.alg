algoritmo aula3Ex9
	real peso, altura
	inicio
		escreva("Digite o seu peso em kg")
		leia(peso)
		escreva("Digite a sua altura em m")
		leia(altura)
		
		calculaIMC(peso, altura)	
	fim
	
void calculaIMC(real peso, real altura)
		real imc = peso / (altura * altura)
		escreva("O seu IMC é: " + imc + "kg/m²")
	fim 