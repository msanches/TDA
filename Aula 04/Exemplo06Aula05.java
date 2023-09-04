import java.util.Scanner;

public class Exemplo06Aula05 {
    public static void main(String[] args) {
        char op;
        int qtD;
        Scanner sc = new Scanner(System.in);
        System.out.print("[S] Simples\n[D] Duplo\n[T] Triplo\nDigite uma opção: ");
        op = sc.next().charAt(0);
        System.out.print("Qual a quantidade de diárias? ");
        qtD = sc.nextInt();

        if(op == 'S' || op == 's'){
            System.out.printf("Total a pagar: R$ %.2f", 255.50*qtD);
        } else if(op == 'D' || op == 'd'){
            System.out.printf("Total a pagar: R$ %.2f", 305.50*qtD);
        } else if(op == 'T' || op == 't'){
            System.out.printf("Total a pagar: R$ %.2f", 360.50*qtD);
        } else {
            System.out.printf("Opção inválida");
        }

        sc.close();
    }
}