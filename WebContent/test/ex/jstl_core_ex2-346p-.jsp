<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- JSTL의 core라이브러리를 사용하기 위해 uri속성을 core라이브러리가 존재하는 곳으로 설정하고
	 접두사 속성인 prefix값은 c로 설정한다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL core라이브러리 사용 예제2</title>
</head>
<body>
<c:forEach var="test" begin="1" end="10" step="2">
<!-- < c:forEach>태그를 이용하여 test변수를 1부터 10까지 반복한다. 
	 step값이 2이므로 1,3,5,7,9이렇게 숫자가 2씩 증가하게 된다. -->
	<b>${test }</b>&nbsp;
	<!-- test변수를 출력한다. <c:forEach>태그를 사용했으므로 test변수 값은 계속 변화한다. -->
</c:forEach>
<br>
<c:forTokens var="alphabet" items="a,b,c,d,e,f,g,h,i,j,k,l,m,n" delims=",">
<!-- Items에 입력된 문자열을 delims속성 값인 ,로 나눈다.
	 나눠진 만큼 반복을 수행한다. 반복 인덱스 값은 alphabet변수에 저장된다. -->
	<b>${alphabet }</b>&nbsp;
	<!-- alphabet변수를 출력한다. -->
</c:forTokens>
<br>
<c:set var="data" value="홍길동, 김길동, 고길동"/>
<!-- data변수에, 문자로 구분하여 데이터를 입력한다. -->
<c:forTokens var="varData" items="${data }" delims=",">
<!-- data변수의 데이터를 ,문자로 구분하여 나누고 나눠진 만큼 반복하여 데이터를 출력한다. -->
	<b>${varData }</b>&nbsp;
</c:forTokens>

<!--  
	**<c:forEach>**
	자바의 for문과 유사하다. 
	items속성에 컬렉션이나 배열 형태의 객체를 지정하여 객체의 인덱스만큼 반복할 수 있으며,
	befin과 end속성으로 원하는 범위만큼 반복문을 수행할 수도 있다.
	step은 증감식을 설정하여 1,3,5,7.. 또는 2,4,6,8..등의 반복도 가능하도록 한다.
	var은 반복중일때 현재 반복하고 있는 값을 기억하는 변수이다. varStatus는 반복의 상태를 갖게 되는 변수이다.
	<c:forEach items="객체명" begin="시작 인덱스" end="끝 인덱스" step="증감식" var="변수명" varStatus="상태변수">

	**<c:forTokens>**
	자바의 for문과 StringTokenizer객체를 결합하였다고 볼 수 있다. 
	Items에 지정한 값을 delims속성의 구분자로 나눈 후 나눠진 만큼 반복을 수행한다. 
	items,delims,var이 3가지의 속성만으로도 <c:forTokens>태그를 수행할 수 있게 된다.
	begin과 end의 경우는 delims구분자로 나눠진 값들을 기준으로 시작 값과 끝 값을 정해주기 때문이다.
	<c:forTokens items="객체명" delims="구분자" begin="시작인덱스" end="끝 인덱스" step="증감식" var="변수명" varStatus="상태변수">
-->
</body>
</html>
