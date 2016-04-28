<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
톰캣 7.0 오류 <br>
(Several ports (8005, 8080, 8009)  <br>
required by Tomcat v7.0 Server at localhost are already in use) <br><br>

작업도중에 apache tomcat관련해서 아래와 같은 짜증스런 메시지가 출력되는 경우가 발생한다. <br>
Several ports (8005, 8080, 8009) <br>
required by Tomcat v7.0 Server at localhost are already in use. <br>
The server may already be running in another process, <br>
or a system process may be using the port. <br>
To start this server you will need to stop the other process or change the port number(s).<br><br>

<img src="./img/TOMCAT1.jpg"><br><br>

서버 지웠다가 추가해도 같은 오류가 발생하는데 이런경우<br><br> 

<img src="./img/TOMCAT2.jpg"><br><br>

시작 - >  Cmd ->   netstat -a -o   명령어 입력 후  같은 PID가 있는 경우 해당 PID를 KILL해 주면 된다.<br><br>

<img src="./TOMCAT3.jpg"><br><br>

명령어는  taskkill  /f  /pid id명  입력 <br>
프로세스 종료후 eclipse로 가서 다시 서버 재시작 해보면 된다. <br>
서버 재 시작 해도 같은 오류가 나는 경우..<br> 
그냥 컴터 종료 후  재부팅 하면 해결된다. <br><br>

</body>
</html>