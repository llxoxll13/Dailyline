package net.Member.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//01.member/login.jsp파일생성
//02.src/net.Member.action패키지생성/ActionForward.java클래스생성
//03.src/net.Member.action안에/Action.java인터페이스생성
//04.src/net.Member.action안에/MemberFrontController.java클래스생성
public class MemberFrontController extends HttpServlet{
//공용의클래스명: MemberFrontController extends(상속) HttpServlet을 상속받음.
	
	// 실행을 하려면 ProjectFrontController를 요청하는 페이지가 있어야 한다. 뷰!! 웹컨텐트쪽에..
	// get인지 post인지 모르므로 둘다 오버라이딩 시켜준다 alt+shift+s+v
	// 모든 .do로 끝나는 요청파일은 이쪽으로 온다
	
	/** 모든 get **/
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}
	
	/** 모든 post **/
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}

	
	
	
	
}
