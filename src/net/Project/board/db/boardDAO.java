package net.Project.board.db;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class boardDAO {
	
	private Connection getConnection() throws Exception {
		Connection con = null;
		Context init = new InitialContext();
		//DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/orcl11g");
		//DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/orcl");
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/oracle");
		con = ds.getConnection();
		return con;
	}
	
	
	public int getQnaCount(){
		Connection conn = null;
		PreparedStatement pstmt = null;
		StringBuffer sql = new StringBuffer();
		ResultSet rs = null;
		int count = 0;
		
		try {
			conn = getConnection();
			sql.append("select count(*) from boards where board_ca = 5");
			pstmt = conn.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			if(rs.next()){
				count = rs.getInt(1);
			}
			
			System.out.println(count);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return count;
	}
	
	public List<boardQnaBean> getQnaList(int s, int e){
		Connection conn = null;
		PreparedStatement pstmt = null;
		StringBuffer sql = new StringBuffer();
		ResultSet rs = null;
		List<boardQnaBean> qnaList = new ArrayList<boardQnaBean>();
		boardQnaBean qnaBean = null;
		try {
			conn = getConnection();
			sql.append("select * ");
			sql.append("from ");
			sql.append("(select rownum idx, g.* ");
			sql.append("from (select * ");
			sql.append("from boards "); 
			sql.append("where board_ca = 5 ");
			sql.append("order by board_num, re_ref desc, re_seq) g ) ");
			sql.append("where idx between ? and ? "); 
			sql.append("order by idx desc"); 
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, s);
			pstmt.setInt(2, e);
			// s : startRow, e : endRow
			rs = pstmt.executeQuery();
			while(rs.next()){
				qnaBean = new boardQnaBean();
				qnaBean.setIdx(rs.getInt("idx"));
				qnaBean.setBoard_num(rs.getInt("board_num"));
				qnaBean.setSubject(rs.getString("subject"));
				qnaBean.setReg_date(rs.getDate("reg_date"));
				qnaBean.setCount(rs.getInt("count"));
				qnaBean.setMem_id(rs.getString("mem_id"));
				qnaBean.setImg_file1(rs.getString("img_file1"));
				qnaBean.setContents(rs.getString("contents"));
				qnaBean.setRe_ref(rs.getInt("re_ref"));
				qnaBean.setRe_lev(rs.getInt("re_lev"));
				qnaBean.setRe_seq(rs.getInt("re_seq"));
				qnaList.add(qnaBean);
			}	
				System.out.println(qnaList.size());
			
			
			
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}finally{
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
		return qnaList;
	}

}
