algoritmo Exemplo3
inicio
	inteiro qtd = 5
	literal nomes[qtd] 
	real salarios[qtd]
	inteiro tempos[qtd] 
	para (inteiro i=0; i< qtd ; i++){
		escreva("Digite o nome: ")
		leia(nomes[i])
		escreva("Digite o salário: ")
		leia(salarios[i])
		escreva("Digite o tempo de empresa: ")
		leia(tempos[i])
	}
	para (inteiro i=0; i< qtd ; i++){
		relatorio(nomes[i], salarios[i], tempos[i])	
	}	
fim 

void relatorio(literal nome, real salario, inteiro tempo)
inicio
	real percentual = 0
	se (salario <= 1000 E tempo <= 2){
		percentual = 0.08
	} senao se (salario <= 1000 E tempo > 2){
		percentual = 0.05
	} senao se (salario > 1000 E tempo <= 5){
		percentual = 0.03
	} 
	escreva("Nome: " + nome + " Salário: " 
									+ (salario*percentual + salario))
fim 

