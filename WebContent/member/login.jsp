<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--http://localhost:8080/Dailyline/memberjoin.me 01.member/Memberjoin.jsp파일생성-->

<!-- header -->
	<jsp:include page="../main/header.jsp"/>
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
		<form action="./LoginAction.do" method="post" name="fr" onsubmit="submit check()">
		<!-- onSubmit은 form 안에 있는 내용이 action에 적어준 주소로 넘어가기 직전 
			 submit버튼을 부르면 onsubmit이 실행되어 
			 check함수가 실행되고, check함수의 return값이 true일 경우에만 폼이 전송됨.
		-->
			<!-- >login_Top -->
			<div class="login_Top">
				<div class="login_left">
					<!-- 아이디 -->
					<input type="text" name="id" value="ID">
					<!-- 비밀번호 -->
					<input type="text" name="passwd" value="PASSWORD">
				</div>
				<!-- 로그인bt -->
				<div class="login_right">
					<input type="image" src="./img/member/login.gif">
				</div>
			</div>
			<!-- <login_Top -->
			<!-- >login_Bottom -->
			<!-- 회원가입bt -->
			<div class="login_Bottom">
				<input type="image" src="./img/member/register.gif" onclick="location.href='join.jsp'">
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
	<jsp:include page="../main/footer.jsp"/>
<!-- footer -->