import java.util.Scanner;

public class Hospedagema {
    public static void main(String[] args) {
        char op;
        int qtD;
        Scanner sc = new Scanner(System.in);
        System.out.print("Qual a quantidade de dias? ");
        qtD = sc.nextInt();
        System.out.println("[S] Simples\n[D] Duplo\n[T] Triplo");
        System.out.print("Qual o tipo de Hospedagem? ");
        op = sc.next().toUpperCase().charAt(0);

        if(op == 'S'){
            System.out.println("Valor a pagar: R$" + qtD * 255.50);
        }
        else if(op == 'D'){
            System.out.println("Valor a pagar: R$" + qtD * 305.50);
        }
        else if(op == 'T'){
            System.out.println("Valor a pagar: R$" + qtD * 360.50);
        } else {
            System.out.println("Tipo de hospedágem inválido!!!");
        }
        sc.close();
    }
}
