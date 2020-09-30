algoritmo aula03_ex05
	inicio
		inteiro dist, tempo, i
		
		para(i = 1; i <= 3; i++){
			escreva("Informe a distancia percorrida em km: ")
			leia  (dist)
			escreva("Informe o tempo em que essa distância foi percorrida: ")
			leia(tempo)
			escreva("A velocidade é de: " + velocidade(dist, tempo))
		}
	fim

real velocidade(inteiro d, inteiro t)
	inicio
		real vm
		vm = d / t
		retorne vm
	fim
	