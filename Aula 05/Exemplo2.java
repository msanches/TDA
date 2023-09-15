import javax.swing.JOptionPane;

public class Exemplo2 {
    public static void main(String[] args) {
        int num, i;
        String result;
        num = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite um número inteiro"));
        result = "Tabuada do " + num;
        for(i=0; i<=10; i++){
            result += "\n" + num + " x " + i + " = " + num*i;
        }
        JOptionPane.showMessageDialog(null, result);
        System.out.println(result);
    }
}