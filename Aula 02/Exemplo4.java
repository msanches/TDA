import javax.swing.JOptionPane;

public class Exemplo4{
    public static void main(String[] args) {
        float ladoA, ladoB, perimetro, area;
        ladoA = Float.parseFloat(JOptionPane.showInputDialog(null, 
                                        "Digite o valor de um lado em cm: "));
        ladoB = Float.parseFloat(JOptionPane.showInputDialog(null, 
                                        "Digite o valor de outro lado em cm: "));
        perimetro = 2*ladoA + 2*ladoB;
        JOptionPane.showMessageDialog(null, "O perímetro do triângulo é: " 
                                        + perimetro + "cm");
        area = ladoA * ladoB;
        JOptionPane.showMessageDialog(null, "A área do triângulo é: " + area + "cm²");
    }
}