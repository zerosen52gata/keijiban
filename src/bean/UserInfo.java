package bean;

public class UserInfo {
	private static String id;
	private static String pw;
	private static String name;
	private static String mail;
	public UserInfo(String id, String pw, String name, String mail) {
		super();
		UserInfo.id = id;
		UserInfo.pw = pw;
		UserInfo.name = name;
		UserInfo.mail = mail;
	}
	public UserInfo(String id, String pw, String name) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
	}
	public UserInfo(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}
	public static String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public static String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public static String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public static String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
}
