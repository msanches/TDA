algoritmo aula5Ex2
    caractere turno
    inteiro horas
    real salario
    início
        escreva("Digite a quantidade de horas trabalhadas: ")        
        leia(horas)
        escreva("Digite o seu turno de trabalho (N ou D)")
        se(turno == 'n' ou turno == 'N')
            salario = horas * 45
        senao se(turno == 'd' ou turno == 'D')
                salario = horas * 37.5
            senao
                escreva("Opção de turno inválida!!")

    fim