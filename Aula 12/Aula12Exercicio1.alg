algoritmo aula12Exercicio1
    real vendas[6][4], soma, totalMes
    inteiro i, j
    início
        totalMes = 0
        //Armazenamento da matriz
        para(i=0; i<6; i++){
            escreva("Vendedor " + (i+1))
            para(j=0; j<4; j++)
                escreva("Digite a venda da " +(j+1)+"ª semana")
                leia(vendas[i][j])
                totalMes += vendas[i][j]
        }
        para(i=0; i<6; i++){
            soma = 0
            para(j=0; j<4; j++){
                soma += vendas[i][j] 
            }
            escreva("Vendedor " +(i+1)+ "Total de vendas: " + soma)
        }
        para(j=0; j<4; i++){
            soma = 0
            para(i=0; i<6; j++){
                soma += vendas[i][j] 
            }
            escreva("Semana " +(j+1)+ "Total de vendas: " + soma)
        }
        escreva("O total de vendas no mês foi R$ " + totalMes)
    fim