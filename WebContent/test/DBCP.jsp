<%@page import="net.Project.Member.db.MemberDAO"%>
<%@page import="org.apache.catalina.connector.Request"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.naming.*" %>
<%@ page import="javax.sql.DataSource" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DBCP 연동</title>
</head>
<body>
<%!
   Connection conn = null;
   DataSource ds = null;
   PrintWriter out = null;
   MemberDAO memberdao = new MemberDAO();
%>
<%
   try {
      Context ctx = new InitialContext();
      ds = (DataSource) ctx.lookup("java:comp/env/jdbc/ora11g");
      conn = ds.getConnection();
      System.out.println("DBCP 연동 성공");
   } catch(NamingException ne){
      ne.printStackTrace();
   } finally {
      try {
         if (conn != null) conn.close();
      } catch(Exception e) {
         e.printStackTrace();
      }
   }
%>
</body>
</html>
