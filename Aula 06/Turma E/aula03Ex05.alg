algoritmo velocidade
	inicio
		inteiro i
		real d, t
		para(i = 1; i <= 3; i++){
			escreva("Digite a distância em metros")
			leia(d)
			escreva("Digite o tempo em segundos")
			leia(t)
			escreva("A velocidade é: " + calculaVel(d, t))
		}
	fim

void calculaVel(real dist, real tempo)
	inicio
		real vel
		vel = dist / tempo
		retorne vel
	fim
	