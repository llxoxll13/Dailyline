<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Calendar 현재시간</title>
</head>
<body>
<% 
	Calendar c = Calendar.getInstance(); //calendar 클래스 객체생성 변수명 c
	int hour = c.get(Calendar.HOUR);
	int minute = c.get(Calendar.MINUTE);
	int second = c.get(Calendar.SECOND);	
%>

</body>
</html>