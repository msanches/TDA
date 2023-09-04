import java.util.Scanner;

public class Exemplo06Aula05b {
        public static void main(String[] args) {
        char op;
        int qtD;
        Scanner sc = new Scanner(System.in);
        System.out.print("[S] Simples\n[D] Duplo\n[T] Triplo\nDigite uma opção: ");
        op = sc.next().charAt(0);
        System.out.print("Qual a quantidade de diárias? ");
        qtD = sc.nextInt();

        switch(op){
            case 'S':
            case 's':
                System.out.printf("Total a pagar: R$ %.2f", 255.50*qtD);
            break;
            case 'D':
            case 'd':
                System.out.printf("Total a pagar: R$ %.2f", 305.50*qtD);
            break;
            case 'T':
            case 't':
                System.out.printf("Total a pagar: R$ %.2f", 350.50*qtD);
            break;
            default:
                System.out.println("Opção inválida!!!");
        }

        sc.close();
    }
}