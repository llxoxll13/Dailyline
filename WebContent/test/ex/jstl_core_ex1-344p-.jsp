<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 정의 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL core 라이브러리 사용 예제 1</title>
</head>
<body>

	<!-- 
		< 값은 &lt; , > 값은&gt;로 사용 
		EL(Expression Language)의 개요
		< %=hello%>라는 코드를 EL로 표현할 경우 ${hello}로 표현된다.
		<%= %>태그가 ${}로 바뀌었다는 것만으로 이해할수 있다.
		test 변수를 표현할 때 -> ${test}
		hello 객체의 test변수를 표현하면 다음과 같다.
		${hello.test} 나 ${hello['test']}
	-->
	<c:set var="test" value="Hello JSTL!"/>
	<!-- set태그를 이용하여 test변수에 Hello JSTL!값을 넣음 -->
	<h3>&lt; c:set &gt; 사용후 : <c:out value="${test}"/> </h3>
	<!-- out태그를 이용하여 값을 출력 -->
	<c:remove var="test"/>
	<!-- remove태그를 이용하여 test안의 값을 삭제 -->
	<h3>&lt; c:remove &gt; 사용후 : <c:out value="${test}"/> </h3>
	
	<c:catch var="err">
	<!-- catch태그를 이용하여 예외처리 err안에 오류발생시의 내용이 저장됨-->
	<%=10/0%>
	</c:catch>
	
	<h3>&lt; c:catch &gt;로 잡아낸 오류 : <c:out value="${err}"/></h3>
	
	<c:if test="${5<10}">
	<!-- if태그를 이용 -->
	<h3>5는 10보다 작다</h3>
	</c:if>
	
	<c:if test="${6+3 == 9}">
	<h3>6+3은 9이다</h3>
	</c:if>
	
	<c:choose>
	<!-- 자바의 switch와 비슷한 조건문으로 조건문의 시작을 의미 -->
		<c:when test="${5+10 == 50 }">
		<!-- when조건확인 조건에 따라 여러개 작성가능 -->
			<h3>5+10은 50이다</h3>
			<!-- 조건이 맞을경우 실행 -->
		</c:when>
		
		<c:otherwise>
		<!-- otherwise when조건에 모두 만족하지 않을 경우 실행됨. -->
			<h3>5+10은 50이 아니다</h3>
		</c:otherwise>
	</c:choose>
	<!--  
	JSTL라이브러리 파일인 jstl.jar파일과 standard.jar파일을 이클립스 프로젝트 폴더이 WebContent\WEB-INF\lib폴더에 복사하도록 한다.
	-EL은 jsp에서 제공되고 있지만 JSPL은 jsp자체에서 제공이 되지 않기 때문에 반드시 자카르타사이트나 톰캣 압축파일에서 
	 jstl.jar파일과 standard.jar파일을 얻어와 해당 프로젝트에 추가한 후 예제들을 테스트해야 한다.
	 자카르타 홈페이지 경로가 변경될 수 있으므로, 톰캣에서 제공하는 압축파일의 샘플 애플리케이션에서 라이브러리 파일들을 얻어 오는 것이 더 편리할 것으로 판단된다-
	
	JSTL의 core라이브러리를 사용하기 위해 uri속성을 core라이브러리가 존재하는 곳으로 설정하고 접두사 속성인 prefix 값은 c로 설정한다.
	< c:set> 태그를 이용하여 test변수에 "Hello JSTL!"값을 할당한다.
	< c:out> 태그를 이용하여 test변수의 값을 출력한다.
	< c:remove> 태그를 이용하여 test변수를 제거한다.
	< c:catch> 태그로 예외처리를 하며 오류가 발생할 경우 err변수에 오류 내용이 저장된다.
	< c:catch> 태그를 테스트하기 위해 10을 0으로 나누어 강제로 오류를 발생시킨다.
	5<10의 조건을 < c:if>태그로 검사한다.
	< c:choose> 는 자바의 switch와 비슷한 조건문으로 조건문의 시작을 의미한다.
	5+10 == 50의 조건이 참인지 검사한다.
	위의 조건에 만족하지 않을 경우 < c:otherwise>< /c:otherwise> 태그의 내용을 표시한다.
	
	< c:set>을 사용하여 변수에'Hello JSTL!'라는 데이터를 입력하여 데이터를 출력하였고
	< c:remove>로 데이터를 입력한 변수를 제거한 후 다시 출력해 보았으나, 변수는 제거된 상태이므로 데이터가 출력되지 않는다.
	< c:catch>태그가 0으로 나눈 Exception을 err변수에 저장하여 출력하였다. 
	앞의 예제코드를 보면 자바 코드가 거의 필요없고 순수 JSTL라이브러리로만 구현이 되어있다.
	이렇게 JSRL라이브러리를 사용하면 일반 태그만 사용하는 것처럼 간결하게 프로그래밍 할 수 있게 된다.
	-->
</body>
</html>