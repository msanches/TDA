algoritmo Eq2G
    real a, b, c, delta, x1, x2
    início
        escreva("Digite o coeficiente a: ")
        leia(a)
        escreva("Digite o coeficiente b: ")
        leia(b)
        escreva("Digite o coeficiente c: ")
        leia(c)
        
        delta = b*b - 4*a*c
        se(delta < 0)
            escreva("Não existem raízes reais")
        senao se(delta == 0){
            x1 = (-b + raiz(delta)) /(2*a)
            escreva("As raízes da equação são x1=x2 =: " + x1)
        } senao {
            x1 = (-b + raiz(delta)) /(2*a)
            x2 = (-b - raiz(delta)) /(2*a)
            escreva("As raízes da equação são:\nx1 = " + x1 +"\nx2= " + x2)
        }
    fim