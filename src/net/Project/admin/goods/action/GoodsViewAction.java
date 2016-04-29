package net.Project.admin.goods.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.Project.action.Action;
import net.Project.action.ActionForward;
import net.Project.admin.goods.db.GoodsBean;
import net.Project.admin.goods.db.GoodsDAO;

public class GoodsViewAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("GoodsView");
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
		
		int goods_no = Integer.parseInt(request.getParameter("goods_no")); 
		
		GoodsDAO goodsdao = new GoodsDAO();
		GoodsBean goodsbean = goodsdao.getGoodsDetail(goods_no);
		
		String req_pageNum = request.getParameter("pageNum");
		if(req_pageNum == null){
			req_pageNum = "1";
		}
		int pageNum = Integer.parseInt(req_pageNum);
		
		// 저장
		request.setAttribute("goodsbean", goodsbean);
		request.setAttribute("pageNum", pageNum);
		
		forward.setPath("./goods/view.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}
