algoritmo aula06ex03
    real nota1, nota2, media
    caractere tipo
    início
        escreva("Digite a primeira nota")
        leia(nota1)
        escreva("Digite a segunda nota")
        leia(nota2)
        escreva("Digite o tipo de média: A-Aritmética | P- Ponderada")
        leia(tipo)
        media = calculaMedia(nota1, nota2, tipo)
        
        se(caractere == 'A' ou caractere == 'a')
            media = (nota1 + nota2)/2
        senao
            se(caractere == 'P' ou caractere = 'p')
                media = (nota1*3 + nota2*7)/10
        senao
            media = -1

        se(media != -1)
            escreva("A média é: " + media)
        senao
            escreva("Opção de média inválida")
    fim