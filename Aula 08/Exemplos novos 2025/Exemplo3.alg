algoritmo Exemplo3
    literal N_CONTA, SENHA, n_conta, senha
    inteiro tentativas, restantes, MAX_TENTATIVAS
    logico login
    início
        MAX_TENTATIVAS = 3
        N_CONTA = "1234-5"
        SENHA = "001"
        tentativas = 1
        login = falso
        escreva("Para iniciar o atendimento, digite as credenciais de acesso!")

        faça{
            escreva("Digite o número da conta: ")
            leia(n_conta)
            escreva("Digite a senha")
            leia(senha)
            se(senha == SENHA e n_conta == N_CONTA
                login == verdadeiro
            senao{
                tentativas++
                se(tentativas < MAX_TENTATIVAS){
                    restantes = MAX_TENTATIVAS - tentativas
                    escreva("Credenciais inválidas!!!")
                    escreva("Você ainda tem " + restantes + " tentativas!")    
                }
            }
        } enquanto(tentativas < MAX_TENTATIVAS ou login == falso)

        se(login == verdadeiro){
            escreva("Bem-vindo ao Banco Anália")
            escreva("[1] Saldos\n[2] Saque[3] Sair")
        } senao {
            escreva("Você atingiu o limite de tentativas!!! Acesso bloqueado!!! Tente mais tarde")
        }
    fim