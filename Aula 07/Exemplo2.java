import java.util.Scanner;

public class Exemplo2 {
    public static void main(String[] args) {
        int num;
        Scanner sc = new Scanner(System.in);
        System.out.println("Digite um número: ");
        num = sc.nextInt();
        sc.close();
        for(int i=0; i<=10; i++){
            System.out.println(num + " x " + i + " = " + num*i);
            System.out.println();
        }
    }
}