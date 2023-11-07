algoritmo aula3Ex4
	real a, b, c, delta, x1, x2
	inicio
		escreva("Digite o coeficiente a: ")
		leia(a)
		escreva("Digite o coeficiente b: ")
		leia(b)
		escreva("Digite o coeficiente c: ")
		leia(c)
		
		escreva("X1 = " + getX1(a, b, c) + "\nX2 =" + getX2(a, b, c))
	fim 
	
real getDelta(real a, real b, real c)
		real delta
		delta = b*b - 4*a*c
		retorne delta
	fim 
	
real getX1(real a, real b, real c)
		real x1
		x1 = (-b + raiz(getDelta(a, b, c)))/2*a
		retorne(x1)
	fim 
	
real getX2(real a, real b, real c)
		real x2
		x2 = (-b - raiz(getDelta(a, b, c)))/2*a
		retorne(x2)
	fim 