<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>[JSP] 뷰에서의 JSTL</title>
</head>
<body>
<h1>[JSP] 뷰에서의 JSTL %@ taglib </h1><br>


<img src="./img/1.jpg">
<img src="./img/2.jpg">
<img src="./img/3.jpg">
<img src="./img/4.jpg">

<%-- <h3>JSTL(JSP Standard Tag Library)이란?</h3><br><br>
- 자주쓰이는 자바코드를 태그로 만들어놓음<br>
- jsp페이지(뷰)에서 jsp스크립트와 html코드를 같이 섞어써서 복잡해..<br><br>

<h3>시작태그와 종료태그가 쌍으로 이루어져야 한다.</h3><br>
예) <c:if> </c:if><br>
단독태그일 경우, <c:set /><br><br>

<h3>JSTL을 사용하기 위한 환경설정</h3><br>
- jstl.jar 와 standard.jar를 넣어줌<br>
(jsp\WebContent\WEB-INF\lib 안에)<br>
<img src="./img/1111111111111.png"><br><br>


<h3>1. JSTL core</h3><br>
: 변수선언, 제어문(if, for)등에 사용.... 제일 많이 사용됨!!!! <br>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <br>
(prefix속성은 uri에 명시된 값 대신 해당페이지에선 prefix로 명시된 값을 사용하겠는 의미..c는 core을 의미함..)<br><br>

* < %@ taglib > : 태그 라이브러리..반드시 써야해!!<br><br>

* < c: > 코어태그의 접두어 => 예) < c:if<br><br>

<img src="./img/001.png">
<img src="./img/002.png"><br><br>

* <c: set var="변수명" value="${변수에 넣을 값}" /><br>
: 변수선언<br><br>

* <c:out value="${변수명}" /><br>
: 출력언어만 써도 출력가능함!<br><br>

* < c:if > 만 존재!!! else와 else if문은 존재하지x<br><br>

* < c:choose > => <when>과 <otherwise>서브태그를 가진다.....<br><br>

* <c:forEach begin="시작" end="끝" step="증가값" var="변수명" > </c:forEach><br>
: for문 (업그레이드for문...반복해야될 대상...items...)<br><br>

* < c: forTokens var="변수명" items="대상" delims="구분자"> < /c:forTokens><br><br>

<h3>2. JSTL XML</h3><br>
: XML처리를 위한 것<br>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %> <br><br>

<h3>3. JSTL fmt​</h3><br>
​: JSTL 국제화 지역화 태그<br>
: 다국어 문서를 처리할 때​, 날짜와 숫자 형식을 다룰 때<br>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %><br><br>

<img src="./img/111.png"><br><br>

<h3>4. JSTL sql</h3><br>
​: DataSource를 이용해서 SQL을 처리하는 작업등에 사용됨<br>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %> <br><br>

<img src="./img/222.png"><br><br>

<h3>5. JSTL functions​</h3><br>
​: JSTL에서 제공하는 각종 함수를 사용해서 문자열이나 콜렉션들을 처리한다.<br>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> <br><br><br><br> --%>

</body>
</html>