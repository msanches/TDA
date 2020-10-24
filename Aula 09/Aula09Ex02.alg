algoritmo olhaOPoste
	inicio
		real aceleracao
		escreva("Digite a aceleracao")
		leia(aceleracao)
		imprimirMensagem(aceleracao)
	fim 
	
real calculaDistancia(real ac)
	inicio
		retorne 400 / (2 * ac) 
	fim

void imprimirMensagem(real a)
	inicio
		se(calculaDistancia(a) >= 100)
			escreva("BATEU")
		senao
			escreva("UFA")
	fim 