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

<img src="./img/TOMCAT3.jpg"><br><br>

명령어는  taskkill  /f  /pid id명  입력 <br>
프로세스 종료후 eclipse로 가서 다시 서버 재시작 해보면 된다. <br>
서버 재 시작 해도 같은 오류가 나는 경우..<br> 
그냥 컴터 종료 후  재부팅 하면 해결된다. <br><br><br>


========================================================<br><br><br>


에러 : <br>
<img src="./img/TOMCAT1_1.jpg"><br><br>

해결 :<br>
<img src="./img/TOMCAT1_2.jpg"><br>
<img src="./img/TOMCAT1_3.jpg"><br>
간단한 방법으로 톰캣을 더블클릭 후 Overview 탭에서 포트번호 변경해주기.<br><br>

또는 cmd창에서 taskkill<br><br><br>


========================================================<br><br><br>


찾아보니 여러 방법들이 있었다.<br><br>

첫번째<br><br>

- 작업관리자 실행->서비스->javaw.exe가 두개 있음<br>
  (이게 없다면 Tomcat.exe로 되어 있을 수도 있다고 함)<br>
  ->둘다 종료! 하고 다시 이클립스 실행해서 서버 실행해보면 된다.<br><br>

두번째<br><br>

- 톰캣을 설치 버젼으로 설치하셨다면 서비스에 보시면 톰캣 서비스가 등록된 것을 확인할 수 있다.<br>
  이것을 수동으로 설정하신 후 종료하시면 시스템 시작시 자동으로 시작되지 않는다.<br><br>

세번째<br><br>

- 톰캣 설치 디렉토리로 가서 bin 밑에 ​shutdown.bat을 실행한다.<br><br><br>


========================================================<br><br><br>


<img src="./img/cat1.jpg"><br><br>
보시는바와 같이 톰캣을 실행해 주었기에 충돌이 일어났던 부분이고 <br>
화살표 부분을 눌러 실행을 중단시킵니다. <br>
이 설정창으로 오시는 방법은 제가 위에서 언급했던 글에서도 확인해보실수 있고, <br>
시작메뉴에서 톰캣폴더를 찾으신뒤 Configure Tomcat을 실행하시면 됩니다.<br><br><br>


<img src="./img/cat2.jpg"><br>
위사진과 같이 상태가 Stopped 로 됬다면 정상적으로 오류없이 실행이 될겁니다. <br>
혹시 이렇게 해도 오류가 나타나신다면 이클립스를 한번 재시작해주시기 바랍니다.<br><br><br>



</body>
</html>