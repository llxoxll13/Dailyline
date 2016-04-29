package net.Project.admin.goods.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.Project.action.Action;
import net.Project.action.ActionForward;
import net.Project.admin.goods.db.GoodsBean;
import net.Project.admin.goods.db.GoodsDAO;

public class GoodsListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("GoodsList");
		ActionForward forward = new ActionForward();
		
		/** 세션 체크 **/
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		//세션값 없으면 ./MemberLogin.ad 이동
//		if(id == null){
//			forward.setPath("./MemberLogin.ad");
//			forward.setRedirect(true);
//			
//			return forward;
//		}
		/** 세션 체크 **/
		
		GoodsDAO goodsdao = new GoodsDAO();
//		goodsList = goodsdao.getAllList();		
	
		// 전체 제품 개수
		int count = goodsdao.getGoodsCount();
		
		// 우리가 원하는 페이지 가져오기
		// 한페이지 보여줄 글 개수 설정
		int pageSize = 10;		
		// 페이지 가져오기
		String pageNum = request.getParameter("pageNum");
		if(pageNum == null){
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		
		// 첫행번호 구하기(식) result(pageSize 10) = 1 11 21 31 41 ... 
		int startRow = (currentPage -1) * pageSize + 1;
		// 마지막 행 구하기(식) result(pageSize 10) = 10 20 30 40 ...
		int endRow = currentPage * pageSize;
		// 원하는 페이지의 제품목록을 가져오는 메소드
		List<GoodsBean> goodsList = null;
		goodsList = goodsdao.getGoodsList(startRow, endRow);
		
		/* 페이지 블록 정보 */
		// 전체 페이지블록 개수 구하기
		// 글50개 한 화면에 보여줄 글 10 -> 50/10 = 5블럭 + 0(나머지) = 5
		// 글55개 한 화면에 보여줄 글 10 -> 55/10 = 5블럭 + 5개글 1페이지블록 -> 6
		int pageCount = count / pageSize + (count%pageSize==0 ? 0 : 1);
		
		// 한 화면에 보여줄 페이지 갯수
		int pageBlock = 3;
		
		// 화면에 보여줄 시작페이지번호 구하기
		//1~10 11~20 21~30 ....
		//1~10 => 1	   11~20 => 11
		int startPage = 
		((currentPage/pageBlock) - (currentPage%pageBlock==0 ? 1 : 0)) * pageBlock + 1;
		// 화면에 보여줄 끝페이지번호 구하기
		int endPage = startPage + pageBlock -1;
		if(endPage > pageCount){
			endPage = pageCount;
		}
		
		// 저장
		request.setAttribute("count", count);
		request.setAttribute("goodsList", goodsList);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("pageCount", pageCount);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("pageBlock", pageBlock);
		request.setAttribute("pageNum", pageNum);
		
		
		forward.setPath("./goods/list.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}
