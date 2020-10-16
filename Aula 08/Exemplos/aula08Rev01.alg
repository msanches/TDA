algoritmo Exemplo1
inicio
	inteiro qtd = 10
	literal rgms[qtd]
	real notasA1[qtd], notasA2[qtd]
	
	para (inteiro i=0; i<qtd; i++){
		escreva("Digite o RGM")
		leia(rgms[i])
		escreva("Digite a nota A1")
		leia(notasA1[i])
		escreva("Digite a nota A2")
		leia(notasA2[i])
	}
	para (inteiro i=0; i<qtd; i++){
		escreva(rgms[i]);
		real nota_final = (notasA1[i]+notasA1[i])
		escreva("Nota final: " + nota_final)
		escreva("Situação: " + situacao(nota_final))		
	}	
fim 

literal situacao(real nota_final)
inicio
	se (nota_final >= 6){
		retorne "APROVADO"
	}senao{
		retorne "Avaliação Final"
	}
fim 

