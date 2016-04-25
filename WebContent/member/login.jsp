<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>데일리라인 [Dailyline]</title>
<link rel="stylesheet" href="./css/common.css">
<link rel="stylesheet" href="./css/incl.css">
<link rel="stylesheet" href="./css/main.css">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:600" rel="stylesheet" type="text/css">
<style type="text/css">
#mainWrap{margin-top: 40px; margin-bottom: 0px; /* border: 1px solid blue; */}
.sliderWrap{min-height: 500px; margin: 0px; border: none; /* border: 1px solid red; */}
body{font: 8px "Segoe UI", "Lato", Corbel, arial, Verdana, 돋움, Dotum, 나눔고딕, NanumGothic, "맑은 고딕", "Malgun Gothic", AppleGothic, Helvetica, sans-serif}
img{border: none; vertical-align: middle;}

/* >titleArea */
.titleArea{width: 150px; height: 32px; margin: 0 auto; text-align: center; line-height: 31px; color: #000;
	border: 1px solid #eaeaea; border-bottom: 2px solid #eaeaea;}
.titleArea span{font-family: "Open Sans",sans-serif,arial; font-size: 11px; font-weight: normal;}
/* <titleArea */

/* >login_Wrap */
.login_Wrap{width: 334px; margin: 0 auto; overflow: hidden; margin-top: 50px; font-size: 11px; /* border: 1px solid red; */}
.login_left{width: 220px; float: left;}
.login_left input:nth-child(1){width: 100%; padding: 10px; color: #000; font-size: 12px; /* background-image: url("./img/member/id.gif")no-repeat; background-position-x: 10px; background-position-y: 13px; */ border: 1px solid #ccc;}
.login_left input:nth-child(2){width: 100%; padding: 10px; color: #000; font-size: 12px; margin-top: 10px;/* background-image: url("./img/member/pw.gif")no-repeat; background-position-x: 10px; background-position-y: 13px; */ border: 1px solid #ccc;}
.login_right{float: right;}
.login_Bottom{display: inline-block; margin-top: 50px;}
/* <login_Wrap */
</style>
</head>
<body>
<!-- 
http://localhost:8080/Dailyline/memberjoin.me 
01.member/Memberjoin.jsp파일생성
-->
<!-- header -->
	<div>
		<jsp:include page="../main/header.jsp"/>
	</div>
<!-- header -->

<!-- >mainWrap -->
<div id = "mainWrap">
	<!-- >sliderWrap -->
	<div class = "sliderWrap">
		<!-- >titleArea -->
		<div class="titleArea">
			<span>MEMBER LOGIN</span>
		</div>
		<!-- <titleArea -->
		
		<!-- >form -->
		<!-- >login_Wrap -->
		<div class="login_Wrap">
		<form>
			<!-- >login_Top -->
			<div class="login_Top">
				<div class="login_left">
					<input type="text" value="ID">
					<input type="text" value="PASSWORD">
				</div>
				<div class="login_right">
					<a href="#">
						<img src="./img/member/login.gif">
					</a>
				</div>
			</div>
			<!-- <login_Top -->
			<!-- >login_Bottom -->
			<div class="login_Bottom">
				<a href="#">
					<img src="./img/member/register.gif">
				</a>	
			</div>
			<!-- <login_Bottom -->
		</form>
		</div>
		<!-- <login_Wrap -->
		<!-- <form -->
				
	</div>
	<!-- <sliderWrap -->
</div>
<!-- <mainWrap -->

<!-- footer -->
	<div>
		<jsp:include page="../main/footer.jsp"/>
	</div>
<!-- footer -->
</body>
</html>