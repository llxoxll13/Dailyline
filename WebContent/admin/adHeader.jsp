<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자 페이지</title>
<link href="../css/adminCommon.css" rel="stylesheet">
<link href="../css/admin/goods.css" rel="stylesheet">
<style type="text/css">

</style>
<script type="text/javascript" src="../js/jquery-2.1.4.js"></script>
<script type="text/javascript" src="../js/idangerous.swiper.js"></script>
</head>
<body>
<div class="header_wrap">
	<div class="header">
		<a href="/line/main.do">
			<img src="../img/admin/common/header/logo2.gif" alt="데일리라인">
		</a> 
		<em class="header_title">관리자 페이지</em>
	</div>
</div>
<div class="contents_wrap">
	<div class="contents_area">
		<div class="side">
			<ul>
				<li><h3>HOME</h3></li>
				<li>
					<a href="./main.ad" title="홈으로">홈으로</a>					
				</li>
			</ul>
			<ul>
				<li><h3>상품 관리</h3></li>
				<li>
					<a href="./goodsList.ad" title="상품 리스트">상품 리스트</a>
				</li>
				<li>
					<a href="#" title="상품 등록">상품 등록</a>
				</li>
			</ul>
			<ul>
				<li><h3>주문 관리</h3></li>
				<li>
					<a href="#" title="주문 조회">주문 조회</a>
				</li>
			</ul>
		</div>