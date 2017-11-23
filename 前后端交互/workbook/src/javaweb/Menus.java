package javaweb;

public class Menus {
	private int menu1Id;
	private String textword;
	private int foreignid;
	public int getMenu1Id() {
		return menu1Id;
	}
	public void setMenu1Id(int menu1Id) {
		this.menu1Id = menu1Id;
	}
	public String getTextword() {
		return textword;
	}
	public void setTextword(String textword) {
		this.textword = textword;
	}
	public int getForeignid() {
		return foreignid;
	}
	public void setForeignid(int foreignid) {
		this.foreignid = foreignid;
	}
	@Override
	public String toString() {
		return "Menus [menu1Id=" + menu1Id + ", textword=" + textword + ", foreignid=" + foreignid + "]";
	}
}
