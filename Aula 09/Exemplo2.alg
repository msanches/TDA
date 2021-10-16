algoritmo exemplo2
    real num[8], soma, media
    inteiro i, qte
    início
        soma = 0
        qte = 0
        //Leitura de dados
        para(i=0; i<8; i++){
            escreva("Digite o "+(i+1)+"º numero:")
            leia(num[i])
            soma += num[i]  
        }
        //Cálculo da média
        media = soma/8
        escreva("A média é: " + media)

        para(i=0; i<8; i++){
             se(num[i] > media)
                qte++
        }
        escreva("Quantidade de números acima da média: " + qte)
    fim
/* Teste mesa
soma = 0, qte = 0
i=0 => num[0] = 5 => soma = 0 + 5 = 5
i=1 => num[1] = 8 => soma = 5 + 8 = 13
i=2 => num[2] = 10 => soma = 13 + 10 = 23
i=3 => num[3] = 7 => soma = 23 + 7 = 30
media = 30/4 = 7.5
A média -e 7.5

i=0 => num[0] = 5 > media = 7.5 (falso) => qte=0
i=1 => num[1] = 8 > media = 7.5 (verdadeiro) => qte=0 + 1 = 1
i=2 => num[2] = 10 > media = 7.5 (verdadeiro) => qte=1+1 = 2
i=3 => num[3] = 7 > media = 7.5 (falso) => qte=1+1 = 2

A quantidade de números acima da média é 2
*/