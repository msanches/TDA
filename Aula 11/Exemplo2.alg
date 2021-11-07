algoritmo name
    real nota[10][3], soma, media
    inteiro i, j
    início
        //leitura e armazenamento das notas
        para(i=0; i<10; i++){
            para(j=0; j<3; j++){
                escreva("Digite a " +(j+1)+"ª nota:")
                leia(nota[i][j])
            }
        }
        
        para(j=0; j<10; j++){
            soma=0
            para(i=0; i<3; i++){
                soma = soma + nota[i][j]
            }
            media = soma/3
            escreva("A média da " +(j+1)+ "ª disciplina é " + media)
        }
    fim

4+5+5 = média da coluna