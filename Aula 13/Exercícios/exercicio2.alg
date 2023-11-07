algoritmo concessionaria
	inicio
		literal modelo[] = {"Uno", "Ka", "Fiesta", "A4", "Golfi"}
		literal concessionaria[] = {"Leste", "Penha", "Tatuapé", "Anália"}
		inteiro k = 5, h = 4, i, j
		real vendas[k][h]
		
		entradaDados()
		totalVendas()
		totalPorModelo()
		relatorioConcessionaria()
		modeloMaisVendido()

	fim

void entradaDados()
	inicio
		para(i = 0; i < k; i++){
			para(j = 0; j < h; j++){
				escreva("Digite o valor de venda do veículo: " + modelo[i] + "na concessionária" + concessionaria[j])
				leia(vendas[i][j])
			}
		}
	
	fim

void totalVendas()
	inicio
		real soma = 0 
		para(i = 0; i < k; i++){
			para(j = 0; j < h; j++){
				soma += vendas[i][j]
			}
		}
		escreva("O valor total das vendas foi de R$ " + soma)
	fim

void totalPorModelo()
	inicio
		real soma 
		para(i = 0; i < k; i++){
			soma = 0
			para(j = 0; j < h; j++){
				soma += vendas[i][j]
				escreva("O valor total das vendas do modelo " + modelo[i] "foi de R$ " + soma)
			}
		}
	fim	
	
void relatorioConcessionaria()
	inicio
		real soma 
		para(j = 0; i < k; i++){
			soma = 0
			para(i = 0; j < h; j++){
				soma += vendas[i][j]
				escreva("O valor total das concessionária " + concessionaria[j] "foi de R$ " + soma)
			}
		}
	fim

void modeloMaisVendido()
	inicio
		real soma, maior = 0
		para(i = 0; i < k; i++){
			soma = 0
			para(j = 0; j < h; j++){
				soma += vendas[i][j]
			}
			se(soma > maior)
				maior = soma
				pos = i
		}
		escreva("O modelo de maior venda foi " + modelo[pos])
	fim