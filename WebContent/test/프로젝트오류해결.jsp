<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
오류발생 상황<br><br>

이클립스 팝업 <br>
Could not publish server configuration for Tomcat v7.0 Server at localhost.<br>
Multiple Contexts have a path of "/Project".<br><br>

오류 로그<br>
java.lang.IllegalArgumentException: Document base C:\주소 does not exist or is not a readable directory.<br>
Multiple problems have occurred.<br><br>


간단한 문제로 해결책은 여러가지가 있다.<br><br>

방법 1.<br>
프로젝트 목록에서 해당 프로젝트 제거 후 다시 Import.<br><br>

방법 2. <br>
톰캣에서 프로젝트 제거 후 껐다가 다시 실행 - 재추가.<br><br>

방법 3. <br>
Servers - Tomcat v7.0 Server at localhost-config - server.xml 을 열어보면 제일 밑쪽에 <br>
<Context docBase="Project" path="/Project" reloadable="true" source="org.eclipse.jst.j2ee.server:Project"/><br>
부분에서 중복 선언된 부분이 있으면 삭제.<br><br>

방법 4.<br> 
\workspace\.metadata\ 쪽에 잘못된 데이터가 남아서 생길 수 있는단다.<br>
Project - clean.<br><br><br>

</body>
</html>