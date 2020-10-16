algoritmo vendedor
inicio
	inteiro qtde[10], i
	real preco[10], tot_geral, tot_vend
	tot_geral = 0
	para (i=0;i<10;i++) {
      	escreva ("Entre com a quantidade vendida pelo vendedor" + (i+1))
      	leia qtde[i]
      	escreva ("Digite o preço do produto")
      	leia preco[i]
		}
	para (i=0;i<10;i++) {
      	tot_vend = qtde[i]*preco[i]
      	escreva ("O total vendido pelo vendedor" + (i+1) + " é " + tot_vend)      
		}
	para (i=0;i<10;i++) {
      	tot_geral = tot_geral + qtde[i]
		}
    escreva ("O total vendido por todos os vendedores é " + tot_geral)
fim

