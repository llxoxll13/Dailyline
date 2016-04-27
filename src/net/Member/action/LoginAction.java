package net.Member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.Project.Member.db.MemberDAO;
import net.Project.action.Action;
import net.Project.action.ActionForward;

public class LoginAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("LoginAction");
		request.setCharacterEncoding("utf-8");
		//폼 id,passwd가져오기
		String id=request.getParameter("id");
		System.out.println("id : "+id);
		String passwd=request.getParameter("passwd");
		System.out.println("passwd : "+passwd);
		//DB객체생성 memberdao
		MemberDAO memberdao=new MemberDAO();
		//int chech=메소드호출 userCheck(id,passwd)
		int check=memberdao.userCheck(id, passwd);
		//check==1  로그인인증 main.jsp이동
		//check==0  "비밀번호틀림" 뒤로이동
		//check==-1 "아이디없음" 뒤로이동
		System.out.println("check1 : " + check);
		if(check == 0){ //로그인이 안됐을때/서버측에서 이동할 필요없음.
			System.out.println("[check == 0]check : " +check);
			//응답을 주는 도구[response]가 있어야한다.
			PrintWriter out=response.getWriter();//response객체에서 getWriter()메소드사용하여 DB값을호출? 하는 객체생성?
			response.setContentType("text/html; charser=UTF-8");//한글깨짐방지
			//response.setCharacterEncoding("UTF-8");
			out.println("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />");
			out.println("<script>");
			out.println("alert('비밀번호틀림');");
			out.println("history.back();");
			out.println("</script>");
			out.close();//입출력관련 객체의 경우 명시적으로 닫아주는것이 좋다.
			return null;
		}else if(check==-1){//로그인이 안됐을때
			System.out.println("[check == 1]check : " +check);
			PrintWriter out=response.getWriter();
			//response.setContentType("text/html; charser=UTF-8");
			response.setCharacterEncoding("UTF-8");
			out.println("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />");
			out.println("<script>");
			out.println("alert('아이디없음');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
			return null;
		}
		System.out.println("[check == -1]check : " +check);
		//세션값 생성"id"
		HttpSession session=request.getSession();
		session.setAttribute("id", id);
		
		ActionForward forward=new ActionForward();
		forward.setRedirect(true);
		//관리자 ./admin/main.do
		
		if(memberdao.isAdmin(id)==1){//관리자접속시
			forward.setPath("./admin/main.do");
			return forward;
		}else if(memberdao.isAdmin(id)!=1){
			forward.setPath("./main.do");
			return forward;
		}
		forward.setPath("./main.do");
		return forward;
	}
}
