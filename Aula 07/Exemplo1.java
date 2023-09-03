//Exemplo: programa Java que utiliza uma função.
import java.util.Scanner;
public class Exemplo1 {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    System.out.println("Entre com o 1º valor");
    float x = sc.nextFloat();
    System.out.println("Entre com o 2º valor");
    float y = sc.nextFloat();
    System.out.println("A soma é " + somaDoisValores(x,y));
  }
  public static float somaDoisValores (float a, float b){
	  return a + b;
  }
}