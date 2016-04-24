<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
어트리뷰트(attribute)와 파라미터(parameter)의 차이<br><br>

1. 어트리뷰트는 set과 get, 파라미터는 get만<br>
-어트리뷰트는 리퀘스트(request)가 가지고 있다. <br>
프로그래머가 리퀘스트에 어트리뷰트를 setAttribute하거나  getAttribute한다. <br>
보통 MVC 패턴의 모델(자바파일)에서 어트리뷰트를 set하고, jsp에서 get해와서 html로 번역해 뿌린다.<br><br>

-파라미터는 일반적으로 get만 한다. <br>
 setParameter는 사용자(user)가 input박스에 직접 써넣기 때문에 거의 쓰이지 않는다.<br><br>

2. 어트리뷰트는 해시맵, 파라미터는 스트링 반환<br>
-어트리뷰트는 String을 넘기면 Object가 반환된다. <br>
 Attribute는 [키,키값]형식의 해시맵(HashMap)이다. <br>
 setAttribute는 vo나 List같은 오브젝트를 통째로 어트리뷰트에 싣고 전달할 수 있다. <br>
 getAttribute는 키를 넘기면 키값이 오브젝트로 반환된다.<br><br>

-파라미터는 String을 넘기면 String이 반환된다. <br>
 getParameter는 스트링을 매개변수(인수)로 넘기면 스트링 값을 구할 수 있다.<br><br>

3. 어트리뷰트는 모든 영역, 파라미터는 리퀘스트 영역<br>
-어트리뷰트는 어떤 스코프든 상관없이 공통적으로 존재한다. <br>
 다시 말해 어트리뷰트는 리퀘스트에 싣는 것도 가능하지만(setAttribute), 세션에도 실을 수 있고, 어플리케이션 컨텍스트에도 실어 보낼 수 있다.<br><br>

-파라미터는 리퀘스트 영역에 존재한다.<br>

※jsp의 스코프(scope=영역)<br>
page < request < session < application context<br>
1) '페이지'는 하나의 페이지 안에서만 유효하다(기본값).<br><br>

2) '리퀘스트'는 응답할 때까지만 유효하다.<br>
   -ServletRequest에 접근 권한이 있는 경우만 접근가능<br><br>

3) '세션'은 웹 브라우저를 종료할 때까지만(혹은 세션이 만료될 때까지만) 유효하다.(로그인과 일치)<br>
   -HttpSession에 접근 권한이 있는 경우만 접근가능<br><br>

4) '어플리케이션 컨텍스트'는 웹 서버를 종료할 때까지 유효하다. 모든 서블릿이 공유하는 영역이다.<br>
   -누구나 접근가능<br><br>

4. 어트리뷰트는 표현언어(EL), 파라미터는 표현식으로 출력<br>
-어트리뷰트는 ${aa}로 출력한다.(표현언어)<br>
 표현언어는 HashMap의 get(key);와 비슷하다.<br><br>

-getParameter로 얻어온 파라미터는 <%-- <%=aa%> --%>로 출력한다(표현식)<br>
 표현식은 System.out.print();와 비슷하다.<br><br>

-만약 표현언어로 파라미터를 출력하려면 ${param.aa}로 출력하면 된다.<br><br>
[출처] 어트리뷰트(attribute)와 파라미터(parameter)의 차이|작성자 흑곰

</body>
</html>