algoritmo aula07Ex06
    real num, menor
    inteiro positivo, negativo
    logico controle
    início
        positivo = 0
        negativo = 0
        controle = falso
        
        faça{
            escreva("Digite um número real (0 para sair) ")
            leia(num)
            se(controle == falso){
                menor = num
                controle = verdadeiro
            } senao se(num < menor)
                menor = num

            se(num>0)
                positivo++
            senão se(num<0)
                negativo++
        } enquanto(num !=0)
        
        escreva("Você digitou" + positivo +"números positivos e" + negativo + "negativos")
        escreva("O menor número digitado é: " + menor)
    fim
    /* Teste de mesa
    num = 5 => menor = 0
    num = -1 => menor = -1