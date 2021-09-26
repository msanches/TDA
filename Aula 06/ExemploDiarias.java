import javax.swing.JOptionPane;

public class ExemploDiarias {
    public static void main(String[] args) {
        int diarias, tipo;

        tipo = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite o tipo de hospedagem:\n" +
                            "1- Simples\n2- Duplo\n3- Triplo"));
                            diarias = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite a quantidade de diárias:"));
        switch(tipo){
            case 1:
                JOptionPane.showMessageDialog(null, "Valor total R$ " + (diarias * 255.50));
                break;
            case 2:
                JOptionPane.showMessageDialog(null, "Valor total R$ " + (diarias * 305.50));
                break; 
            case 3:
                JOptionPane.showMessageDialog(null, "Valor total R$ " + (diarias * 360.50));
                break;
            default:
               JOptionPane.showMessageDialog(null, "Tipo de hospedagem inválida!");
        }
    }   
}
