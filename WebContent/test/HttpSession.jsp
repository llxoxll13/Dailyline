<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

request.getSession(true); <br>
= Request에 대한 새로운 session을 create <br>
request.gerSession(false); <br>
= 현재 session이 존재하면 기존 session리턴<br>
= 존재하지 않으면 null리턴<br><br>

request.getSession() ;<br>
= 현재 session이 존재하면 기존session 리턴<br>
= 존재하지 않으면 새로생성한 session리턴<br><br>

request.setAttribute();<br>
->request.getParameter(); <br>
session.setAttribute();<br>
->session.getAttribute();<br><br>

get 할때 형변환 필수!<br>
==============================<br>
세션 객체는 이름과 값을 쌍으로 입력받는 자료구조의 형태를 가지고 있는데, <br>
이 때 객체에 입력할 때 사용하는 메서드가 setAttribute 메서드입니다. <br>
setAttribute 메서드의 첫번째 매개변수는 String형으로서 속성의 이름으로 사용되고<br> 
두번째 매개변수는 Object 형으로서 속성의 값으로 사용됩니다. <br>
값으로 들어올 자료형을 예측할 수 없기 때문에 <br>
최상위의 Object 형으로 업캐스팅하여 모두 받아내겠다는 의미입니다.<br><br>
      
if(session.isNew()){<br>
  session.setAttribute("id",id);<br>
}<br><br>

>>세션 객체로부터 정보를 가져올 때.<br>
getAttribute 메서드는 객체에 저장하였던 정보를 가져올 때 <br>
사용하는 메서드로서 매개변수로 가져오고자하는 속성의 이름을 대입하면 <br>
그 속성에 해당하는 값을 반환해줍니다. <br>
저장할 때 Object형으로 업캐스팅을 하였으므로 <br>
가져올 때에는 원래의 형으로 다운캐스팅을 해주어야만 한다는 점을 잊으시면 안됩니다.<br><br>

* 주요 메서드<br>
 setAttribute :  세션에 데이터 저장<br>
 getAttribute :  세션에서 데이터 가져옴 <br>
 getAttributeNames :  세션에 저장되어 있는 모든 데이터의 이름얻음 <br>
 getId :  자동생성된 세션의 유니크한 아이디를 얻음<br>
 isNew :  세션이 최초생성인지,이전생성인지 구분 <br>
 getMaxInactiveInterval :  세션의 유효시간 얻음(tomcat/conf/web.xml에서 설정 변경 가능)<br>
 removeAttibute :  특정데이터 제거 <br>
 invalidate :  세션의 모든 데이터 삭제 <br><br>


</body>
</html>