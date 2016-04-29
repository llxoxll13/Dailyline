<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<!-- 헤더 인클루드 -->
	<jsp:include page="../adHeader.jsp"/>
	<!-- 헤더 인클루드 -->
	
		<div class="contents">
			<div class="goods_detail">
				<table>
					<tr>
						<th>제품번호</th>
						<td>${goodsbean.goods_no }</td>
					</tr>
					<tr>
						<th>카테고리</th>
						<td>
						<c:choose>
							<c:when test="${goodsbean.ca_no eq 1 }">
								top
							</c:when>
							<c:when test="${goodsbean.ca_no eq 2 }">
								bottom
							</c:when>
							<c:when test="${goodsbean.ca_no eq 3 }">
								dress
							</c:when>
							<c:otherwise>outer</c:otherwise>
						</c:choose>
						</td>
					</tr>
					<tr>
						<th>제품명</th>
						<td>${goodsbean.goods_name }</td>
					</tr>
					<tr>
						<th>가격</th>
						<td><fmt:formatNumber value="${goodsbean.price }" type="currency"></fmt:formatNumber></td>
					</tr>
					<tr>
						<th>수량</th>
						<td>${goodsbean.goods_amt }</td>
					</tr>
					<tr>
						<th>색상</th>
						<td>${goodsbean.goods_color }</td>
					</tr>
					<tr>
						<th>사이즈</th>
						<td>${goodsbean.goods_size }</td>
					</tr>
					<tr>
						<th>대표사진</th>
						<td>${goodsbean.img_file1 }</td>
					</tr>
					<tr>
						<th>상품사진</th>
						<td>${goodsbean.img_file1 }</td>
					</tr>
					<tr>
						<th>등록일</th>
						<td>${fn:substring(goodsbean.reg_date, 0, 10) }</td>
					</tr>
					<tr>
						<th>수정일</th>
						<td>${fn:substring(goodsbean.update_date, 0, 10) }</td>
					</tr>
					<tr>
						<th>제품설명</th>
						<td>${goodsbean.goods_comment }</td>
					</tr>
				</table>
				<div class="detail_btn">
					<a href="./goodsList.ad?pageNum=${pageNum }" title="목록으로 가기">목록</a>
					<a href="#" title="수정">수정</a>
					<a href="#" title="삭제">삭제</a>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>