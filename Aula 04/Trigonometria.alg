algoritmo Trigonometria
	inicio
		real angulo
		escreva ("Entre com o valor do ângulo em graus")
		leia (angulo)
		calculaSenCosTan( converteRad(angulo))
	fim

real converteRad ( real angulo )
	inicio
		retorne angulo * PI/180
	fim

void calculaSenCosTan( real angulo) 
	inicio
		escreva("O seno de " + angulo + " é " + sen(angulo))
		escreva("O cosseno de " + angulo + " é " + cos(angulo))
		escreva("A tangente de " + angulo + " é " + tan(angulo))
	fim