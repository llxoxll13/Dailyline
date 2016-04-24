<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">

</style>
<script type="text/javascript">
	function postfind() {
		var f=document.frm1;//계층구조(window > document > form > input)
		//window는 생략이 가능
		if(f.dong.value==""){//공백일경우
			 alert("동/읍/면을 입력하세요");
			 f.dong.focus();//포커스
			 return;
		}
		f.submit();
	}
	
	function ok(zip,addr) {
		//오프너:부모.나를 띄워준 창이"오프너".(join.jsp가 오프너임)
		opener.frm.post1.value=zip.substring(0,3); //113-111 에서 133
		opener.frm.post2.value=zip.substring(4,7); //113-111 에서 111
		opener.frm.addr1.value.addr;
		self.close();
	}
</script>
<title>JSP</title>
</head>
<body>
jsp get/post방식 전송<br>

===========================================<br>
+++get+++<br>
+get 방식 전송<br>
<a href="output.jsp?id=admin&pwd=1234&name=홍길동">데이터전송</a><br>
+get 방식 출력<br>
<%
String id=request.getParameter("id");
String pwd=request.getParameter("pwd");
String name=request.getParameter("name");
%><br>
<%=id %><br>
<%=pwd %><br>
<%=name %><br>
===========================================<br>
+++post+++<br>
+post 방식 전송<br>
<form action="output.jsp" method="post" name="frm"><br> <!-- id는 디자인용, name은 자바용 -->
	이름 : <input type="text" name="name" size="13"><br>
	남자<input type="radio" name="sex" value="남자" checked>
	여자<input type="radio" name="sex" value="여자" checked><br>
	
	<input type="checkbox" name="hobby" value="낚시">낚시
	<input type="checkbox" name="hobby" value="운동">운동
	<input type="checkbox" name="hobby" value="등산">등산
	<input type="checkbox" name="hobby" value="독서">독서
	<input type="checkbox" name="hobby" value="게임">게임
	<input type="submit" value="전송">
</form>

<form action="postfind.jsp" method="post" name="frm1"><br> <!-- id는 디자인용, name은 자바용 -->
	<td>
		입력 : <input type="text" name="dong" size="10"><br>
		<input type="text" value="찾기" onclick="postfind()"><br>
	</td>
</form>

<img src="img/ds.png"><br>
+post방식 출력<br>
포스트방식일때 바꾸는 방식<br>
<%-- 
 request.setCharacterEncoding("EUC-KR");<br>
	 String name=request.getParameter("name");<br>
	 String sex=request.getParameter("sex");<br>
	 String[] hobby=request.getParameterValues("hobby");<br>

...................(중략)...................<br>
<%=name %><br>
<%=sex %><br>

	for(int i=0;i<hobby.length;i++){
		<%=hobby[i]%>
		
	}
<br>
--%>
+자바스크립트 함수 예제<br>
<%-- <a href="javascript:ok('<%=zip%>','<%=addr%>')">클릭</a><br> --%>
<img src="img/qwe.png"><br>
http://blog.naver.com/bb_/220315432894
</body>
</html>