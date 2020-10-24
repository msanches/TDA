algoritmo temperaturas
	inicio 
		real temp[12], maior = 0, fahrenheit
		literal mes[] = {"Jan", "Fev", "Mar", "Abr", "Mai", "Jun", "Jul", "Ago", "Set", "Out", "Nov", "Dez"}
		inteiro i
		
		para(i = 0; i < 12; i++){
			escreva("Digite a temperatura do mês de " + mes[i])
			leia(temp[i]
		}
	
		para(i = 0; i < 12; i++){
			se(temp[i] > maior){
				maior = temp[i]
				pos = i
			}
			fahrenheit = temp[i] * 1,8 + 32
			escreva("A temperatura " + temp[i] + "equivale a " + fahrenheit + "ºF")
		}
		
		escreva("O mês mais quente do ano foi: " + mes[pos])
	fim
	