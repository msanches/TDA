import java.util.Scanner;

public class Exemplo4 {
    public static void main(String[] args) {
        final double PRECO_XBURGER = 18.90;
        final double PRECO_BATATA  =  9.50;
        final double PRECO_SUCO    =  9.00;
        final double PRECO_PUDIM   = 12.00;

        double total = 0.0;
        int opcao;

        Scanner sc = new Scanner(System.in);
        System.out.println("Cafeteria Anália\n");

        do {
            System.out.println("=== MENU ===");
            System.out.println("[1] X-Burger (R$ 18,90)");
            System.out.println("[2] Batata Frita (R$ 9,50)");
            System.out.println("[3] Suco (R$ 9,00)");
            System.out.println("[4] Pudim (R$ 12,00)");
            System.out.println("[5] Sair");
            System.out.print("Digite uma opção: ");

            opcao = sc.nextInt();
            switch (opcao) {
                case 1 -> total += PRECO_XBURGER;
                case 2 -> total += PRECO_BATATA;
                case 3 -> total += PRECO_SUCO;
                case 4 -> total += PRECO_PUDIM;
                case 5 -> { /* sair */ }
                default -> System.out.println("Opção inválida.\n");
            }
            if (opcao != 5) System.out.printf("\nSubtotal: R$ %.2f\n", total);
        } while (opcao != 5);

        System.out.printf("%nTotal a pagar: R$ %.2f%n", total);
        sc.close();
    }
}

