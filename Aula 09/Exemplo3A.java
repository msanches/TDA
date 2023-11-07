import java.util.Scanner;

public class Exemplo3A {
    public static void main(String[] args) {
        double salario;
        Scanner sc = new Scanner(System.in);
        System.out.print("Digite o salário do funcionário");
        salario = sc.nextDouble();
        System.out.println("Salário antes do método: " + salario);
        calculaAumento(salario);
        System.out.println("Salário após o método: " + salario);
    }

    public static void calculaAumento(double salario){
        salario = salario * 1.03;
    }
}
