algoritmo exemplo3
    real num[3][2], soma, media
    inteiro i, j, acima
    inicio
        soma=0
        acima=0
        //Leitura e armazenamento da matriz
        para(i=0; i<3; i++){
            para(j=0; j<2; j++){
                escreva("Digite um número")
                leia(num[i][j])
                soma += num[i][j]
            }
        }
        media = soma/6
        escreva("A média dos números digitado é: " + media)
        //Processamento dos dados
        para(i=0; i<3; i++){
            para(j=0; j<2; j++){
                se(num[i][j]>media)
                    acima++
            }
        }
        escreva("A quantidade de números acima da média é: " + acima)
    fim