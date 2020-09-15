algoritmo areaRetangulo
	inicio
        real a, b, area
        escreva ("Digite o primeiro lado do retangulo em cm")
        leia (a)
        escreva ("Digite o segundo lado do retangulo em cm")
        leia (b)
        calcularArea(a, b)
	fim

void calcularArea(real a, real b)
	inicio
        real area
        area = a * b
        escreva ("O valor da area é:" + area)
	fim
	