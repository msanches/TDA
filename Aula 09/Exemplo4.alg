algoritmo exemplo4
    real valorPeca[10], vendas, totalVendas
    inteiro qtePeca[10], i, totaPecas
    início
        totaPecas = 0
        totalVendas = 0
        para(i=0; i<10; i++){
            escreva("Digite a quantidade da peça vendida pelo " +(i+1)+"º vendedor: ")
            leia(qtePeca[i])
            escreva("Digite o preço unitário da peça vendida")
            leia(valorPeca[i])
            totaPecas = totaPecas + qtePeca[i]
        }
        escreva("O total de peças vendidas foi " + totaPecas)

        para(i=0; i<10; i++){
            vendas = qtePeca[i]*valorPeca[i]
            escreva("O valor das vendas do "+(i+1)+"vendedor foi" + vendas)
            totalVendas = totalVendas + vendas
        }
        escreva("O valor total das vendas foi R$ " + totalVendas)
    fim