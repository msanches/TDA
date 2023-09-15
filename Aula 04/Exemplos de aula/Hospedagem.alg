algoritmo Hospedagem
    caractere op
    inteiro qtD
    início
        escreva("Qual a quantidade de diárias? ")
        leia(qtD)
        escreva("[S] Simples\n[D] Dupla\n[T] Tripla")
        escreva("Qual o tipo de hospedagem? ")
        leia(op)

        se (op == 'S' ou op == 's')
            escreva("O valor total é: ", qtD * 255.5)
        senao se(op == 'D' ou op == 'd')
            escreva("O valor total é: ", qtD * 305.5)
        senao se(op == 'T' ou op == 't')
            escreva("O valor total é: ", qtD * 360.5)
        senao
            escreva("Tipo de hospedagem inválido!")    
    fim