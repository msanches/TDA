algoritmo pesquisa
	inicio
		real salario, somaIdade, somaSal
		literal sexo
		inteiro idade, qte, salAbaixo
		somaIdade = 0
		somaSal = 0
		qte = 0
		idade = 0
		salAbaixo = 0
		enquanto(idade > 0){
			escreva("Digite a idade: ")
			leia(idade)
			escreva("Digite o sexo (M/F): ")
			leia(sexo)
			escreva("Digite o salário: ")
			leia(salario)
			somaIdade = somaIdade + idade
			se(sexo == 'm' ou sexo == 'M'){
				somaSal = somaSal + salario
			} senao se(salario < 600) {
				salAbaixo++
			}
			qte++
		}			
		escreva("A media da idade do grupo é: " + somaIdade/qte)
		escreva("A media do salário dos homens é: " + somaSal/qte)
		escreva("A qte de mulheres que recebem menos que R$600,00 é de " + salAbaixo)
	fim	