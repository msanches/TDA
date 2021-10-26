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
                    escreva("Digite a marca do veículo: ")
                    leia(marca)
                    escreva("Digite o modelo do veículo: ")
                    leia(modelo)
                    escreva("Digite o ano do veículo: ")
                    leia(ano)
                    escreva("Digite a placa do veículo: ")
                    leia(placa)
                    escreva("Digite o valor do veículo: ")
                    leia(valor)
                    id = cadastrarVeiculo(marca, modelo, ano, placa, valor, id)
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

//Implementação dos métodos
inteiro cadastrarVeiculo(literal marca, literal modelo, inteiro ano, literal placa, real valor, inteiro id)
    marcaVeiculo[id] = marca
    modeloVeiculo[id] = modelo
    anoVeiculo[id] = ano
    placaVeiculo[id] = placa
    valorVeiculo[id] = valor
    id++
    retorne id
    fim

void consultaVeiculo(inteiro id, literal placa)
    inteiro pos = -1;
    para(int i=0; i<id; i++){
            se(placaVeiculo[id]==placa)
                pos = i;
        }
    se(pos!=-1){
        escreva("Marca\tModelo\tano\tPlaca\t\tValor\tStatus")
        relatorio(pos);
        //caso o veículo esteja em estoque, perguntar se deseja vender
        //caso positivo, perguntar o cpf para consultar o cliente
        //efetuar a venda após verificar o cadastro do cliente
        //após a venda, mudar o status do veículo para true (vendido)
        } senao{
            escreva("Veículo não encontrado");
        }
    fim

void estoqueVeiculo(inteiro id)
    escreva("\nControle de Estoque:")
    escreva("Marca\tModelo\tano\tPlaca\t\tValor\tStatus")
    para(inteiro i=0; i<id; i++){
            relatorio(i);
    }
    fim

void relatorio(inteiro i)
    escreva(marcaVeiculo[i]+"\t")
    escreva(modeloVeiculo[i]+"\t")
    escreva(anoVeiculo[i]+"\t")
    escreva(placaVeiculo[i]+"\t")
    escreva(valorVeiculo[i]+"\t")
    se(statusVeiculo[i]==false)
        escreva("Estoque");
    senao
        escreva("Vendido");
    fim

void consultaCliente()
    //implementação em pseudocódigo
    //Caso a consulta por cfp retorne nula, oferecer a opção para cadastro
    //se(resp=='s') chamar cadastraCliente()
    //senao retornar ao algoritmo principal
    fim

inteiro cadastraCliente()
    //implementação similar ao método cadastraVeiculo()
    //retorna um inteiro n para controlar o cadastro
    fim