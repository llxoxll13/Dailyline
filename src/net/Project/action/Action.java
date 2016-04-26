package net.Project.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//01.member/memberjoin.jsp파일생성파일생성
//02.src/net.Member.action패키지생성/ActionForward.java클래스생성
//03.src/net.Member.action안에/Action.java인터페이스생성
public interface Action {
//인터페이스 다중상속가능 추상메서드만적용 상수만가짐 메서드만표현가능 클래스상속과인터페이스상속중복가능 객체생성불가 자식에게강제성을가짐
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)throws Exception;
	//공용의 리턴형:ActionForward 메소드명:execute() (추상메소드)
	//매개변수로 HttpServeletRequest와 HttpServletResponse를 받는다.
	//Exception 예외처리
	/** HttpServletRequest
		클라이언트의 모든 요청 정보 보유
		request header
		form data, query parameter
		InputStream(클라이언트로부터 전송되어지는 데이터)
		기타 클라이언트 정보얻기 à 세션 정보, 쿠키, path ...
		
	** HttpServletResponse
		클라이언트에게 보내지는 모든 정보 보유
		response header
		OutputStream (클라이언트에게 보내지는 데이터)
		쿠키 설정
		세션 설정  **/
}
