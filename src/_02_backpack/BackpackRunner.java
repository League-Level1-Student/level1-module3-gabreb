package _02_backpack;

public class BackpackRunner {
	public static void main(String[] args) {
		Backpack b = new Backpack();
		Pencil Pencil = new Pencil();
		Ruler ruler = new Ruler();
		b.putInBackpack(Pencil);
		b.putInBackpack(ruler);
		Textbook textbook = new Textbook();
		b.putInBackpack(textbook);
		b.packAndCheck();
		
	}
}
