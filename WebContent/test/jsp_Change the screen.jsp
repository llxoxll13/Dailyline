<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
jsp화면 바꾸는 법(자동이동)<br><br>

두가지 방법이 있다.<br><br>

1.파일째 바꾸는것: 샌드 리다이렉트<br>
respnse.sendRedirect("aa.jsp");<br>
-주소창의 주소가 바뀐다.v
-request객체의 attribute가 넘어가지 않는다.<br><br>

2.화면만 바꾸는것: 포워드 기법(윈도우(JFrame)의 카드 레이아웃과 같다)<br>
<jsp:forward page="aa.jsp"/><br>
-주소창의 주소가 바귀지 않는다.<br>
-request객체의 attribute가 전달된다.<br><br>

참고)Request의 Parameter:클라이언트에서 서버로 넘기는 데이터<br>
Request의 Attribute:서버에서 클라이언트로 넘기는 데이터<br>
Session:사용자의 정보를 저장함<br>
</body>
</html>