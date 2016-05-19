<%@ page language="java" contentType="text/html; charset=UTF-8" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- JSTL의 fmt라이브러리를 사용하기 위해 uri속성을 fmt라이브러리가 존재하는 uri로 설정하고 접두사 속성인 prefix값은 fmt로 설정한다. -->
<jsp:useBean id="date" class="java.util.Date"/>
<!-- date변수에 날짜와 시간을 저장한다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL fmt 라이브러리 사용 예제</title>
</head>
<body>

<fmt:setLocale value="ko_KR"/>
<!-- 어떤 언어를 사용할지 지정할 수 있다. <fmt:setLocale>태그의 value값은 언어 코드와 국가 코드로 조합되며,
	 en_US는 영문을 의미한다. 앞에서 만든 test.properties파일이 영문 페이지에 해당하는 파일이다.
	 언어를 한글로 지정하려면 value값을 ko_KR로 지정하면 test_ko.properties파일을 사용하기 때문에 언어가 한글로 표시된다. -->
<fmt:bundle basename="test">
<!-- test이름을 가진 properties파일을 읽는다. 
	 즉, test.properties파일을 읽으며, 지정된 언어가 한글일 경우 test_ko.properties파일을 읽게 된다. -->
	<fmt:message key="name"/><br>
	<fmt:message key="say"/><br>
	<fmt:message key="say2">
	<!-- 각 키에 해당하는 값을 출력한다. -->
		<fmt:param value="고길동"/>
		<!-- say2키 값에는 {0}부분이 있는데, 이 부분에 파라미터를 전달할 수 있다. 파라미터 value속성을'고길동'
			 으로 전달하였으므로 {0}의 값은 '고길동'으로 지정된다. -->
	</fmt:message>
</fmt:bundle>

<p>
<fmt:formatNumber value="50000" type="currency"/><br>
<!-- 입력된 50000값을 통화 형식으로 변환한다. 결과는 \50000으로 출력될것이다. -->
<fmt:formatNumber value="0.15" type="percent"/><br>
<!-- 입력된 0.15값을 퍼센트 형식으로 변환한다. 결과는 15%로 출력될 것이다. -->
<fmt:formatNumber value="500567300" pattern="###,###,###"/><p>
<!-- 입력된 500567300값을 지정한 패턴인 ###,###,### 형식으로 출력한다. -->

<fmt:formatDate value="${date}" type="date"/><br>
<!-- 변수에 있는 날짜와 시간 중에서 날짜만 출력한다. -->
<fmt:formatDate value="${date}" type="time"/><br>
<!-- 시간만 출력하도록 한다. -->
<fmt:formatDate value="${date}" type="both"/><p>
<!-- 날짜와 시간 모두 출력한다. -->

<fmt:formatDate value="${date}" type="both" timeStyle="short" dateStyle="short"/><br>
<!-- 날짜와 시간을 짧게 표현한다. -->
<fmt:formatDate value="${date}" type="both" timeStyle="long" dateStyle="long"/><br>
<!-- 날짜와 시간을 길게 표현한다. -->
</body>
</html>
