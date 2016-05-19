<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% session.setAttribute("test","Session Test"); %>
<!-- sessionScope객체를 테스트하기 위해 세션에 데이터를 저장한다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>El내장객체 사용 예제</title>
</head>
<body>
<form action="el_test2-335p-.jsp" method="post">
	<table border="1">
		<tr>
			<td>이름 : </td>
			<td><input type="text" name="name" value="홍길동"></td>
			<!-- name이라는 이름의 파라미터 값을 el_test2-335p- 파일로 넘긴다 -->
		<tr>
			<td colspan=2 align=centet><input type="submit" value="입력"></td>
		</tr>
	</table>
</form>
</body>
</html>
