package net.Project.Member.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import net.Project.admin.goods.db.GoodsBean;

/*
01.[DB] META-INF/context.xml파일에 DB과련하여 수정
02.[DB] Java Resources/src/net.Project.Member.db/MemberBean.java파일생성
03.[DB] Java Resources/src/net.Project.Member.db/MemberDAO.java파일생성
*/
public class MemberDAO {
	private Connection getConnection() throws Exception{
	//DB연결 메소드(Connection 객체 가져오는 메소드) getConnection()
		Connection con=null;//데이터베이스 연결 변수 선언
		Context init=new InitialContext();//탐색기를 연다
		DataSource ds=(DataSource) init.lookup("java:comp/env/jdbc/orcl");
		//DataSource ds=(DataSource) init.lookup("jdbc:oracle:thin:@localhost:1521/orcl");// 커넥션 //그안에서 파일하나를 얻어온다
		//DataSource ds=(DataSource) init.lookup("java:comp/env/jdbc/ora11g");
		con=ds.getConnection();//데이터베이스에 연결할 변수 안에 커넥션(DB)안에서 얻어온 파일하나를 넣는다.
		return con;
		/*	JNDI는 자바 네이밍 디렉토리 인터페이스(Java Naming and Directory Interface)의 약자이다. 
			저장되는 공간이 폴더 형태로 되어있고, 각 객체가 폴더 내에 저장된다. 
			"저장된 개체의 주소값을 넘겨달라"가 룩업이다.
			쉽게 생각하면 탐색기라고 할 수 있다. 
			Context 새 개체를 만들고, comp/env에 접근한 뒤, 
			그 안에서 지정한 이름(jdbc/oracle)의 데이터 소스를 얻어온다. 그리고 나서 겟 커넥션을 하면 된다.   
			그 전에는 연결->사용->해제 였으나, 이제는 연결->사용-> "반환"으로 바뀐다.(커넥션풀) */
	}
	

	
	/** Member userCheck(로그인사용자확인메소드) **/
	public int userCheck(String id, String passwd){
		Connection con=null;//데이터베이스 연결변수
		PreparedStatement pstmt=null;//사용자입력값을폼에서받아 DB에저장할수있는 변수
		ResultSet rs=null;//DB에서 가져온값이 들어가는 변수
		String sql="";//DB에 명형할 쿼리문 변수
		int check=-1;//맞으면1,틀리면0,그외-1
		
		try {
			//드라이버 로드 //DB연결
			con=getConnection();
			//3.id에 해당하는 passwd가져오기
			sql="select passwd from members where id=?";//members안의 id가 사용자 입력값(?)이랑 같은 passwd를 가져온다
			pstmt=con.prepareStatement(sql);//변수pstmt안에 sql문을 이용하여 DB의 값을 변경한것을 저장한다
			pstmt.setString(1, id);
			//4. rs저장
			rs=pstmt.executeQuery();//명령에대한반환값을가지는 변수명 rs안에 DB의 변경된 값이 들어있는pstmt의 값을 저장//쿼리수행  
			//5.rs테이터 있으면 아이디있음
			//비밀번호비교 equals() 같으면 update실행. "수정성공"
			//다르면"비밀번호틀림"
			//없으면"아이디없음"
			if(rs.next()){
				//아이디있음
				System.out.println("input id :"+id+", output pw : "+rs.getString("passwd"));
				if(passwd.equals(rs.getString("passwd"))){
					//로그인인증 main.jsp이동
					check=1;
				}else{
					//"비밀번호틀림"뒤로이동
					check=0;
				}
			}else{
				check=-1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			//JDBC자원닫기
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
 			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return check;
	}
	
	/** isAdmin(관리자여부확인) **/
	public int isAdmin(String id){//확인하고싶은 id
		Connection con=null;
		PreparedStatement pstmt=null;
		String sql="";
		ResultSet rs=null;
		int check=-1;//0//맞으면1,틀리면0,그외-1
		
		try {
			con=getConnection();
			sql="select mem_lv from members where mem_lv=?";//멤버안의 mem_lv의 값이 2인경우(어드민)
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			
			//rs에 데이터 있으면 check에 저장
			if(rs.next()){
				System.out.println("input id :"+id+", output mem_lv : "+rs.getString("mem_lv"));
				System.out.println("check : "+check);
				check=rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			//JDBC자원닫기
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
 			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return check;
	}
	
	/** insertMember(회원가입) **/
	public int insertMember(MemberBean memberBean){
		Connection con=null;//데이터베이스 연결변수
		PreparedStatement pstmt=null;//사용자입력값을폼에서받아 DB에저장할수있는 변수
		String sql="";//DB에 명형할 쿼리문 변수
		int check=0;
		int count=0;
		try {
			//1.드라이버로드//2.DB연결
			con=getConnection();
			System.out.println("insertMember메소드실행");
			sql="insert into members(id,passwd,name,post,addr1,addr2,phone,call,email) values(?,?,?,?,?,?,?,?,?)";
			pstmt=con.prepareStatement(sql);//변수pstmt안에 sql문을 이용하여 DB의 값을 변경한것을 저장한다
			System.out.println("sql문 실행");
			pstmt.setString(1, memberBean.getId());
			pstmt.setString(2, memberBean.getPasswd());
			pstmt.setString(3, memberBean.getName());
			pstmt.setString(4, memberBean.getPost());
			pstmt.setString(5, memberBean.getAddr1());
			pstmt.setString(6, memberBean.getAddr2());
			pstmt.setString(7, memberBean.getPhone());
			pstmt.setString(8, memberBean.getCall());
			pstmt.setString(9, memberBean.getEmail());
			//사용자입력값 확인하기
			System.out.println("=== 사용자 입력값 확인 ===");
			System.out.println("getId :"+memberBean.getId());
			System.out.println("getPasswd :"+memberBean.getPasswd());
			System.out.println("getName :"+memberBean.getName());
			System.out.println("getPost :"+memberBean.getPost());
			System.out.println("getAddr1 :"+memberBean.getAddr1());
			System.out.println("getAddr2 :"+memberBean.getAddr2());
			System.out.println("getPhone :"+memberBean.getPhone());
			System.out.println("getCall :"+memberBean.getCall());
			System.out.println("getEmail :"+memberBean.getEmail());
			System.out.println("=== 사용자 입력값 확인 ===");
			check=pstmt.executeUpdate();
			pstmt.close();
			
			if(check > 0){
				//1 member insert
				sql="insert into seller(id,passwd,name,post,addr1,addr2,phone,call,email)"
						+"values(?,?,?,?,?,?,?,?,?)";
				pstmt=con.prepareStatement(sql);
				pstmt.setString(1, memberBean.getId());
				pstmt.setString(2, memberBean.getPasswd());
				pstmt.setString(3, memberBean.getName());
				pstmt.setString(4, memberBean.getPost());
				pstmt.setString(5, memberBean.getAddr1());
				pstmt.setString(6, memberBean.getAddr2());
				pstmt.setString(7, memberBean.getPhone());
				pstmt.setString(8, memberBean.getCall());
				pstmt.setString(9, memberBean.getEmail());
				count=pstmt.executeUpdate();
			}else{
				count=0;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
				}
			}
			//JDBC자원닫기
			try {
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
 			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return count;
	}
	
	
	/*
	*//** Member chkId **//*
	public int chkId(String id){
		Connection con=null;
		PreparedStatement pstmt=null;
		String sql="";
		ResultSet rs=null;
		int check=-1;
		
		try {
			con=getConnection();
			sql="select id from members where id=?";//모든 members에서 아이디가(?)랑같은거 찾기 
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			if(rs.next()){
				//아이디있음
				System.out.println("input id :"+id+", output id : "+rs.getString("id"));
				if(id.equals(rs.getString("id"))){
					//아이디있음
					check=1;
				}else{
					//아이디없음
					check=0;
				}
			}else{
				check=-1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return check;
	}
	*/
	
	/*public List<MemberBean> getMemberList(){//MemberBean의 순차적으로 저장되어있는 값
		Connection con=null;//데이터베이스 연결 변수 선언
		PreparedStatement pstmt=null;//DB에 사용자의 입력내용으로 수정(저장)하기위해
		// PreparedStatement : 실행시마다 가변적인 변수의 내용을 DB에 삽입하기 위해 사용하는 방법으로 
		// 키보드로 입력받거나 awt의 각 폼으로 부터 입력되는 내용을 처리하여 DB에 입력할 수 있는 방식
		String sql="";//PreparedStatement 객체에서 사용 SQL문을 만들기위해 초기화
		ResultSet rs=null;//DB에 쿼리로 요청한 값을 저장할때 쓰인다.//DB에서 가져온값이 들어감
			 executeQuery로 명령하면 ResultSet이라는 객체를 돌려준다.
			  executeQuery : DB에 명령
			  ResultSet : 명령에 대한 반환값. 반환해주는 값은 아래에설명
			  ==>
			  executeQuery("Select * from tableName"); 이라고 보냈다면
			  tableName 라는 테이블에서 값을 가져옴. 이 가져온 것이 ResultSet
			  간단히 DB에 명령을 내리는 것. 그러면 그 명령에 따라서 DB가 작동하고, 작동한 결과 값을 돌려준다는 말이다. 
		List<MemberBean> memberlist=new ArrayList<>();//제네릭을 사용하기위해 객체생성. 변수명:memberlist
		
		//예외처리
		try {
			con=getConnection();//DB연결변수인 con에 DB에서 얻어온 파일 하나를 저장한다.
			  getConnection()을 하면 connection객체가 있을경우 그객체를 사용하고 
			 	없을경우 새로운 connection객체를 만들어 사용.
				freeConnection()은 다쓴 connection객체를 vector로 돌려주는 역할을 한다. 
			sql="select * from members";//SQL문/ 멤버안의 모든것을 선택한다.
			pstmt=con.prepareStatement(sql);//변수pstmt안에 sql문을 이용하여 DB의 값을 변경한것을 저장한다
			rs=pstmt.executeQuery();
				 명령에대한봔환값을가지는 변수명 rs안에 
			       DB의 변경된 값이 들어있는pstmt의 값을 저장   
			while(rs.next()){//순차적으로접근?
				MemberBean memberbean=new MemberBean();//MembertBean을 사용하기위해 객체생성 /변수명:memberbean
				memberbean.setId(rs.getString("id"));
				memberbean.setPasswd(rs.getString("passwd"));
				memberbean.setName(rs.getString("name"));
				memberbean.setPost(rs.getString("post"));
				memberbean.setAddr1(rs.getString("addr1"));
				memberbean.setAddr2(rs.getString("addr2"));
				memberbean.setPhone(rs.getString("phone"));
				memberbean.setCall(rs.getString("call"));
				memberbean.setEmail(rs.getString("email"));
				memberbean.setMem_lv(rs.getInt("mem_lv"));
				memberlist.add(memberbean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(con != null) con.close();
				if(pstmt != null) pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return memberlist;
	}*/

}
