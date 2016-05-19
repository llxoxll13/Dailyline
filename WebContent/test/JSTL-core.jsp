<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL의 기본 액션- JSTL core</title>
</head>
<body>

<img src="./img/jstl.jpg">

<%-- <h1>JSTL의 기본 액션- JSTL core-339p-</h1>
<br>
JSTL core란 JSTL에서 기본적인 기능(즉,컨트롤에 관계된 기능)들을 구현해 놓은 라이브러리 이다.<br>
예를 들어 문자열을 출력하거나, 반복문, 조건문과 같은 내용이 core라이브러리에 포함되어 있는것이다.<br>
이 core라이브러리를 사용하면 커스텀 태그의 장점대로 자바 코드를 사용하지 않아도 쉽게 기본 기능을 구현할 수 있다. <br>
먼저 이 라이브러리를 사용하기 위해서는 JSP페이지에 태그 라이브러리로 등록해야 한다. 등록하는 방법은 다음과 같다.<br><br>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><br><br>

이 코드에서 prefix의 c는 태그를 사용할 때 항상 붙는 접두어가 된다.<br>
예를들어 < c:out/ >,< c:set/ >와 같이 태그 앞에 c가 항상 붙게 되는 것이다.<br>
이것은 core의 약자로 약속된 접두어이다. u r i 는 태그 라이브러리가 존재하는 위치를 의미한다.<br>
http:java.sun.com/j s p/ j s t l /core가 core라이브러리가 존재하는 위치가 된다.<br><br>


<h3>JSTL core라이브러리 태그 알아보기</h3><br>
JSTL core 라이브러리에는 다음과 같은 태그들이 존재한다.<br><br>

+출력태그 :  <c:out>
+변수 설정 및 삭제 태그 : <c:set>, <c:remove>
+예외처리태그 : <c:catch>
+조건처리태그 : <c:if>,<c:choose>,<c:when>,<c:otherwise>
+반복처리태그 : <c:forEach>,<c:forTokens>

 
 <h5>1. < c:out ></h5><br>
 < c:out >은 지정된 값을 출력시키는 태그이며, value속성을 이용해서 변수의 내용을 출력할 수 있다.<br>
 default속성은 기본 값을 의미하는데 value값이 null일 경우 이 기본 값을 출력하게 된다.<br>
 escapeXml은 false가 기본 값으로 지정되어 있으며 <,>등의 특수 기호를 처리할 때 사용된다.<br>
 True일 경우 < 값은 &lt;로 표현되고 > 값은 &gt; 로 표현된다.<br>
 * 사용법 : < c:out value="출력값" default="기본값" escapeXml="true 또는 false" ><br><br>
 
 <h5>2. < c:set ></h5><br>
 지정된 변수에 값을 설정하는 태그이다. var는 값을 저장할 변수 이름을 의미하고 value는 저장할 값을 의미한다.<br>
 target은 값을 설정할 프로퍼티에 대한 객체를 의미한다. property는 값을 설절할 객체의 프로퍼티를 의미한다. <br>
 scope는 변수의 유효범위를 의미하며 설정하지 않을 경우 기본 값으로 page를 갖는다.<br>
 * 사용법 : < c:set var="변수명" value="설정값" target="객체" property="값" scope="범위" ><br><br>
 
 <h5>3. < c:remove ></h5><br>
 설정된 속성을 제거하는 태그이다. var은 설정된 속성이 저장되어 있는 변수를 의미하며,<br>
 scope는 지정된 범위에서 저장된 속성을 제거하도록 한다.<br>
 * 사용법 : < c:remove var="변수명" scope="범위" ><br><br>
 
 <h5>4. < c:catch></h5><br>
 예외 처리를 위한 태그이다. 예외가 발생하면 var에 지정된 예외 객체가 할당된다.<br>
 * 사용법 : < c:catch var="변수명" ><br><br>
 
 <h5>5. < c:if></h5><br>
 조건 처리를 할 때 사용되는 태그이다. 자바에서의 if와 같은 역할을 한다. <br>
 test 속성에는 조건을 지정하고 var속성의 변수에는 조건 처리한 결과를 저장한다. <br>
 scope는 var속성에 지정한 변수의 범위를 의미한다.<br>
 * 사용법 : < c:if test="조건" var="변수명" scope="범위" ><br><br>
 
 <h5>6. < c:choose></h5> <br>
 조건 처리를 할 때 쓰이는 태그이며, if문과는 달리 자바에서 switch와 비슷한 역할을 한다.<br>
 < c:choose > 태그 자체는 별다른 의미가 없고 조건문의 시작을 알릴 뿐이다. <br>
 < c:when > 태그에서 test속성으로 조건을 확인하며 조건에 만족하면 < c:when > 과 < /c:when > 사이에 있는 내용을 처리한다.<br>
 < c:when > 태그는 조건에 따라 여러개가 사용될 수도 있다.<br>
 < c:otherwise > 태그는 < c:when > 태그의 조건에 모두 만족하지 않을 경우 실행된다.<br>
 * 사용법 : < c:choose ><br>
 			< c:when test="조건" > < /c:when ><br>
  			< c:otherwise > < /c:otherwise ><br>
 			< /c:choose ><br><br>
 
 <h5>7. < c:forEach></h5> <br>
 자바의for문과 유사하다. items속성에 컬렉션이나 배열 형태의 객체를 지정하여 객체의 인덱스만큼 반복할 수도 있으며,<br>
 begin과 end속성으로 원하는 범위만큼 반복문을 수행할 수도 있다. step은 증감식을 설정하여 1,3,5,7... 또는 2,4,6,8...등의 반복도<br>
 가능하도록 한다. var은 반복중일 때 현재 반복하고 있는 값을 기억하는 변수이다.<br>
 varStatus는 반복의 상태를 갖게 되는 변수이다.<br>
 * 사용법 : < c:forEach items="객체명" begin="시작인덱스" end="끝인덱스" step="증감식" var="변수명" varStatus="상태변수"  > <br><br>
 
 <h5>8. < c:forTokens></h5> <br>
 자바의 for문과 StringTokenizer 객체를 결합하였다고 볼 수 있다.<br>
 Items에 지정한 값을 delims속성의 구분자로 나눈 후 나눠진 만큼 반복을 수행한다. <br>
 items,delims,var이 3가지의 속성만으로도 < c:forTokens >태그를 수행할 수 있게 된다.<br>
 begin과 end의 경우는 delims구분자로 나눠진 값들을 기준으로 시작 값과 끝 값을 정해주기 때문이다.<br>
 * 사용법 : < c:forTokens items="객체명" delims="구분자" begin="시작 인덱스" end="끝 인덱스" step="증감식" var="변수명" varStatus="상태변수" ><br><br>
 
 <h5>9. < c:import></h5><br>
 지정된 URL을 태그가 사용된 JSP페이지에 출력시키는 시능을 한다.<br>
 url 속성에는 HTTP뿐만 아니라 FTP외부 리소스도 올 수 있다.<br>
 var는 리소스가 저장될 변수명이며 scope는 var속성의 변수의 범위를 의미한다.<br>
 varReader는 var속성과 마찬가지로 리소스가 저장될 변수를 의미한다.<br>
 단, 이 변수는 Reader객체여야한다. context속성은 URL에 접근할 때의 컨텍스트 이름을 의미한다.<br> 
 charEncoding속성은 지정된 URL의 리소스를 가져올 때 어떻게 인코딩할 것인지를 의미한다.<br>
 * 사용법 : < c:import url="URL값" var="변수명" scope="범위" varReader="입력스트림명" context="contextName" charEncoding="인코딩값" ><br><br>
 
 <h5>10. < c:redirect></h5><br>
 지정된 URL로 페이지를 이동시키는 기능을 한다. url속성에 이동할 URL을 입력하며 context속성에는<br>
 컨텍스트 이름을 입력하지만, 일반적으로 url속성만 사용한다.<br>
 * 사용법 : < c:redirect rtl="URL값" context="contextName" ><br><br>
  
 <h5>11. < c:url></h5><br>
 value속성에 지정된 값으로 URL을 생성하는 기능을 한다.<br> 
 scope는 var속성에 입력되어 있는 변수의 범위를 의미한다.<br>
 * 사용법 : < c:url var="변수명" scope="범위" value="값" context="contextName" ><br><br>
  
 <h5>12. < c:param></h5><br>
 < c:import >태그에 파라미터를 전달하기 위한 태그이다.<br>
 name속성에 파라미터명을 입력하고 value에 값을 입력하여 전달한다.<br>
 * 사용법 : < c:param name="파라미터명" value="값" ><br><br><br> --%>
   
 
 
</body>
</html>