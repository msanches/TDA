algoritmo aula07Ex06
    real num, menorNum
    inteiro pos, neg
    início
        pos = 0
        neg = 0
  
        faça{
            escreva("Digite um valor real: ")
            leia(num)
            se(pos == 0 e neg == 0){
                menorNum = num
            }senao se(num < menorNum)
                menorNum = num

            se(num > 0)
                pos++
            senao se(num < 0)
                neg++
        }enquanto(num != 0)

        escreva("Quantidade de positivos: " + pos)
        escreva("Quantidade de negativos: " + neg)
        escreva("Menor número digitado foi: " + menorNum)
    fim

    /*
    menorNum = 10 
    num = 3 => pos = 0 + 1 => menorNum = 3
    num = -4 => neg = 0 +1 => menorNum = -4
    num = 2  => pos = 1 + 1 => menoNum = -4

    positivos = 2
    negativos = 1
    menor numero = -4