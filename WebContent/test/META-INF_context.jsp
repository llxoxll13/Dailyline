<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<Context>
	<Resource name="jdbc/ora11g" 
			  auth="Container"
			  type="javax.sql.DataSource"
			  driverClassName="oracle.jdbc.OracleDriver"
			  url="jdbc:oracle:thin:@localhost:1521/orcl"
			  username="getjob"
			  password="getjob" />
</Context> 
<!-- 01.[DB] META-INF/context.xml파일에 DB과련하여 수정 -->
<!-- 
name : 이름, 아무거나써도 됨
type : 우리가 찾아올 때 데이터소스라는 클래스로 찾아와야 함. 
	   데이터소스가 아래 변수들을 다 가지고 있음.
auth : 톰캣이 관리한다. 컨테이너 = 톰캣
driverClassName : 드라이버 네임. 오라클릴경우 driverClassName="oracle.jdbc.OracleDriver"와같이 사용.
url : 
password : 비번
username : 아이디
maxActive : 최대한 몇개를 생성할건지
maxIdle : 미리 몇개를 생성할건지. 계속 5개를 유지하려 노력함
maxWait : 기다리는 시간. -1이면 계속 기다리라는(무한정) 말. 1000을 주면 1초 후에 나가야 함.
-->
</body>
</html>