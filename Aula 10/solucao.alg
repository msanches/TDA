algoritmo Projeto_1

	inicio
		inteiro  k = 5, h = 6
		literal anos["2013","2014","2015","2016","2017","2018"]
		literal paises["Argentina","Brasil","Congo","Canadá","Japão"]
		real idh[[0.808,0.836,0.822,0.822,0.825,0.825],
				[0.744,0.775,0.754,0.754,0.759,0.759],
				[0.338,0.350,0.444,0.452,0.606,0.606],
				[0.902,0.913,0.920,0.922,0.926,0.926],
				[0.899,0.903,0.905,0.907,0.909,0.909]]

		mediaTotal(idh, k, h)
		mediaPaises(idh, paises, k, h)
		mediaAno(idh, anos, k, h)
		maiorIDH(idh, paises, anos, k, h)
		menorIDH(idh, paises, anos, k)

	fim

void mediaTotal(real idh[][], inteiro qtd_linhas, inteiro qtd_colunas)
	inicio
		inteiro i, j
		real total = 0

		para(lin=0; lin < qtd_linhas; lin++){
			para(col=0; col < qtd_colunas; col++){
				total += idh[lin][col]
			}
		}
		escreva("A média dos IDHs é: " , (total/(qtd_linhas*qtd_colunas)))
	fim

void mediaPaises(real idh[][], literal paises[], inteiro qtd_linhas, inteiro qtd_colunas)
	inicio
		inteiro i, j
		real total

		para(i=0;i<qtd_linhas;i++){
			total = 0
			para(j=0;j<qtd_colunas;i++){
				total += idh[i][j]
			}

			escreva("O IDH do(a) " + paises[i] + " é: " + total/qtd_colunas)
		}
	fim

void mediaAno(real idh[][], literal anos[], inteiro qtd_linhas, inteiro qtd_colunas)
	inicio
		inteiro i, j
		real total

		para(j=0;j<qtd_colunas;j++){
			total = 0
			para(i=0;i<qtd_linhas;i++){
				total += idh[i][j]
			}

		escreva("No ano de " + anos[j] + " o IDH médio dos países é: " + total/qtd_linhas)
		}
	fim

void maiorIDH(real idh[][], literal anos[], literal paises[], inteiro k, inteiro h)
	inicio
		inteiro i, j
		real maior = idh[0][0]
		literal pais = paises[0], ano = anos[0]

		para(i=0;i<k;i++){
			para(j=0;j<h;j++){
				se (idh[i][j] > maior){
					maior = idh[i][j]
					pais = paises[i]
					ano = anos[j]
				}
			}
		}

		escreva(pais + " em " + ano + " teve o maior IDH, sendo de: " + maior)
	fim

void menorIDH(real idh[][], literal paises[], literal anos[], inteiro k)
	inicio
		inteiro i
		real menor = idh[0][tamanho(anos)-1]
		literal pais = paises[0]

		para(i=1;i<k;i++){
			se (idh[i][tamanho(anos)-1] < menor){
				menor = idh[i][tamanho(anos)-1]
				pais = paises[i]
			}
		}

		escreva(pais + " teve o menor IDH em 2018, sendo de: " + menor)
	fim


