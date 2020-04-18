<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style></style>
<script></script>
</head>
<body>
<% 
	String dbId = "jang";
	String dbPwd = "1234";
	
	String userId = request.getParameter("userId");
	String userPwd = request.getParameter("userPwd");
	String userName = request.getParameter("userName");
	
	if(dbId.equals(userId) && dbPwd.equals(userPwd)){
		long time = session.getCreationTime();
		Date date = new Date(time);
		session.setAttribute("userId", userId);
		session.setAttribute("userPwd", userPwd);
		session.setAttribute("userName", userName);
		session.setAttribute("time", date);
		response.sendRedirect("LoginOK.jsp");
		//session.setAttribute("loginTime", new Date().toLocaleString()); //로그인에 성공했다면 로그인시간 세션에저장
		
	}else{
		//리다이렉트 html로
		response.sendRedirect("LoginForm.html");
	}
	
	
	
%>
</body>
</html>