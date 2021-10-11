algoritmo aula05Ex04
    real a, b, c, delta, x1, x2
    início
        faça{
            escreva("Digite o coeficiente a: ")
            leia(a)
            se(a==0)
                escreva("Não é equação do 2º grau! Tente novamente.")
        }enquanto(a == 0)
        
        escreva("Digite o coeficiente b: ")
        leia(b)
        escreva("Digite o coeficiente c: ")
        leia(c)

        delta = b*b - 4*a*c
        se(delta < 0){
            escreva("Não há raízes reais!")
        } senao{
            x1 = (-b + raiz(delta)) / 2*a
            x2 = (-b - raiz(delta)) / 2*a
            escreva("X1= " + x1)
            escreva("X2= " + x2)
        }
    fim

    /* ax²+bx+c=0