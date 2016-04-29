package net.Project.admin.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.Project.action.Action;
import net.Project.action.ActionForward;
import net.Project.admin.goods.action.GoodsListAction;
import net.Project.admin.goods.action.GoodsViewAction;



public class AdminFrontController extends HttpServlet {

	private void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());

		ActionForward forward = null;
		Action action = null;		
		System.out.println("command : " + command);
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
		
		// 관리자 - 메인
		if(command.equals("/admin/main.ad")){
			forward = new ActionForward();
//			forward.setPath("/admin/main.jsp");
			forward.setPath("/admin/adMain.jsp");
			forward.setRedirect(false);
		}
		else if(command.equals("/admin/goodsList.ad")){
			action = new GoodsListAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if(command.equals("/admin/goodsView.ad")){
			action = new GoodsViewAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		if (forward != null) {
			if (forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher dispacher = request.getRequestDispatcher(forward.getPath());
				dispacher.forward(request, response);
			}
		}
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}
	
}
