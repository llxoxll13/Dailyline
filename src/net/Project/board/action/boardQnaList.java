package net.Project.board.action;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.Project.action.Action;
import net.Project.action.ActionForward;
import net.Project.board.db.boardDAO;
import net.Project.board.db.boardQnaBean;

public class boardQnaList implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("boardQnaList");
		ActionForward forward = new ActionForward();
		// 세션 아이디 영역
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		
		// 세션 아이디 영역 끝
		
		
		boardDAO bdao = new boardDAO();
		
		
		
		int count = bdao.getQnaCount();
		// DB의 글 수 가져오기
		
		int pageSize = 15;
		// 출력하고자하는 페이지의 크기
		
		String pageNum = request.getParameter("pageNum");
		if(pageNum == null){
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		// pageNum 현제 페이지 값. 이동이 편하게 String으로
		// currentPage : 연산을 위한 parseInt 된 pageNum값
		
		int startRow = (currentPage -1) * pageSize + 1;
		int endRow = currentPage * pageSize;
		// * Oracle은 endRow를 사용한다.
		// startRow : 페이지 블럭의 첫 페이지 ( 페이지 사이즈 10 )
		// endRow : 페이지 블럭의 마지막 페이지
		List<boardQnaBean> qnaList = bdao.getQnaList(startRow,endRow);
		
		int pageCount = count / pageSize + (count%pageSize==0 ? 0 : 1);
		int pageBlock = 10;
		
		int startPage = ((currentPage/pageBlock) - (currentPage%pageBlock==0 ? 1 : 0)) * pageBlock + 1;
				// 화면에 보여줄 끝페이지번호 구하기
		int endPage = startPage + pageBlock -1;
		
		if(endPage > pageCount){ endPage = pageCount; }
		
		
		request.setAttribute("count", count);
		request.setAttribute("qnaList", qnaList);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("pageCount", pageCount);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("pageBlock", pageBlock);
		request.setAttribute("pageNum", pageNum);
		
		forward.setPath("./board/boardqna.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}
