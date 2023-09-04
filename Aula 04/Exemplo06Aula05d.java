import java.util.Scanner;

public class Exemplo06Aula05d {
    public static void main(String[] args) {
        char op;
        int qtD;
        Scanner sc = new Scanner(System.in);
        System.out.print("[S] Simples\n[D] Duplo\n[T] Triplo\nDigite uma opção: ");
        op = sc.next().charAt(0);
        System.out.print("Qual a quantidade de diárias? ");
        qtD = sc.nextInt();

        switch (op) {
            case 'S', 's' -> System.out.printf("Total a pagar: R$ %.2f", qtD * 205.50);
            case 'D', 'd' -> System.out.printf("Total a pagar: R$ %.2f", qtD * 355.50);
            case 'T', 't' -> System.out.printf("Total a pagar: R$ %.2f", qtD * 350.50);
            default -> System.out.println("Opção inválida");
        };           
        sc.close();
    }
}