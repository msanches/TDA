algoritmo exemplo4
    real nota1, nota2, media
    inteiro i
    início
        i = 1
        enquanto(i <= 10){
            escreva("Digite a nota 1")
            leia(nota1)
            escreva("Digite a nota 2")
            leia(nota2)
            media = (nota1+nota2)/2

            escreva("A média do aluno é: " + media)
            i++
        }
    fim