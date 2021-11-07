algoritmo exemplo5
    real num[3][2], soma, media
    inteiro i, j, qte
    início
        soma=0
        qte=0
        //Leitura e armazenamento das notas
        para(i=0; i<3; i++){
            para(j=0; j<2; j++){
                escreva("Digite o"+(j+1)+" número ")
                leia(num[i][j])
                soma += num[i][j]
            }
        }
        media = soma/6
        escreva("A média é: " + media)
        //Processamento da matriz para qte acima da média
        para(i=0; i<3; i++){
            para(j=0; j<2; j++){
                se(num[i][j] > media)
                qte++
            }
        }
        escreva("A quantidade de números acima da média é: " + qte)

        //Processamento a soma das linhas
        para(i=0; i<3; i++){
            soma=0
            para(j=0; j<2; j++){
               soma+= num[i][j]
            }
            escreva("A soma da "+(i+1)+ "ª linha é: " + soma)
        }
    fim