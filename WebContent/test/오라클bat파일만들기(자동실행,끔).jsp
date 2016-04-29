<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>< 오라클 수동으로 실행하는 bat파일 만들기 ></h1><br><br>

<img src="./img/or1.jpg"><br><br>

Oracle을 설치 후 별다른 설정이 없었다면 항상 켜져있는 것을 확인 할 수있습니다. <br><br>

<img src="./img/or2.png"><br><br>

이렇게 항상 켜져있으니 저사양의 컴퓨터라면 느려지게 됩니다.<br>
그럼 지금부터 수동으로 Oracle을 사용하고 싶을때만 할 수있는 on/off bat파일을 만들어 보도록 하겠습니다.<br><br>


1. 서비스탭 - > 서비스를 클릭하세여.<br><br>

<img src="./img/or3png"><br><br>

2. OracleServiceORCL을 찾아서 더블클릭 하세요.<br><br>

<img src="./img/or4.png"><br><br>

3. 아래와 같은 화면이 나타나면 시작유형부분이 자동으로 설정되어있습니다.<br>
    설정을 수동으로 변경해주세요.<br><br>

<img src="./img/or5.png"><br><br>

4. 이제 기본적인 설정이 완료되었습니다. <br>
위의 설정을 함으로써 컴퓨터를 부팅했을때 자동으로 Oracle이 실행되지 않게 됩니다.<br>
 Oracle을 사용하려면 바로 위 화면에서 서비스상태를 시작을 눌러서 실행해야 됩니다.<br>
하지만! bat파일을 만들면 바탕화면에서 파일을 실행한번만 해주면 바로 on/off가 가능해지는 것입니다. 참 편해지겠죠?<br><br>

5. bat파일을 만들어 보겠습니다. 메모장을 켜주세요.<br>
   메모장에 아래와 같이 써주세요. <br>
   net start "OracleServiceORCL"<br><br>

<img src="./img/or6.png"><br><br>

6. 저장을 해야됩니다. 파일이름을 자유작성 해도 되지만 알기쉽게 ORCL_START.bat 써주시고  , 파일 형식을 모든파일로 변경 후 저장하세요. <br>
여기서 중요한 것은 .bat 라는 확장자명이 배치파일을 만들게 해줍니다.<br>
방금까지 만든 것은 Oracle을 실행시키는 start  bat파일 입니다.<br><br>

<img src="./img/or7.png"><br><br>

7. 다음으로는 Oracle을 종료하는 stop bat 파일을 만들겠습니다.<br>
    아래 처럼 net stop "OracleServiceORCL" 써주시고 저장방법도 동일하게 해주세요. <br>
    저장명칭은 ORCL_STOP.bat 입니다.<br><br>

<img src="./img/or8.png"><br><br>

8. 이제 완성되었습니다. 아래와 같이 두개의 bat파일이 만들어졌습니다.<br>
    Oracle을 실행하고 싶을땐 ORCL_START.bat 파일을 먼저 실행해주세요.<br>
    DOS창이 켜지고 실행되기까지 조금 시간이 걸리니 자동으로 DOS창이 꺼질때까지 기다리세요. <br>
    마찬가지로 Oracle을 종료할때는 STOP을 눌러 꺼주세요. <br>
    그러면 작업 관리자에서 Oracle 프로세스가 on/off 되었다는걸 확인 가능하십니다.<br><br>

<img src="./img/or9.png"><br><br>

http://dkatlf900.tistory.com/90
</body>
</html>