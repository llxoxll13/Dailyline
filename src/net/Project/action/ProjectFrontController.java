package net.Project.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.Project.admin.goods.action.GoodsListAction;

//@WebServlet("*.do") //컴파일러를 위한 주석! @
public class ProjectFrontController extends HttpServlet {
		
	// 실행을 하려면 ProjectFrontController를 요청하는 페이지가 있어야 한다. 뷰!! 웹컨텐트쪽에..
	// get인지 post인지 모르므로 둘다 오버라이딩 시켜준다 alt+shift+s+v
	// 모든 .do로 끝나는 요청파일은 이쪽으로 온다
		
	/** 내부적으로 호출된다 //get,post 둘다 호출할때 doProsess로 **/
	private void doProcess(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		System.out.println("doProcess() 메소드 호출");
		//http://localhost:8080/Dailyline/main.do
		
		/** 가상주소 가져오기 **/
		String requestURI = request.getRequestURI();
		System.out.println("URI address : "+requestURI);
		
		/** 프로젝트 명을 가지고 오는 메소드가 있다. **/
		String contextPath = request.getContextPath();
		System.out.println("ContextPath : "+contextPath);
		
		/** 가상주소에서 프로젝트명의 길이많큼 빼줌 **/
		String command = requestURI.substring(contextPath.length());
		System.out.println("command : " + command);
		//System.out.println("가상주소 : "+ command);
		
		/** 참조변수 생성 **/
		ActionForward forward = null;
		//이동정보 [를 다루는 지역변수 는 초기화를 해주는게 좋음 그래서 = null을 써서 초기화]
		Action action = null;
		//다형성을 이용한 기능요소 접근 //인터페이스를 액션타입 인터페이스로
//		http://localhost:8080/line/main.do
//		requestURI : /line/main.do
//		contextPath : /line
//		command : /main.do
//
//		http://localhost:8080/line/admin/main.do
//		requestURI : /line/admin/main.do
//		contextPath : /line
//		command : /admin/main.do
//
//		http://localhost:8080/line/admin/member/main.do
//		requestURI : /line/admin/member/main.do
//		contextPath : /line
//		command : /admin/member/main.do		
		
		/** 공통 멤버 **/
		if(command.equals("/main.do")){
			// main.do를 요청할 경우
			forward = new ActionForward();
			// 새로운 ActionForward()객체를 생성함
			forward.setPath("/main/main.jsp");
			// ./main/main.jsp로 이동해야 함, 
			forward.setRedirect(false);
			// 리다이렉트를 안하겠다 false. 포워드 방식을 쓰겠다는 뜻
		}
		// 愿�━��- 硫붿씤
			else if(command.equals("/admin/main.do")){
				forward = new ActionForward();
				forward.setPath("/admin/main.jsp");
				forward.setRedirect(false);
			}
			else if(command.equals("/admin/goods/list.do")){
				action = new GoodsListAction();
				
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
	
	/** 리다이렉트방식 **/
	// : 클라이언트에게 가상의 주소를 요청하게 만들때
	// response.sendRedirect("./main/main.jsp");
	// sendRedirect는 클라이언트가 다시 요청하도록 작은 쪽지를 보낸다..
	// 요청하는시점에 브라우저가 갱신된다. 모델2에는 적합하지 않음

	/** 포워드 방식 **/
	// : 클라이언트의 가상주소 요청에 대해서 실제 웹자원을 응답으로 줄때
	// dispatcher참조변수로 받기
	// RequestDispatcher dispatcher =
	// request.getRequestDispatcher("./main/main.jsp");
	// dispatcher.forward(request, response);
	// forward(리퀘스트,리스폰스);를 받는다 위에 우리가 받아온 것을 고스란히 다양한 정보를 그대로 쓸 수 있다
	// 다시 요청하는 리다이렉트가 아니라 한번의 요청을 응답으로 받아오기 때문에 주소표시줄에 main.do라는
	// 가상의 주소가 들어간다

	// 요청하는 주소가 구체적일경우 포워드 방식을 사용,
	// main.do에서 메인으로 갔을때도 같은 가상의 주소를 사용할 수 없기 때문에 주소표시줄도 같이 갱신해줘야
	// 하기때문에 그럴경우
	// 리다이렉트 방식을 사용하게 된다.
	
}
