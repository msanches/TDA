algoritmo exercicio1
    real deposito, taxa, rendimento, rendimentoTotal
    inicio
        escreva("Digite o valor do deposito: ")
        leia(deposito)
        escreva("Digite o valor da taxa de juros: ")
        leia(taxa)

        rendimento = deposito * (taxa / 100)
        rendimentoTotal = deposito + rendimento

        escreva("O seu rendimento é de: R$ " + rendimento + ", então por isso o rendimento total é R$" + rendimentoTotal)
		escreva("Rendimento = R$ " + rendimento + "\nValor total = R$" + rendimentoTotal)
    fim 