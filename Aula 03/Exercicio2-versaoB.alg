algoritmo areaRetangulo
inicio
   real a,b,area
   escreva("Digite o valor do lado A: ")
   leia(a)
   escreva("Digite o valor do lado B: ")
   leia (b)
   area = calcArea(a,b)
   escreva("Área = ", area)
fim

real calcArea(ladoA, ladoB)
inicio
    retorne (ladoA * ladoB)
fim
