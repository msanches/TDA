algoritmo aula09Ex02
    real num[10], maior
    inteiro i
    início
        para(i=0; i<10; i++){
            escreva("Digite um número inteiro:")
            leia(num[i])
        }
        maior = num[0]
        para(i=0; i<10; i++){
            se(num[i] > maior)
                maior = num[i]
        }
        para(i=0; i<10; i++){
            num[i] = num[i]/maior
            escreva(num[i])
        }
    fim