algoritmo exercicio3
    inteiro op
    real n1, n2
    início
        escreva("Calculadora")
        escreva("1-Somar dois numeros")
        escreva("2-Subtrair dois numeros")
        escreva("3-Multiplicar dois numeros")
        escreva("4-Dividir dois numeros")
        escreva("5-Sair")
        escreva("Digite uma opção: ")
        leia(op)
        escolha(op){
            caso 1: soma(n1, n2)
            pare
            caso 2: subtracao(n1, n2)
            pare
            caso 3: multiplicacao(n1, n2)
            pare
            caso 4: divisao(n1, n2)
            pare
            caso 5: escreva("Até mais! Obrigado por utilizar nossos serviços")
            pare
            padrao:
                escreva("Opção inválida! ")
        }
    fim

void soma(real n1, real n2)
    real soma = n1+n2
    escreva("Soma = " + soma)
    fim

void subtracao(real n1, real n2)
    real subtracao = n1-n2
    escreva("Subtração = " + subtracao)
    fim

void multiplicacao(real n1, real n2)
    real multiplicacao = n1*n2
    escreva("Multiplicação = " + multiplicacao)
    fim

void divisao(real n1, real n2)
    se(n2 != 0)
        escreva("Divisão = " + (n1/n2))
    senao 
        escreva("Não é possível dividir por zero")
    fim