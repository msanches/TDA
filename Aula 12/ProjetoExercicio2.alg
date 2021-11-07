algoritmo exercicio2
    real valorc, valorv, taxae
    início
        escreva("Digite o valor de compra R$ ")
        leia(valorv)
        se(valorc <= 100)
            taxae = 10
        senao se(valorc <= 250)
            taxae = 17
        senao se(valorc <= 950)
            taxae = 20
        senao
            taxae = 25
        valorv = valorc*1.15 + taxae
        escreva("O valor de venda é: " valorv)    
    fim