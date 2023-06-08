package lesson18;
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class prog {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		okno myOkno = new okno();
	}

}
class okno extends JFrame
{
	private Timer rTimer;
	private JTextArea text;
	private boolean flagExit =false;
	
	private void setWindow_()
	{
	Toolkit tk = Toolkit.getDefaultToolkit();
	Dimension dm = tk.getScreenSize();
	setBounds(0,0,dm.width,dm.height);
	this.setMinimumSize(dm);
	this.setMaximumSize(dm);
	setUndecorated(true);
	this.requestFocus();
	this.setFocusable(true);
	this.toFront ();
	this.setDefaultCloseOperation(JFrame. EXIT_ON_CLOSE);
	setVisible(true);
	}
	public okno() {
		setContent();
		setWindow_();
	}
	
	private void setContent(){
	Container cont = getContentPane();
	JPanel pan = new JPanel();
	pan.setLayout(null);
	Font labFont1 = new Font("serif",0,40);
	Font labFont2 = new Font("serif",0,25);
	
	JLabel lab1 = new JLabel("BAW  ќћѕ№ё“≈– «јЅЋќ »–ќ¬јЌ!");
	lab1.setForeground(Color.BLUE) ;
	lab1.setFont(labFont1);
	lab1.setBounds(50, 0, 800, 100);
	pan.add(lab1);
	
	JLabel lab2 = new JLabel("поздравл€ем с новым проблемами");
	lab2.setForeground(Color.BLUE) ;
	lab2.setFont(labFont2);
	lab2.setBounds(50, 50, 800, 100);
	pan.add(lab2);
	
	JLabel lab3 = new JLabel("с 1 апрелем");
	lab3.setForeground(Color.BLUE) ;
	lab3.setFont(labFont1);
	lab3.setBounds(50, 100, 800, 100);
	pan.add(lab3);
	
	JLabel lab4 = new JLabel("ƒл€ сн€ти€ блокировки, ответьте на вопрос (вы √≈…??????)");
	lab4.setForeground(Color.BLUE) ;
	lab4.setFont(labFont2);
	lab4.setBounds(50, 150, 800, 100);
	pan.add(lab4);
	
	text = new JTextArea();
	text.setFont(labFont2);
	text.setBounds(50, 250, 300, 35);
	text.setForeground(new Color(0, 0, 100));
	text.setBackground(Color.WHITE);
	pan.add(text);
	
	JButton btn = new JButton("¬¬ќƒ");
	btn.setSize(150,35);
	btn.setFont(labFont2);
	btn.setLocation(50,300);
	btn.addActionListener(e -> {
		String str = text.getText().toLowerCase().trim();
		String test = (String)"да";
		if (str.equals(test)) {
			JOptionPane.showMessageDialog(null, "я так и знал:)");
			flagExit = true;
			System.exit(0);
		} else text.setText("€ же знаю что ты гей!!");
});
	pan.add(btn);
	cont.add(pan);
	}
}

