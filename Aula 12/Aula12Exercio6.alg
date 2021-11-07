algoritmo exercicio6
    inteiro num, i, fatorial
    início
        fatorial = 1
        escreva("Digite um numero")
        leia(num)
        para(i=1; i<=num; i++){
            fatorial = fatorial * i
        }
        escreva("O fatorial de" + num + "é " + fatorial)
    fim

/*
num = 3
i=1 fatorial = 1 * 1 = 1
i=2 fatorial = 1 * 2 = 2
i=3 fatorial = 2 * 3 = 6
*/