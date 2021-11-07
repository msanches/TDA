algoritmo aula11Ex01
    real vendas[6][4] //linha=vendedores e coluna=semana
    inteiro i, j
    real soma, total
    início
        total=0
        para(i=0; i<6; i++){
            escreva("Vendedor " +(i+1))
            para(j=0; j<4; j++){
                escreva("Digite o total de vendas da semana " + (j+1))
                leia(vendas[i][j])
                total+=vendas[i][j]
            }
        }
        //processando as linhas
        para(i=0; i<6; i++){
            soma=0
            para(j=0; j<4; j++){
                soma += vendas[i][j]
            }
            escreva("Total vendedor " +(i+1)+ soma)
        }
        //processando as colunas
        para(j=0; j<4; j++){
            soma=0
            para(i=0; i<6; i++){
                soma += vendas[i][j]
            }
            escreva("Total semana " +(j+1)+ soma)
        }
        escreva("Total de vendas" + total)
    fim