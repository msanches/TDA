algoritmo aula07Ex03
    inteiro n, i
    real soma
    início
        soma = 0;
        escreva("Digite um número inteiro e positivo ")
        leia(n)
        para(i=1; i<=n; i++){
            soma += 1/i
        }
        escreva("Soma = " + soma)
    fim
/* Teste de mesa
    n = 5 => soma = 0
    i = 1 => soma = 0 + 1/1 = 1
    i = 2 => soma = 1 + 1/2 = 1.5
    i = 3 => soma = 1 + 1/2 + 1/3 = 1.83
    i = 4 => soma = 1 + 1/2 + 1/3 + 1/4 = 2.08
    i = 5 => soma = 1 + 1/2 + 1/3 + 1/4 + 1/5 = 2.28