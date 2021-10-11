algoritmo exercicio5
    real salario, perc
    inicio
        escreva("Digite o seu salário: R$ ")
        leia (salario)
        escreva("Digite o percentual de aumento: ")
        leia(perc)
        novoSalario(salario, perc)
    fim

void novoSalario(real s, real p)
    real aumento, novoSal
    aumento = s * p/100
    novoSal = s + aumento

    escreva("O aumento é: R$" + aumento + 
            "\n O novo sálario é: R$ " + novoSal)
fim

/* Exercício 5 (Aula 4)- Faça um algoritmo que receba o salário de um funcionário e 
o percentual de aumento. A seguir, utilize um método que calcule e mostre o valor do 
aumento e o novo salário.
*/
