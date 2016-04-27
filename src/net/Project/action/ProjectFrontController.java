package net.Project.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.Member.action.JoinAction;
import net.Member.action.LoginAction;
import net.Project.action.ActionForward;
import net.Project.admin.goods.action.GoodsListAction;
//01.member/join.jsp파일생성
//02.src/net.Member.action패키지생성/ActionForward.java클래스생성
//03.src/net.Member.action안에/Action.java인터페이스생성
//04.src/net.Member.action안에/MemberFrontController.java클래스생성
//@WebServlet("*.do") //컴파일러를 위한 주석! @
public class ProjectFrontController extends HttpServlet {
//공용의클래스명: MemberFrontController extends(상속) HttpServlet을 상속받음.
		
	// 실행을 하려면 ProjectFrontController를 요청하는 페이지가 있어야 한다. 뷰!! 웹컨텐트쪽에..
	// 모든 .do로 끝나는 요청파일은 이쪽으로 온다
	
	/** 내부적으로 호출된다 //get,post 둘다 호출할때 doProsess로 **/
	private void doProcess(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException{
		System.out.println("doProcess() 메소드 호출");
		
		/** 가상주소 가져오기 **/
		String requestURI = request.getRequestURI();
		System.out.println("URI address : "+requestURI);
		//doProcess로 받아온 request내용의 URI주소(프로젝트명아래로 모두) /Dailyline/memberjoin.me
		
		/** 프로젝트 명을 가지고 오는 메소드가 있다. **/
		String contextPath = request.getContextPath();
		System.out.println("ContextPath : "+contextPath);
		//doProcess로 받아온 request내용의 ContextPath주소(즉 프로젝트명) /Dailyline
		
		/** 가상주소에서 프로젝트명의 길이만큼 빼줌 **/
		String command = requestURI.substring(contextPath.length());
		System.out.println("가상주소: " + command);
		//정의해놓은 requestURI주소(/Dailyline/memberlogin.me)에서 
		//contextPath(/Dailyline)의 substring(문자열을뺀다)(즉 프로젝트명을 뺀 URI주소) /memberjoin.me
		
		/** 이동정보 **/
		//이동정보 [를 다루는 지역변수]
		//다형성을 이용한 기능요소 접근 //인터페이스를 액션타입 인터페이스로
		ActionForward forward = null;
		//이동정보 [를 다루는 지역변수 는 초기화를 해주는게 좋음 그래서 = null을 써서 초기화]
		Action action = null;
		//02.src/net.Member.action패키지생성/ActionForward.java클래스 의 값을 null로 초기화
		//03.src/net.Member.action안에/Action.java인터페이스 의 값을 null로 초기화
		
		/** 가상주소비교 **/
		if(command.equals("/main.do")){
			forward = new ActionForward();
			forward.setPath("/main/main.jsp");
			forward.setRedirect(false);
			
		/*join*/	
		} else if(command.equals("/join.do")){//=-:대상의주소값을비교 , .equals:대상의내용자체를비교
		// command에 들어가있는 /memberjoin.me라는 주소값이 join.do와 같으면
			forward=new ActionForward();
			//새로운 ActionForward()객체를 생성
			forward.setPath("./member/join.jsp");
			//ActionForward()클래스의 setPath()메소드의 값을 ./member/join.jsp로 보냄
			forward.setRedirect(false);
			//false:forward / true:sendRedirect
			//ActionForward()클래스의 setRedirect()메소드값을 false로 보냄(즉 forward방식사용)
			/** 예) A.jsp에서 B.jsp로 submit을 하고, B.jsp에서 C.jsp로 forward(또는 redirect)하였을 경우
	   		   	   A.jsp =>(submit) B.jsp ->(forward or redirect) C.jsp	
			 	forward  : C.jsp에서는 A.jsp가 B.jsp에게 보내준 파라미터를 사용할수 있음
			 			    주소창에는 B.jsp로 찍혀있음(C.jsp의 내용이 서버의 내부적으로 실행됨)
				redirect : C.jsp에서는 A.jsp가 B.jsp에게 보내준 파라미터를 사용할수 없음  
						   주소창에는 C.jsp로 찍혀있음(C.jsp의 내용이 브라우저 상에서 실행됨) **/
		
		/*login*/
		} else if(command.equals("/login.do")){
			// ./member/login.jsp
			forward=new ActionForward();
			forward.setPath("./member/login.jsp");
			forward.setRedirect(false);
		} else if(command.equals("/LoginAction.do")){
			action=new LoginAction();
			try {
				forward=action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		
		/*join*/
		}else if(command.equals("join.do")){
			forward=new ActionForward();
			forward.setPath("./member/join.jsp");
			forward.setRedirect(false);
		}else if(command.equals("JoinAction.do")){
			action=new JoinAction();
			try {
				forward=action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		/*admin*/	
		} else if(command.equals("/admin/main.do")){
			forward = new ActionForward();
			forward.setPath("/admin/main.jsp");
			forward.setRedirect(false);
			
		} else if(command.equals("/admin/goods/list.do")){
			action=new GoodsListAction();
			
			try {
				forward = action.execute(request, response); 
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		/** ActionForward 구동 시점 **/
		// 모든 처리결과 외에 원하는 페이지로 이동해야 하기 때문에 꼭 필요.
		// 이동
		if (forward != null) {//forward가 없을경우나 사용자가 껐을때를 대비
			// 1.가상의 주소(.do 등)로 보낼때는 리다이렉트 사용
			//   주소표시줄의 주소가 바뀜
			// 2.구체적인 주소(실제 웹 자원 .jsp 등)로 보낼때 포워드 사용
			//   주소표시줄의 주소가 바뀌지 않음.
			
			if (forward.isRedirect()) {//true : 리다이렉트 //리다이렉트일 경우에는!
				response.sendRedirect(forward.getPath());//포워드 방식의 설정한 Path경로로 이동
			} else {//false : 포워드 //리다이렉트가 아닐 경우에는!
				RequestDispatcher dispacher = request.getRequestDispatcher(forward.getPath());
				//이동할 정보. // 현재 웹프로젝트가 가지고 있는 자원만 내부적으로 서버가 알아서 이동..?
				dispacher.forward(request, response);
			}
		}
	}
	
	// get인지 post인지 모르므로 둘다 오버라이딩 시켜준다 alt+shift+s+v
	/** 모든 get **/
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		System.out.println("get 방식");
		doProcess(request, response);
	}

	/** 모든 post **/
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		System.out.println("post 방식");
		doProcess(request, response);
	}
}
