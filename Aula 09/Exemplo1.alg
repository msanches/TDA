algoritmo exemplo1
    real salario[5]
    inteiro i
    início
        //Leitura de dados e armazenamento no vetor
        para(i=0; i<5; i++){
            escreva("Digite o salário do " +(i+1)+ "º funcionário: R$ ")
            leia(salario[i])
        }
        //Imprime os valores armazenados no vetor
        para(i=0; i<5; i++){
            escreva("Salário do "+(i+1)+"º funcionário: " + salario[i])
        }
    fim