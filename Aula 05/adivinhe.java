import java.util.Scanner;
import java.util.Random;
class Main {
  public static void main(String[] args) {
        Random gerador = new Random();
        int num = gerador.nextInt(20);
        int x, i = 0;
        Scanner sc = new Scanner(System.in);
        do{
          i++;
          System.out.println("Digite um número entre 0 e 20:");
          x = sc.nextInt();
          if(x == num){
            System.out.println("Parabéns, você acertou em " + i + " tentativas" );
          } else if (x < num) {
            System.out.println("O número pensado é maior");
          } else {
            System.out.println("O número pensado é menor");
          }
        } while (x != num); 
        sc.close();
  }
}

