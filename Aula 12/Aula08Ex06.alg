algoritmo aula08Ex06
    caractere opiniao, sexo
    real percentual
    inteiro i, x, y, fem
    início
        x = 0
        y = 0
        fem = 0       
        para(i = 0; i < 200; i++;){
            escreva("Informe se a pessoa tem interesse no produto [S]im ou [N]ão:")
            leia(opiniao)
            escreva("Informe o sexo da pessoa [F]eminino [M]asculino:")
            leia (sexo)
            se(opiniao == 'S' ou opiniao == 's'){
                x++
            }
            se(sexo == 'F' ou sexo == 'f'){
                fem++
                se(opiniao == 'N' ou opiniao == 'n'){
                    y++
                }
            }   
        }
        percentual = (y/fem) * 100
        escreva("A quantidade total de pessoas que responderam SIM : " + x)
        escreva("O percentual de mulheres que responderam Não é de : " + percentual)
    fim