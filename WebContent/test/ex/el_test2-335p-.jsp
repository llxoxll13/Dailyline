<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!-- el_test-335p.jsp파일에서 넘어온 파라미터 값들의 한글 처리를 한다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 내장객체 사용 예제</title>
</head>
<body>
<h3>${sessionScope.test}</h3>
<!-- sessionScope객체를 사용하여 세션 객체의 test에 있는 값을 얻어 표시한다. -->
<h3>${param.name }</h3>
<!-- el_test-335p.jsp파일의 폼에서 넘어온 name파라미터의 값을 표시한다. -->
</body>
</html>
