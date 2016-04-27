package net.Member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.Project.Member.db.MemberBean;
import net.Project.action.Action;
import net.Project.action.ActionForward;

public class JoinAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("JoinAction");	
		request.setCharacterEncoding("utf-8");
		MemberBean memberbean=new MemberBean();
		
		
		
		
		return null;
	}
}
