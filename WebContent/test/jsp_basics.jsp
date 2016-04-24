<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
jsp웹 개발 기초<br><br>
+자바로 웹페이지 만들기<br>
자바로 웹페이지를 짜는 법은 두가지가 있다.<br>
(1)서블릿<br>
-> 컴파일 방식(실행할 코드 방식)<br>
보안이 뛰어나다<br>
(2)jsp(자바 서버 페이지스)<br>
-> 스크립트 방식(<% %>)<br>
컴파일하지 않으므로 빠르다<br>
실전에서는 보안이 필요한 부분은 서블릿, 그렇지 않은 부분은 jsp로 짠다.<br><br>
+톰캣이 변환하는 과정<br>
<img src="img/s1.png"><br><br>
+톰캣=웹 컨테이너=어플리케이션 서버<br>
톰캣은 (1)jsp또는 (2)서블릿을 변환해준다.<br><br>
+jsp,asp,php<br><br>
jsp:자바 서블릿 페이지<br>
asp:호환이 좋지 않다. 윈도우에만 가능하다<br>
php:퍼스널 홈페이지(Personal Home Page)의 약자이다.(작은 사이트 위주)<br><br>
+스프링<br>
스프링은 클래스를 관리하는 관리자 역할을 한다."컨테이너"라고도 부른다.<br>
(컨테이너:컴포넌트를 관리한다. 자바 클래스가 컴포넌트이다.)<br><br>
+서블릿<br>
서블릿:"서버에서 실행되는 가벼운 프로그램"이라는 뜻.(server+let)<br>
jsp파일은 HttpServlet를 상속받은 class로 변환됐다.<br>
<img src="img/a06.png"><br>
스크립트릿, 표현식은 메소드 안에 들어간다.<br>
서너언식은 클래스 안에 들어간다.<br>
현재는 html에서 출력할때  out.println이 생략되어있다.<br><br>
+디렉티브(지시자)<br>
(1)page:페이지 디렉티브,jsp파일에 대한 정보를 가지고 있다. jsp 맨 위의<%-- <%@ page... %> --%><br>
-contentType: html인지,xml인지 pdf인지 지정할 수 있음.<br>
ex) <br><%-- 
	<br><% page contentType=/* "text/html" */ %>
	<br><% page contentType=/* "text/xml" */ %> 
	--%><br>
charset="EUC-KR"또는 "UTF-8"(한페이지에서는 둥 중의 하나로 완전히 통일시킬 것)<br>
-import:자바 클래스 포함시킬때.자바라이브러리를 불러올때<br>
ex) <br><%-- <% page import="java.util.Date" %> --%>	
-errorPage:에러났을 때 이동시킬 페이지(파일)지정.<br><br>
(2)taglib<br>
태그로 자바 문법을 정의<br>
ex)<br>
<% 
	for(int i=1; i<=10;i++){
	%>
	html
	<%
	}
%><br>
위 코드를 아래처럼 바꿔준다.<br>
<c:forEach var="i" start="1" end="10"><br>
html<br>
</c:forEach><br>
이처럼 태그형 프로그램으로 바뀐다. 이것을 JSTL이라고 한다.<br><br>
(3)include<br>
jsp안의 특정부분에 다른 jsp를 불러올때 사용<br><br>
+스크립트요소<br>
(1)스크립트릿:자바 일반식. 자바 코드를 실행한다.<br>
<%-- <%	일반 자바코드%> --%><br>
(2)표현식:값을 출력한다.<br>
<%-- <%=값 %> --%><br>
(3)선언식:자바메서드(함수)를 만든다.<br>
<%-- <%! 멤버변수 또는 메소드 선언 %> --%><br>
잘 쓰지 않는다 우리에게 import가 있기 때문에 메소드를 굳이 만들지 않는다. 선언식을 쓰면 재사용이 되지 않는다. import로 재사용하자.<br><br>
+기본객체(내장객체:미리 메모리 할당이 된 객체명)<br>
(1)request<br>
요청.<br>
클라이언트의 정보. 요청값 읽기/쓰기<br>
map으로 구성되어 있다. "키"와 "밸류"로 구성되어서, <br>
키를 주면 밸류를 받아온다.<br>
(map:순서가 없다. 키는 중복불가능, 밸류는 중복가능)<br>
-getRemoteAddr()<br>
접속된 클라이언트의 ip어드레스를 출력한다.<br>
<img src="img/df01.png"><br>
-getRequestURI()<br>
URI를 구한다.<br>
-getContextPath()<br>
ContextPath를 구한다.<br><br>

getParameter():값이 한개 넘어올때.<br>
getParameterValues():체크박스때만 씀. 값이 여러개 넘어올 때.<br><br>

(2)response<br>
응답에 대한 정보, 이동정보(리다이렉트)<br>
(3)session<br>
서버의 정보를 저장할 때 쓴다.<br>
서버 측에 클라이언트 정보를 저장.<br>
ex)로그인<br>
리퀘스트로 로그인 요청->세션에 저장->리스폰스로 결과값 돌려준다. 세션 내용이 지워지려면, (1)로그아웃하거나(2)브라우저끄면 지워준다.<br>
(4)application:서버에 대한 정보를 갖고 있음.<br>
(5)out:메모리에 대한 정보<br>
(6)config:환경설정 관련, 나중에 web.xml로 변경됨<br>
(7)exception:예외처리에 대한 정보.(try catch절로 대체)<br>
(8)page:jsp파일에 대한 정보. this와 같은 의미<br>
(9)pageContext:페이지 연결하는 부분. 내장객체 관리.<br>
</body>
</html>