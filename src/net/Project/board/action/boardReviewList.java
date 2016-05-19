package net.Project.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.Project.action.Action;
import net.Project.action.ActionForward;
import net.Project.board.db.BoardBean;
import net.Project.board.db.boardDAO;

public class boardReviewList implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("boardReviewList");
		
		boardDAO boardDAO=new boardDAO();
		ActionForward forward=new ActionForward();
		
		/** 세션값 가져오기 **/
		HttpSession session=request.getSession();
		String id=(String)session.getAttribute("id");
		
		/** 없으면 ./login.do **/
		if(id == null){
			forward.setPath("./login.do");
			forward.setRedirect(true);
			return forward;
		}
		
		/** 한글처리 **/
		request.setCharacterEncoding("utf-8");
		
		String pageNum=request.getParameter("pageNum");
		// pageNum 현제 페이지 값. 이동이 편하게 String으로
		
		/** 자바빈 객체생성 **/
		BoardBean boardBean=new BoardBean();
		
		/** 폼 => 자바빈저장 **/
		
		forward.setPath("./board/review.jsp");
		forward.setRedirect(false);
		
		return forward;
	}
}
