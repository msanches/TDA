import java.util.Scanner;

public class Aula3Ex4 {
    public static void main(String[] args) {
        float a, b, c;
        Scanner sc = new Scanner(System.in);
        System.out.println("Digite o coeficiente a:");
		a = sc.nextInt();
        System.out.println("Digite o coeficiente b:");
		b = sc.nextInt();
        System.out.println("Digite o coeficiente c:");
		c = sc.nextInt();
        
        System.out.println("x1 = " + getX1(a, b, c));
        System.out.println("x2 = " + getX2(a, b, c));
        sc.close();
    }

    public static float getDelta(float a, float b, float c){
        float delta = (float) Math.sqrt(b*b - 4*a*c);
        return delta;
    }
    public static float getX1(float a, float b, float c){
        float x1 = (-b + getDelta(a, b, c))/2*a;
        return x1;
    }
    public static float getX2(float a, float b, float c){
        float x2 = (-b - getDelta(a, b, c))/2*a;
        return x2;
    }
}