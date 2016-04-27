package net.Project.Member.db;
/*
01.[DB] META-INF/context.xml파일에 DB과련하여 수정
02.[DB] Java Resources/src/net.Project.Member.db/MemberBean.java파일생성

getter로 받아오고 setter로 private로 정의되어있는 멤버변수를 바꿔준다
 */
public class MemberBean {
	/*멤버변수*/
	private String id;
	private String passwd;
	private String name;
	private String post;
	private String addr1;
	private String addr2;
	private String phone;
	private String call;
	private String email;
	private int mem_lv;
	
	/*메소드*/
	/*Shift+Alt+S+R getter&setter*/
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getCall() {
		return call;
	}
	public void setCall(String call) {
		this.call = call;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getMem_lv() {
		return mem_lv;
	}
	public void setMem_lv(int mem_lv) {
		this.mem_lv = mem_lv;
	}
}
