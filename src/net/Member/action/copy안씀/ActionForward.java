package net.Member.action.copy안씀;

// 01.member/memberjoin.jsp파일생성
// 02.src/net.Member.action패키지생성/ActionForward.java클래스생성
public class ActionForward {
	//>멤버변수
	private boolean isRedirect; // false:forward / true:sendRedirect
	//private:자신의 클래스 내에서만 사용가능 //boolean:논리형 true,false값을 반환 //변수명:isRedirect
	private String path;
	//private:자신의 클래스 내에서만 사용가능 //String:문자열형 //변수명:path
	
	/** 예) A.jsp에서 B.jsp로 submit을 하고, B.jsp에서 C.jsp로 forward(또는 redirect)하였을 경우
   		   A.jsp =>(submit) B.jsp ->(forward or redirect) C.jsp	
	 	forward  : C.jsp에서는 A.jsp가 B.jsp에게 보내준 파라미터를 사용할수 있음
		redirect : C.jsp에서는 A.jsp가 B.jsp에게 보내준 파라미터를 사용할수 없음  **/
	//>메소드
	public boolean isRedirect(){
	//public:모든객체사용가능(공용) //boolean:논리형 true,false값을 반환
	//함수명:isRedirect()
		return isRedirect;
		//메소드의 반환값이 boolean(참,거짓)형이므로 return필요
	}
	//>ALT+SHIFT+S+R(getters&setters생성단축키)
	/** getter : 필드(멤버변수)가 가지고 있는 값을 꺼내오는 기능을 한다.
		setter : 값을 주는 개념. 매개변수 1개가 필요하다. 하나의 멤버변수에 하나의 getter와 하나의 setter가 있을 수 있다. **/
	public void setRedirect(boolean isRedirect) {
	//공용의 반환값이 없는 setRedirect변수명을가진 메소드. 매개변수:boolean형 변수명:isRedirect
		this.isRedirect = isRedirect; //변화될값 = 받아온값
		//은닉화하였던(private) boolean형의 isRedirect의 값을 set메소드를 사용하여 받아온값으로 저장시킴.(f/t)
	}
	public String getPath() {
	//공용의 String형의 반환값을 가진 getPath()메소드.	
		return path;
		//기존에 저장되어있던 path값을 꺼내어 메소드가 호출된 곳으로 전달.
	}
	public void setPath(String path) {
	//공용의 반환값이 없는 setPath(String path)메소드. 매개변수:String형 변수명:path
		this.path = path; //변화될값 = 받아온값
		//은닉화하였던(private) String형의 path의 값을 set메소드를 사용하여 받아온값으로 저장시킴.
	}
}
