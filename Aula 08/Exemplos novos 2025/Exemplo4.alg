algoritmo Exemplo 4
    literal menu
    inteiro opcao
    real total
    início
        total = 0
        // preços centralizados
        real PRECO_XBURGER = 18.90
        real PRECO_BATATA  =  9.50
        real PRECO_SUCO    =  9.00
        real PRECO_PUDIM   = 12.00
        menu = "[1] X-Burger (R$ 18,90)\n[2] Batata Frita (R$ 9,50)\n[3] Suco (R$ 9,00)\n[4] Pudin (R$ 12,00)\n[5] Sair"
        escreva("Cafeteria Anália")
        faça{
            escreva(menu)
            escreva("Digite uma opção: ")
            leia(opcao)
            escolha(opcao){
                caso 1: total += PRECO_XBURGER
                    pare
                caso 2: total += PRECO_BATATA
                    pare
                caso 3: total += PRECO_PUDIM
                    pare
                caso 4: total += PRECO_SUCO
                    pare
                caso 5:
                    pare
                padrão:
                    escreva("opção inválida")                
            }
        } enquanto(opcao != 5)

        escreva("Total a pagar R$" + total)
    fim