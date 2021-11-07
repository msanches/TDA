algoritmo exemplo
    literal rgm[10]
    real notaA1[10], notaA2[10], notaFinal
    inteiro i
    início
        //Entrada de dados e armazenamento dos vetores
        para(i=0; i<10; i++){
            escreva("Digite o RGM do aluno")
            leia(rgm[i])
            escreva("Digite a nota da A1")
            leia(notaA1[i])
            escreva("Digite a nota da A2")
            leia(notaA2[i])
        }
        
        //processamento das informações
        para(i=0; i<10; i++){
            notaFinal = notaA1[i]+notaA2[i]
            escreva(rgm[i])
            escreva("Nota final = " + notaFinal)
            escreva("Situação: " + situacao(notaFinal))
        }
    fim

//Método que retorna a situação do aluno
literal situacao(real notaFinal)
    se(notaFinal >= 6)
        retorne "APROVADO"
    senao
        retorne "Avaliação Final"
    fim