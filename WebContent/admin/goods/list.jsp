<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<!-- 헤더 인클루드 -->
	<jsp:include page="../adHeader.jsp"/>
	<!-- 헤더 인클루드 -->
	
		<div class="contents">
			<div class="goods_list">
				<table class="tbl_goods">
					<tr>
						<th>NO</th>
						<th>상품번호</th>
						<th>상품유형</th>										
						<th>상품이름</th>
						<th>상품가격</th>
						<th>재고량</th>
						<th>등록일</th>
						<th>수정일</th>
						<th>상품이미지</th>
					</tr>
				<c:forEach var="list" items="${goodsList }">
					<tr>	
						<td>${list.idx }</td>
						<td>${list.goods_no }</td>
						<td>							
						<c:choose>
							<c:when test="${list.ca_no eq 1 }">
								top
							</c:when>
							<c:when test="${list.ca_no eq 2 }">
								bottom
							</c:when>
							<c:when test="${list.ca_no eq 3 }">
								dress
							</c:when>
							<c:otherwise>outer</c:otherwise>
						</c:choose>
						</td>
						<td>
							<a href="./goodsView.ad?goods_no=${list.goods_no }&pageNum=${pageNum}" title="${list.goods_name }">${list.goods_name }</a>
						</td>
						<td><fmt:formatNumber value="${list.price }" type="currency"></fmt:formatNumber></td>
						<td>${list.goods_amt }</td>
						<td>${fn:substring(list.reg_date,0,10) }</td>
						<td>${fn:substring(list.update_date,0,10) }</td>
						<td>${list.img_file1 }</td>
					</tr>
				</c:forEach>
				<c:if test="${empty goodsList }">
					<tr>
						<td colspan="9" style="text-align:center;">상품이 없습니다.</td>
					</tr>
				</c:if>
				</table>
			</div>
			<div class="pager">
				<c:if test="${count > 0 }">
					<c:if test="${startPage > pageBlock }">
						<a href="./goodsList.ad?pageNum=${startPage-pageBlock }">&gt;</a>
					</c:if>
					<c:forEach var="i" begin="${startPage }" end="${endPage }" step="1">
					<a href="./goodsList.ad?pageNum=${i }" <c:if test="${i eq pageNum }">class="curr"</c:if>>${i }</a>				
					</c:forEach>
					<c:if test="${endPage < pageCount }">
						<a href="./goodsList.ad?pageNum=${startPage+pageBlock }">%lt;</a>
					</c:if>
				</c:if>
			</div>
			<div class="btn_area">
				<a href="#" title="글쓰기">글쓰기</a>
			</div>
		</div>
	</div>
</div>
</body>
</html>