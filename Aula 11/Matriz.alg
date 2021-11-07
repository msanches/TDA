algoritmo matriz
    real notas[3][3], soma=0
    inteiro i, j
    início
        //inicialização geral
        para(j=0; j<3; j++){
            soma = 0
            para(i=0; i<3; i++){
                soma += notas[i][j]
            }
            escreva("A média na "+(i+1)+"º disciplina é: " + soma/3)
        }
    fim