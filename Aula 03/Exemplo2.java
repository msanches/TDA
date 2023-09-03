//Exemplo1: programa que obtém a idade e mostra 
// se a pessoa é maior ou menor de idade
import java.util.Scanner;
public class Exemplo2 {
	public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Digite sua idade:");
        int x = sc.nextInt();
        if(x >=18){
            System.out.println("Maior de idade");
        } else {
             System.out.println("Menor de idade");
        }
        sc.close();
    }
}