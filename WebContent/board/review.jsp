<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- header -->
	<jsp:include page="../main/header.jsp"/>
<!-- header -->

<!-- >mainWrap -->
<div id = "mainWrap">
	<!-- >sliderWrap -->
	<div class = "sliderWrap">
		<!-- >titleArea -->
		<div class="titleArea">
			<span>REVIEW</span>
		</div>
		<!-- <titleArea -->
		
		<!-- >form -->
		<!-- >review_Wrap -->
		<div class="review_Wrap">
		<form action="./boardReviewList.java" method="post">
			
			<table>
				<!-- >thead -->
				<thead>
				<tr>
					<th class="number">no</th>
					<th class="thumb"></th>
					<th class="item">item</th>
					<th class="category">category</th>
					<th class="subject">subject</th>
					<th class="writer">name</th>
					<th class="date">date</th>
					<th class="hit">hit</th>
					<th class="recom">recom</th>
					<th class="grade">grade</th>
				</tr>
				</thead>
				<!-- <thead -->
				
				<!-- >tbody1 -->
				<tbody class="tbody1">
				<tr>
					<td class="number">공지</td>
					<td class="thumb">
						<a></a>
					</td>
					<td class="item">
						<a></a>
					</td>
					<td class="category"></td>
					<td class="subject">
						<img alt="내용 보기" src="./img/board/btn_unfold.gif">
						<a href="#">리뷰퀸 선정 및 리뷰 적립금 안내</a>
						<img alt="HIT" src="./img/board/ico_hit.gif">
					</td>
					<td class="writer">데일리라인♡</td>
					<td class="date">2015-07-14</td>
					<td class="hit">866</td>
					<td class="recom">3</td>
					<td class="grade">
						<img alt="5점" src="./img/board/ico_point5.gif">
					</td>
				</tr>
				</tbody>
				<!-- <tbody1 -->
				
				<!-- >tbody2 -->
				<tbody class="tbody2">
					<tr>
						<td></td>
					</tr>
				</tbody>
				<!-- <tbody2 -->
				
				<!-- >tfoot -->
				<tfoot>
				</tfoot>
				<!-- <tfoot -->
				
			</table>
			
		</form>
		</div>
		<!-- <review_Wrap -->
		<!-- <form -->
		
	</div>
	<!-- <sliderWrap -->
</div>
<!-- <mainWrap -->

<!-- footer -->
	<jsp:include page="../main/footer.jsp"/>
<!-- footer -->