algoritmo exercicio4
	real a, b, c
	inicio
		escreva("Digite o coeficiente a: ")
		leia(a)
		escreva("Digite o coeficiente b: ")
		leia(b)
		escreva("Digite o coeficiente c: ")
		leia(c)
		getX1(a, b, c)
		getX1(a, b, c)
	fim 

real getDelta(real a, real b, real c)
		real delta
		delta = b*b - 4*a*c
		retorne (delta)
	fim 
	
void getX1(real a, real b, real c)
		real x1
		x1 = (-b + raiz(getDelta(a, b, c)) / 2*a
		escreva("X1 = " + x1)
	fim 
	
void getX2(real a, real b, real c)
		x1 = (-b - raiz(getDelta(a, b, c)) / 2*a
		escreva("X2 = " + x2)
	fim 