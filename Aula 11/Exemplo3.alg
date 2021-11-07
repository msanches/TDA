algoritmo exemplo3
    literal nomes[2][3], texto = ""
    inteiro i, j
    inicio
        //Leitura e armazenamento da matriz
        para(i=0; i<2; i++){
            para(j=0; j<3; j++){
                escreva("Digite o nome da pessoa")
                leia(nomes[i][j])
            }
        }
        //Exibição dos nomes
        para(i=0; i<2; i++){
            para(j=0; j<3; j++){
                texto += nomes[i][j]
            }
            texto += "\n"
        }
        escreva(texto)
    fim