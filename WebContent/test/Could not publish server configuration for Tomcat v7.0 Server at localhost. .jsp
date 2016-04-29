<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Could not publish server configuration for Tomcat v7.0 Server at localhost.<br>
Multiple Contexts have a path of .......</h1><br><br><br>
 
가끔 파일명, 폴더명, 변수명 등을 바꿀 때 원인은 잘 모르겠지만<br>
이클립스에서 위와 같은 에러 메세지가 뜨고 연결이 안 된다.<br>
이 때는 Servers - Tomcat..... - server.xml 아래쪽을 보면 만들어둔 워크스페이스와 충돌하는 경우가 대부분이다.<br>
이 상황도 2개의 워크스페이스가 있는데, 아래의 path 경로가 일치함을 볼 수 있다. (달라야함) <br><br>

<img src="./img/20141117_error3_mondai.jpg"><br><br>

아래와 같이 path 경로를 워크스페이스명과 맞춰서 입력한 후 수정하면 okay! <br><br>
<img src="./img/20141117_error3_kotae.jpg"><br><br><br>


</body>
</html>