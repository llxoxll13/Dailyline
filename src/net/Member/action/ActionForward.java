package net.Member.action;

// 01.member/login.jsp파일생성
// 02.src/net.Member.action패키지생성/ActionForward.java클래스생성
public class ActionForward {
	private boolean isRedirect; // false:forward / true:sendRedirect
	//private:자신의 클래스 내에서만 사용가능 //boolean:논리형 true,false값을 반환 //변수명:isRedirect
	private String path;
	//private:자신의 클래스 내에서만 사용가능 //String:문자열형 //변수명:path
	
	/**	forward : C.jsp에서는 A.jsp가 B.jsp에게 보내준 파라미터를 사용할수 있음
		redirect : C.jsp에서는 A.jsp가 B.jsp에게 보내준 파라미터를 사용할수 없음  **/
	public boolean isRedirect(){
	//public:모든객체사용가능(공용) //boolean:논리형 true,false값을 반환
	//함수명:isRedirect()
		
	}
}
