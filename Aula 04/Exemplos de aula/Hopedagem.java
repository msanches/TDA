import java.util.Scanner;

public class Hopedagem {
    public static void main(String[] args) {
        char op;
        int qtD;
        Scanner sc = new Scanner(System.in);
        System.out.print("Qual a quantidade de dias? ");
        qtD = sc.nextInt();
        System.out.println("[S] Simples\n[D] Duplo\n[T] Triplo");
        System.out.print("Qual o tipo de Hospedagem? ");
        op = sc.next().charAt(0);

        if(op == 'S' || op == 's'){
            System.out.println("Valor a pagar: R$" + qtD * 255.50);
        }
        else if(op == 'D' || op == 'd'){
            System.out.println("Valor a pagar: R$" + qtD * 305.50);
        }
        else if(op == 'T' || op == 't'){
            System.out.println("Valor a pagar: R$" + qtD * 360.50);
        } else {
            System.out.println("Tipo de hospedágem inválido!!!");
        }
        sc.close();
    }
}