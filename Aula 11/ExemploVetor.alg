algoritmo exemploVetor
    inteiro rgm[10]
    inteiro nome[3][5]
    real notaA1, notaA2, notaFinal[10]
    inteiro i
    início
        para(i=0; i<10; i++){
            escreva("Digite o RGM do aluno")
            leia(rgm[i])
            escreva("Digite a nota da A1")
            leia(notaA1)
            escreva("Digite a nota da A2")
            leia(notaA2)
            notaFinal[10] = notaA1 + notaA2
        }
        para(i=0; i<10; i++){
            escreva("RGM: " + rgm[i])
            escreva("Nota Final: " + notaFinal[i])
            escreva("Situação do aluno: " + situacao(notaFinal[i]))
        }
    fim

literal situacao(real notaFinal)
    se(notaFinal>=6)
        retorne "APROVADO"
    senao
        retorne "Avaliação Final"
    fim