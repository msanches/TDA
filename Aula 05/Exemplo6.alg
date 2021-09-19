algoritmo triangulo
real a,b,c
inicio
    escreva ("Entre com o valor de a: ")
    leia (a)
    escreva ("Entre com o valor de b: ")
    leia (b)
    escreva ("Entre com o valor de c: ")
    leia (c)
    se (((a<(b+c)) e (b<(a+c)) e (c<(a+b))) {
        escreva("Os lados formam um triângulo")
    se((a==b) e (b==c)){
       escreva("Equilátero")
    }
    senão { 
        se((a==b) ou (b==c) ou (a == c)){
           escreva("Isósceles")
         }
         senão{
           escreva("Escaleno")
         }
     }
    senão{
        escreva("Os lados não formam um triângulo")
    }
fim
