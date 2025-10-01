#include <stdio.h>
#include <string.h>
#include <stdbool.h>

int main(void) {
    const int MAX_TENTATIVAS = 3;
    int tentativas = 0;
    bool logado = false;
    char cpf[32], senha[32];

    puts("Para iniciar o atendimento, digite as credenciais de acesso!");

    do {
        printf("Digite o seu CPF (11 dígitos): ");
        scanf("%31s", cpf);
        printf("Digite a sua senha: ");
        scanf("%31s", senha);

        if (strcmp(cpf, "12345678901") == 0 && strcmp(senha, "123") == 0) {
            logado = true;
        } else {
            tentativas++;
            if (tentativas < MAX_TENTATIVAS) {
                int restantes = MAX_TENTATIVAS - tentativas;
                printf("Credenciais inválidas. Você ainda tem %d tentativa%s.\n",
                       restantes, restantes == 1 ? "" : "s");
            }
        }
    } while (!logado && tentativas < MAX_TENTATIVAS);

    if (logado) {
        puts("Bem-vindo ao Banco Anália!");
        puts("[1] Saldo\n[2] Saque\n[3] Sair");
    } else {
        puts("Você atingiu o limite de tentativas. Acesso bloqueado. Tente mais tarde.");
    }
    return 0;
}
