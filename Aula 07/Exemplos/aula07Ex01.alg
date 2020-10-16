algoritmo salario
	inicio
		real salario[5]
		inteiro i
		//Preenchimento do vetor
		para(i=0; i < 5; i++){
			escreva("Entre com o salário")
			leia(salario[i])
		}		
		//Mostrando os valores armazenados
		para(i=0; i < 5; i++){
			escreva("Funcionário: " + (i+1) + "Salário: " + salario[i])
		}
	fim
	
	