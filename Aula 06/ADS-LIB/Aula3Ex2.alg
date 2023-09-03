algoritmo aula3Ex2
	real a, b
	inicio
		escreva("Digite a base do retângulo em cm:")
		leia(a)
		escreva("Digite a altura do retângulo em cm:")
		leia(b)
		
		calculaArea(a, b)
	fim 
	
void calculaArea(real a, real b)
	real area
	area = a * b
	escreva("A área = " + area + "cm²")
	fim 