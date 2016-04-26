<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>connection pool</title>
</head>
<body>
+커넥션 풀<br><br>

01.<br>
db와 연결된 커넥션을 미리 만들어서 풀(pool)속에 저장해 두고 있다가 <br>
필요할 때에 커넥션을 풀에서 가져다 쓰고 다시 풀에 반환하는 기법을 말한다. <br>
미리 생성해두기 때문에 커넥션을 가져올 때 db에 부하를 주지않고, <br>
다 사용한 커넥션을 반환했다가 재사용하기에 커넥션을 다시 생성할 필요가 없다. <br>
동시 접속자가 많아서 생성된 커넥션이 부족하면 대기하게 된다.<br><br>
<img src="./img/connectionpool.jpg"><br><br>

02.<br>
apache-tomcat7 에서 DataSource 사용하기<br>
톰켓 버전에 따라 다음의 dbcp관련 라이브러리가 필요한데, 톰켓7버전이상이면 라이브러리를 추가하지 않아도 된다.<br><br>

ex) 톰켓6버전 이면 다음의 라이버러리 추가<br>
commons-collection-x.x.x.java<br>
commons-dbcp-x.x.x.jar [다운로드]<br>
commons-pool-x.x.jar [다운로드]<br><br>

아래의 설정 방법은 다음을 참조하여 만들었다.<br> 
http://tomcat.apache.org/tomcat-7.0-doc/jndi-datasource-examples-howto.html<br><br>

이클립스로 개발중이라면 server프로젝트아래 context.xml 파일에 <br>
다음의 내용(위 참조 사이트에서 복사)을 <Context>사이에 복사후 <br>
자신의 개발환경 설정과 맞춘다.<br><br>

=============================================<br>
<img src="./img/11.jpg"><br>
=============================================<br><br>

- maxActive의 값은 20으로 설정하였습니다. <br>
	이는 데이터베이스로의 연결이 가능한 최대 갯수<br>
- maxIdle의 값은 10 으로 설정하였습니다. <br>
	커넥션 풀에 항상 연결상태를 유지하는 갯수<br>
- maxWait : 발급한 커넥션의 값이 최대값에 도달했을때 요청이 들어오면 <br>
	대기하는 시간(밀리초), -1이면 커넥션을 반납할때까지 기다린다<br><br>
 
+web.xml파일에 다음을 추가<br><br>

=============================================<br>
<img src="./img/22.jpg"><br>
=============================================<br><br>

+DataSource를 이용한 커넥션 생성 예제<br><br>

<img src="./img/190334.jpg"><br>


</body>
</html>