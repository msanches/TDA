algoritmo aula3Ex5
	inicio
		real distancia, tempo
		escreva("Digite a distância percorrida em km")
		leia(distancia)
		escreva("Digite o tempo gasto em h")
		leia(tempo)
		
		escreva("A velocidade é :" + calculaVelocidade(distancia, tempo) + "km/h")
		escreva("A velocidade é :" + calculaVelocidade(100, 5) + "km/h")
		escreva("A velocidade é :" + calculaVelocidade(250, 8) + "km/h")
	fim 

real calculaVelocidade(real dist, real temp)
	real velocidade
	velocidade = dist/temp
	retorne(velocidade)
	fim
	