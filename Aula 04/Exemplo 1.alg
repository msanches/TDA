algoritmo Trigonometria
inicio
	real a
	escreva("Digite um ângulo em graus")
	leia(a)
	imprimeSenCosTan(converteAngulo(a))
fim

real converteAngulo(real angulo)
inicio
	retorne angulo * PI/180
fim

void imprimeSenCosTan(real angulo)
inicio
	escreva ("O seno do ângulo é " + sen(angulo))
	escreva ("O cosseno do ângulo é " + cos(angulo))
	escreva ("O tangente do ângulo é " + tan(angulo))
fim
