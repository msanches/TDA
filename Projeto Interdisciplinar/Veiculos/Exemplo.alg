algoritmo ProjetoInter
    inteiro op, ano, id=0, anoVeiculo[100] 
    literal marca, modelo, placa
    literal marcaVeiculo[100], modeloVeiculo[100], placaVeiculo[100]
    real valor, valorVeiculo[100]
    início
        enquanto(verdadeiro){
            escreva("Menu Principal"
                +"\n1- Cadastrar veículo"
                +"\n2- Consultar veículo"
                +"\n3- Consultar Estoque"
                +"\n4- Consultar cliente"
                +"\n5- Sair"
                +"\nDigite uma opção: ")
            se(op==5)
                escreva("Obrigado por utilizar nossos serviços!")
                pare

            escolha(op){
                caso 1:
                    metodoExemplo()
                pare
                caso 2: 
                    escreva("\nConsulta veículo");
                    escreva("Digite a placa para consultar: ")
                    leia(placa)
                    consultaVeiculo(id, placa);
                pare
                caso 3: 
                    estoqueVeiculo(id);
                pare
                caso 4: 
                    //solicitar o cpf para consultar o cliente
                    //mesma implementação de consulta veículo
                    //chamar o método consultaCliente();
                pare
                padrao:
                    escreva("Opção inválida!")
            }
        }
    fim

void metodoExemplo()
        escreva("Menu Principal"
        +"\n1- Cadastrar veículo"
        +"\n2- Consultar veículo"
        +"\n3- Consultar Estoque"
        +"\n4- Consultar cliente"
        +"\n5- Sair"
        +"\nDigite uma opção: ")
        se(op==5)
    fim
