algoritmo combustivel
	inicio
	  literal tipo
	  real preco
	  inteiro litros

	  escreva("Selecione o tipo de combustível [G/A]")
	  leia(tipo)
	  escreva("Digite em litros a quantidade de combustivel comprada: ")
	  leia(litros)
	  
		se(tipo == 'G' ou tipo == 'g'){
		  preco = 3.30
		  se(litros <= 20)
			preco -= preco * 0.04
		  senao
			preco -= preco * 0.06
		}senao se(tipo == 'A' ou tipo == 'a'){
		  preco = 2.90
		  se(litros <= 20)
			preco -= preco * 0.03
		  senao
			preco -= preco * 0.05
		}
	  escreva("O valor total a pagar é: R$" + litros * preco)
	fim
	