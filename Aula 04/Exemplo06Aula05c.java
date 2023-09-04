import java.util.Scanner;

public class Exemplo06Aula05c {
    public static void main(String[] args) {
        char op;
        int qtD;
        double total;
        Scanner sc = new Scanner(System.in);
        System.out.print("[S] Simples\n[D] Duplo\n[T] Triplo\nDigite uma opção: ");
        op = sc.next().charAt(0);
        System.out.print("Qual a quantidade de diárias? ");
        qtD = sc.nextInt();

        total = switch (op) {
            case 'S', 's' -> qtD * 205.50;
            case 'D', 'd' -> qtD * 305.50;
            case 'T', 't' -> qtD * 350.50;
            default -> -1;
        };
        
        if(total == -1)
            System.out.println("Opção inválida");
        else
            System.out.printf("Total a pagar: R$ %.2f", total);
        sc.close();
    }
}
