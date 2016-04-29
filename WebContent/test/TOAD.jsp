<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

리스너가 없습니다 : <br>
작업관리자->서비스->OracleServiceORCL,OracleOraDb11g_home2TNSListener (시작)<br><br>

"ORA-12505:TNS:리스너가 현재 접속 기술자에게 제공된 SID를 알지 못함" :<br><br>


* 해결방법 <br>

도스창에서<br>

C;\>sqlplus "/as sysdba"<br>

SQL>startup<br>

SQL>connect scott/tiger<br>

이렇게 하면 된다.<br><br>

===============================================<br><br>

<img src="./img/tord.jpg"><br><br>


</body>
</html>