import javax.swing.JOptionPane;

public class Tabuada {
    public static void main(String[] args) {
        int num, i;
        String res = "", temp;
        temp = JOptionPane.showInputDialog(null, "Digite um número inteiro: "); 
        num = Integer.parseInt(temp);

        res += String.format("Tabuada do %d\n", num);
        for(i=0; i <=10; i++){
            //res += num + " * " + i + " = " + num*i + "\n";
            res += String.format("%d * %d = %d \n", num, i, num*i);
        }
        System.out.println(res);
        JOptionPane.showMessageDialog(null, res);
    }
}