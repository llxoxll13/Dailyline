package net.Project.admin.goods.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class GoodsDAO {
	// DB연결 메소드
	private Connection getConnection() throws Exception {
		Connection con = null;
		Context init = new InitialContext();
		// java:comp/env/context.xml 이름(예: jdbc/orcl)
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/orcl");
		con = ds.getConnection();
		return con;
	}
	
	//전체 제품 개수 가져오기 메소드
	public int getGoodsCount(){
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "";
		ResultSet rs = null;
		int count = 0;	//전체 제품 개수
		
		//DB 연결
		try {
			con = getConnection();			
			//sql 전체 제품 개수 가져오기 SELECT count()
			sql = "SELECT count(*) FROM goods";
			pstmt = con.prepareStatement(sql);
			//rs 저장
			rs = pstmt.executeQuery();
			//rs 데이터 있으면 count저장
			if(rs.next()){
				count = rs.getInt(1); //데이터 있을 경우
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return count;
	}
		
	// 제품 리스트(페이징)
	public List<GoodsBean> getGoodsList(int startRow, int pageSize){
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "";
		ResultSet rs = null;
		List<GoodsBean> list = new ArrayList<>();
		
		try {
			con = getConnection();
			sql = " SELECT * " 
			    + "   FROM ( "				
				+ "         SELECT rownum idx, g.* "
				+ "           FROM (SELECT * FROM goods ORDER BY ca_no ASC, goods_no DESC) g "
				+ "        ) "
				+ "  WHERE idx BETWEEN ? AND ? "
				+ " ORDER BY idx ASC ";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, pageSize);
			rs = pstmt.executeQuery();
			while(rs.next()){
				GoodsBean goodsbean = new GoodsBean();
				goodsbean.setIdx(rs.getInt("idx"));
				goodsbean.setGoods_no(rs.getInt("goods_no"));
				goodsbean.setCa_no(rs.getInt("ca_no"));
				goodsbean.setGoods_name(rs.getString("goods_name"));
				goodsbean.setPrice(rs.getInt("price"));
				goodsbean.setGoods_amt(rs.getInt("goods_amt"));
				goodsbean.setGoods_comment(rs.getString("goods_comment"));
				goodsbean.setGoods_color(rs.getString("goods_color"));
				goodsbean.setGoods_size(rs.getString("goods_size"));
				goodsbean.setImg_file1(rs.getString("img_file1"));
				goodsbean.setImg_file2(rs.getString("img_file2"));
				goodsbean.setReg_date(rs.getTimestamp("reg_date"));
				goodsbean.setUpdate_date(rs.getTimestamp("update_date"));
				list.add(goodsbean);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return list;
	}
	
	// 제품 상세
	public GoodsBean getGoodsDetail(int goods_no){
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "";
		ResultSet rs = null;		
		GoodsBean goodsbean = null;
		
		try {
			con = getConnection();
			sql = " SELECT * FROM goods " 
			    + "  WHERE goods_no = ? ";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, goods_no);
			rs = pstmt.executeQuery();
			if(rs.next()){
				goodsbean = new GoodsBean();
				goodsbean.setGoods_no(rs.getInt("goods_no"));
				goodsbean.setCa_no(rs.getInt("ca_no"));
				goodsbean.setGoods_name(rs.getString("goods_name"));
				goodsbean.setPrice(rs.getInt("price"));
				goodsbean.setGoods_amt(rs.getInt("goods_amt"));
				goodsbean.setGoods_comment(rs.getString("goods_comment"));
				goodsbean.setGoods_color(rs.getString("goods_color"));
				goodsbean.setGoods_size(rs.getString("goods_size"));
				goodsbean.setImg_file1(rs.getString("img_file1"));
				goodsbean.setImg_file2(rs.getString("img_file2"));
				goodsbean.setReg_date(rs.getTimestamp("reg_date"));
				goodsbean.setUpdate_date(rs.getTimestamp("update_date"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return goodsbean;
	}
}
