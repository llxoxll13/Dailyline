package net.Member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.Project.Member.db.MemberBean;
import net.Project.Member.db.MemberDAO;
import net.Project.action.Action;
import net.Project.action.ActionForward;
import oracle.net.aso.f;

public class JoinAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("JoinAction");	
		request.setCharacterEncoding("utf-8");
		
		/*//사용자입력값 확인하기
		System.out.println("=== 사용자 입력값 확인 ===");
		String id=request.getParameter("id");System.out.println("id : "+id);
		String passwd=request.getParameter("passwd");System.out.println("passwd : "+passwd);
		String pwChk=request.getParameter("pwChk");System.out.println("pwChk : "+pwChk);
		String name=request.getParameter("name");System.out.println("name : "+name);
		
		String post=request.getParameter("post1");System.out.println("post1=post : "+post);
		String post1=request.getParameter("post1");System.out.println("post1 : "+post1);
		String post2=request.getParameter("post2");System.out.println("post2 : "+post2);
		String addr1=request.getParameter("addr1");System.out.println("addr1 : "+addr1);
		String addr2=request.getParameter("addr2");System.out.println("addr2 : "+addr2);
		String phone1=request.getParameter("phone1");System.out.println("phone1 : "+phone1);
		String phone2=request.getParameter("phone2");System.out.println("phone2 : "+phone2);
		String phone3=request.getParameter("phone3");System.out.println("phone3 : "+phone3);
		String call1=request.getParameter("call1");System.out.println("call1 : "+call1);
		String call2=request.getParameter("call2");System.out.println("call2 : "+call2);
		String call3=request.getParameter("call3");System.out.println("call3 : "+call3);
		String email1=request.getParameter("email1");System.out.println("email1 : "+email1);
		String email2=request.getParameter("email2");System.out.println("email2 : "+email2);
		String email3=request.getParameter("email3");System.out.println("email3 : "+email3);
		System.out.println("=== 사용자 입력값 확인 ===");*/
			
		//사용자입력값 빈에 저장	
		MemberBean memberBean=new MemberBean();
		memberBean.setId(request.getParameter("id"));
		memberBean.setPasswd(request.getParameter("passwd"));
		memberBean.setName(request.getParameter("name"));
		memberBean.setPost(request.getParameter("post"));
		memberBean.setAddr1(request.getParameter("addr1"));
		memberBean.setAddr2(request.getParameter("addr2"));
		memberBean.setPhone(request.getParameter("phone1")+request.getParameter("phone2")+request.getParameter("phone3"));
		memberBean.setCall(request.getParameter("call1")+request.getParameter("call2")+request.getParameter("call3"));
		memberBean.setEmail(request.getParameter("email1")+"@"+request.getParameter("email2"));
		System.out.println("사용자입력값 빈에 저장");
		
		//dao에있는 메소드사용을위해?
		MemberDAO memberDAO=new MemberDAO();
		memberDAO.insertMember(memberBean);
		
		HttpSession session=request.getSession();
		session.setAttribute("id", memberBean.getId());
		session.setAttribute("name", memberBean.getName());
		
		//이동
		ActionForward forward=new ActionForward();
		forward.setPath("./main.do");
		forward.setRedirect(false);
		return forward;
	}
}
