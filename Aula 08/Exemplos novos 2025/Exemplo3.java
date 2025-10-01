import java.util.Scanner;

public class Exemplo3 {
    public static void main(String[] args) {
        final int MAX_TENTATIVAS = 3;
        final String N_CONTA = "1234-5";
        final String SENHA = "001";
        String n_conta, senha;
        int tentativas = 0, restantes;
        boolean logado = false;

        Scanner sc = new Scanner(System.in);
        System.out.println("Para iniciar o atendimento, digite as credenciais de acesso!");

        do {
            System.out.print("Digite o número da conta: ");
            n_conta = sc.nextLine().trim();

            System.out.print("Digite a sua senha: ");
            senha = sc.nextLine().trim();

            if (n_conta.equals(N_CONTA) && senha.equals(SENHA)) {
                logado = true;
            } else {
                tentativas++;
                if (tentativas < MAX_TENTATIVAS) {
                    restantes = MAX_TENTATIVAS - tentativas;
                    System.out.printf("Credenciais inválidas. Você ainda tem %d tentativa%s.%n",
                            restantes, restantes == 1 ? "" : "s");
                }
            }
        } while (!logado && tentativas < MAX_TENTATIVAS);

        if (logado) {
            System.out.println("Bem-vindo ao Banco Anália!");
            System.out.println("[1] Saldo\n[2] Saque\n[3] Sair");
        } else {
            System.out.println("Você atingiu o limite de tentativas. Acesso bloqueado. Tente mais tarde.");
        }
        sc.close();
    }
}
