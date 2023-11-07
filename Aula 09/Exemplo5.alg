algoritmo Exemplo5
    inteiro i, totalPecas, pecas[10]
    real valor[10], vendaTotal, vendaParcial  
    inicio
        totalPecas = 0
        vendaTotal = 0
        //Entrada dos dados
        para(i=0; i<10; i++){​​​​
            escreva("Digite a qtde de peças vendidas pelo "+ (i+1) +"º vendedor: ")
            leia(pecas[i])
            escreva("Digite o valor da peça: R$ ")
            leia(valor[i])
            totalPecas += pecas[i]
        }
        //letra a) total de peças vendidas​​​​
        escreva("A quantidade de peças vendidas foi: " + totalPecas)
        //letra b) total vendido por cada vendedor
        para(i=0; i<10; i++){
           vendaParcial = pecas[i]*valor[i]
            escreva("O vendedor " +(i+1) + "vendeu R$" + vendaParcial)
            //letra c) total das vendas
            vendaTotal += vendaParcial
        }
        escreva("O valor total da venda foi de R$ " + valorTotal)
    fim
