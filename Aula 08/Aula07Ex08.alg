algoritmo aula07Ex08
    inteiro i, ap
    real nota, soma, media
    início
        ap = 0
        soma = 0
        para(i=1; i<=80; i++){
            escreva("Digite a nota do " +i+ "º aluno")
            leia(nota)
            soma += nota
            se(nota >= 6.0)
                ap++
        }
        media = soma/80
        escreva("Quantidade de aprovados: " + ap)
        escreva("A média da turma é: " + media)
    fim
    /* Teste de mesa
    1º 9.5 => soma = 0 + 9.5 => ap = 0 + 1
    2º 4.5 => soma = 9.5 + 4.5 => ap = 1
    3º ..
