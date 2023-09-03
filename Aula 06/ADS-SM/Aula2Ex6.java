import java.util.Scanner;

public class Aula2Ex6{
    public static void main(String[] args) {
        float a, b;
        Scanner sc = new Scanner(System.in);
        System.out.println("Digite o comprimento da Rua do Sol em m");
        a = sc.nextFloat();
        System.out.println("Digite o comprimento da Estrada dos Pássaros Verdes em m");
        b = sc.nextFloat();
        System.out.println(calculaCerca(a, b));
        sc.close();
    }
    public static float calculaCerca(float a, float b){
        return (float) (Math.sqrt(a*a + b*b));
    }
}