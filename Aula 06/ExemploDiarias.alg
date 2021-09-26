algoritmo aula6Ex1
    caractere tipo
    inteiro qtDiarias
    real total = 0
    início
        escreva("Digite a quantidade de diárias: ")
        leia(qtDiarias)
        escreva("Digite o tipo de hospedagem (S-D-T)")
        leia(tipo)

        se(tipo == 's' ou tipo == 'S')
            total = qtDiarias * 255.50
        senao se(tipo == 'd' ou tipo == 'D')
            total = qtDiarias * 305.50
        senao se(tipo == 't' ou tipo == 'T')
            total = qtDiarias * 360.50
        senao
            escreva("Opção inválida!!!")

        se(total !=0)
            escreva("Valor a pagar = R$ " + total)
    fim