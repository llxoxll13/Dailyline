<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward와 redirect차이점</title>
</head>
<body>
<!--  
	두가지 모두 페이지 이동에 사용되는 기능입니다.
	그러나 크게 두가지 정도의 차이가 있습니다.

예) A.jsp에서 B.jsp로 submit을 하고, B.jsp에서 C.jsp로 forward(또는 redirect)하였을 경우
   A.jsp =>(submit) B.jsp ->(forward or redirect) C.jsp

첫번째. 이동할 페이지에 파라미터데이터를 전송하는지 여부
forward : C.jsp에서는 A.jsp가 B.jsp에게 보내준 파라미터를 사용할수 있음
redirect : C.jsp에서는 A.jsp가 B.jsp에게 보내준 파라미터를 사용할수 없음

두번째. 페이지URL의 변화 여부
forward : 최종적으로 주소창에는 B.jsp로 찍혀있음(C.jsp의 내용이 서버의 내부적으로 실행됨)
redirect : 최종적으로 주소창에는 C.jsp로 찍혀있음(C.jsp의 내용이 브라우저 상에서 실행됨)
-->
</body>
</html>