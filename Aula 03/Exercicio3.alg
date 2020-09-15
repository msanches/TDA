algoritmo calculaMinutos
	inicio
		inteiro horas, minutos
		escreva("Digite a quantidade de horas.")
		leia(horas)
		escreva("Digite a quantidade de minutos.")
		leia(minutos)
		minutosCalc(horas, minutos)
	fim

void minutosCalc(inteiro h, inteiro m)
	inicio
		inteiro resultado
		resultado = h * 60 + m
		escreva("Passaram-se " + resultado + "minutos")
	fim
		