algoritmo aula2Ex3
	real a, b, d, areaTotal, areaUm, areaDois
	inicio
		escreva("Digite a base do retângulo 1 em cm:")
		leia(a)
		escreva("Digite a base do retângulo 2 em cm:")
		leia(d)
		escreva("Digite a altura dos retângulos em cm:")
		leia(b)
		
		areaUm = a * b
		areaDois = d * b
		areaTotal = areaUm + areaDois
		
		escreva("AT = " + areaTotal + "cm²")
		escreva("A1 = " + areaUm + "cm²")
		escreva("A2 = " + areaDois + "cm²")
	fim 
	