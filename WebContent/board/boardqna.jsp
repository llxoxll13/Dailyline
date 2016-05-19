<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!-- **fn** JSTL functions은 JSTL에서 제공하는 각종 함수를 사용해서 문자열이나, 컬렉션들을 처리한다.
	  		fn태그는 단독으로 사용할 수 없고 EL 표현식 내에서 사용한다. -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

	<jsp:include page="../main/header.jsp"/>
	
	<div class = "conWrap"><!-- conWrap -->
	
		<div class="contitle"><!-- 타이틀 -->
			<h2>
				Q&A
			</h2>
		</div><!-- 타이틀 -->
	
		<div class="contable"><!-- 테이블 -->
			<table>
				<tr>
					<th>no</th>
					<th>subject</th>
					<th>name</th>
					<th>date</th>
				</tr>
				
				<!-- int length(Object item):item이 배열이나 컬렉션이면 요소의 개수를, 문자열이면 문자의 개수를 리턴 한다.
					<c:set var="texts" value="${fn:split('Hi My name is waldo', ' ')}"/>
						${fn:length(texts)} // 5
						${fn:length("123456")} // 6 -->
				<c:if test="${fn:length(qnaList) gt 0 }"><!-- gt == > -->
					<c:forEach items="${qnaList }" var="item">
						<tr>
							<td>${item.idx }</td>
							<td><a href ="#">${item.subject }</a></td>
							<td>${item.mem_id }</td>
							<td>${fn:substring(item.reg_date,0,10) }</td>
						</tr>
					</c:forEach>
				</c:if>
				<c:if test="${empty qnaList }">
					<tr>
						<td colspan="6"> 게시글이 없습니다. </td>
					</tr>
				</c:if>
				
			</table>		
		</div><!-- 테이블 -->
		
		<div class = "boardWrite">
			<a>WRITE</a>
		</div>
		
		<div class = "boardPage"><!-- 페이징 -->
			<c:if test="${count gt 0 }"><!-- 카운트 값이 있으면 -->
				<c:if test="${startPage gt pageBlock }">
					<p>
						<a href="./boardQna.do?pageNum=${startPage-pageBlock }">
							<img src ="./img/board/btn_pagePrev.gif">
						</a>
					</p>
				</c:if>
				<ul>
					<c:forEach var="index" begin="${startPage }" end="${endPage }" step="1">
						<li>
							<a href ="./boardQna.do?pageNum=${index }" <c:if test="${i eq pageNum }">class ="curr"</c:if>>${index }</a>
						</li>
					</c:forEach>
				</ul>
				<c:if test="${endPage lt pageCount }">
					<p>
						<a href="./boardQna.do?pageNum=${startPage+pageBlock }">
							<img src="./img/board/btn_pageNext.gif">
						</a>
					</p>
				</c:if>	
			</c:if>	
		</div><!-- 페이징 -->
	</div><!-- conWrap -->
	
	
	
		
	<jsp:include page="../main/footer.jsp"/>