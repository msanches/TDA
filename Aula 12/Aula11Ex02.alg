algoritmo aula11Ex02
    inteiro k=5, h=4, i, j
    real vendas[k][h]
    literal modelo[]={"Uno","Bora","Fiesta","A4","Golf"}
    literal concessionaria[]={"Leste","Penha","Tatuapé","Anália"}
    início
        para(i=0; i<k; i++){
            para(j=0; j<h; j++){
                escreva("Modelo: " + modelo[i])
                escreva("Digite o valor de venda do veículo na concessionária:" + concessionaria[j])
                leia(vendas[i][j])
            }
        }
       escreva("Total de venda: R$" + vendasTotal(k,h))
       totalModelo(k, h)
       totalConcessionaria(k, h)
       escreva("O modelo mais vendido foi " + modeloMaisVendido(k,h))
    fim

real vendasTotal(inteiro k, inteiro h)
        real soma = 0
        para(inteiro i=0; i<k; i++){
            para(inteiro j=0; j<h; j++){
                soma+= vendas[i][j]
            }
        }
        retorne soma
    fim

void totalModelo(inteiro k, inteiro h)
    para(inteiro i=0; i<k; i++){
        real soma = 0
        para(inteiro j=0; j<h; j++){
            soma+= vendas[i][j]
        }
        escreva("O total vendido de " + modelo[i] + "é R$: " + soma)
    }
    fim

void totalConcessionaria(inteiro k, inteiro h)
    para(inteiro j=0; j<h; j++){
        real soma = 0
        para(inteiro i=0; i<k; i++){
            soma+= vendas[i][j]
        }
        escreva("O total vendido pela concessionária " 
                                + concessionaria[j] + "foi R$: " + soma)
    }
    fim

literal modeloMaisVendido(inteiro k, inteiro h)
    real soma, maior = 0
    inteiro pos
    para(i=0; i<k; i++){
        soma = 0
        para(j=0; j<h; j++){
            soma += vendas[i][j]
        }
        se(soma > maior ){
            maior = soma
            pos = i
        }
    }
    retorne modelo[pos]
    fim

/*
i=0 => Modelo: Uno
    j=0 => Digite o valor de venda do veículo na concessionária: Leste
    j=1 => Digite o valor de venda do veículo na concessionária: Penha


*/