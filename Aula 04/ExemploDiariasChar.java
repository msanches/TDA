import javax.swing.JOptionPane;

public class ExemploDiariasChar {
    public static void main(String[] args) {
        int diarias;
        char tipo;
        tipo = JOptionPane.showInputDialog(null, "Digite o tipo de hospedagem:\n" +
                            "[S]imples\n[D]uplo\n[T]riplo").charAt(0);
                            diarias = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite a quantidade de diárias:"));
        switch(tipo){
            case 's':
            case 'S':
                JOptionPane.showMessageDialog(null, "Valor total R$ " + (diarias * 255.50));
                break;
            case 'd':
            case 'D':
                JOptionPane.showMessageDialog(null, "Valor total R$ " + (diarias * 305.50));
                break; 
            case 't':
            case 'T':
                JOptionPane.showMessageDialog(null, "Valor total R$ " + (diarias * 360.50));
                break;
            default:
               JOptionPane.showMessageDialog(null, "Tipo de hospedagem inválida!");
        }
    }   
}
