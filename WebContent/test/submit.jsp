<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<html>
<h1>[JSP] submit 버튼을 텍스트나 이미지로 하려면</h1>
   <head>
         <script type="text/javascript">
        
              function send(){     
        

                   document.formId.method = "post"     // method 선택, get, post
                   document.formId.action = "test.jsp";  // submit 하기 위한 페이지 

                   document.formId.submit();
                  
              }
             
             
         </script>
   </head>

   <body>

 

       <form name="formId" >
           
              <img src="이미지 주소" onclick="javascript_:send();" />

              <a href="javascript_:send();" > 링크1 </a>
           
       </form>
     
   </body>

</html>

</body>
</html>