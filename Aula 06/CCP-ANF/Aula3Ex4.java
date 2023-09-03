import java.util.Scanner;

public class Aula3Ex4 {
    public static void main(String[] args) {
        double a, b, c;
        Scanner sc = new Scanner(System.in);
        System.out.println("Digite o coeficiente a: ");
        a = sc.nextDouble();
        System.out.println("Digite o coeficiente b: ");
        b = sc.nextDouble();
        System.out.println("Digite o coeficiente c: ");
        c = sc.nextDouble();

        System.out.println("X1 =" + getX1(a, b, c));
        System.out.println("X2 =" + getX2(a, b, c));
        sc.close();        
    }
    public static double getDelta(double a, double b, double c){
        return Math.sqrt(b*b - 4*a*c);
    }
    public static double getX1(double a, double b, double c){
        return (-b + getDelta(a, b, c)) / 2 * a;
    }

    public static double getX2(double a, double b, double c){
        return (-b - getDelta(a, b, c)) / 2 * a;
    }
}