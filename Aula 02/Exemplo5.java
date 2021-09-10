import java.util.Scanner;

public class Exemplo5 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Digite seu peso");
        float peso = sc.nextFloat();
        System.out.println("Digite sua altura");
        float altura = sc.nextFloat();
        float imc = peso / altura * altura;
        System.out.println("O seu IMC é " + imc + "kg/m²");
      }
}