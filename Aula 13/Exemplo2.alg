algoritmo media_aluno
    real nota[3][3], soma, media
    inteiro i, j
    início
        para(i=0; i<3; i++){
            para(j=0; j<3; j++){
                escreva("Digite a " +(j+1)+"ª nota:")
                leia(nota[i][j])
            }
        }
        
        para(i=0; i<3; i++){
            soma=0
            para(j=0; j<3; j++){
                soma = soma + nota[i][j]
            }
            media = soma/3
            escreva("A média do " +(i+1)+ "º aluno é " + media)
        }
    fim

/*
i=0 soma = 0
    j=0 => nota[0][0] = 5 => soma = 0 + 5
    j=1 => nota[0][1] = 8 => soma = 5 + 8
    j=2 => nota[0][2] = 8 => soma = 13 + 8 
    media = 21/3 = 7
    A média do 1º aluno é 7

i=1 soma = 0
    j=0 => nota[1][0] = 8 => soma = 0 + 8
    j=1 => nota[1][1] = 9 => soma = 8 + 9
    j=2 => nota[1][2] = 10 => soma = 17 + 10 
    media = 27/3 = 9
    A média do 2º aluno é 9

i=2 soma = 0
    j=0 => nota[2][0] = 8 => soma = 0 + 8
    j=1 => nota[2][1] = 9 => soma = 8 + 9
    j=2 => nota[2][2] = 10 => soma = 17 + 10 
    media = 27/3 = 9
    A média do 3º aluno é 9
*/