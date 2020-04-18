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
	session.invalidate();
	//얼럿을 띄우고 싶으면 태그 끊고 여기에 스크립트로 작성하면 됨
	response.sendRedirect("LoginForm.html");
%>
</body>
</html>