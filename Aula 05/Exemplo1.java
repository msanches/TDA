//Exemplo1: programa Java que verifica se o número é par.
import java.util.Scanner;
public class Exemplo1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Digite um número inteiro");
        int x = sc.nextInt();
        if(x % 2 == 0){
            System.out.println("O número " + x + " é par");
                }
        sc.close();
    }
}
