<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

</style>

<script>

	addEventListener("load", function(){
		
		alert("로그아웃하였습니다");
		location.href="LoginForm.jsp";
		
	});
	

</script>
</head>
<body>

<%
	session.invalidate();
%>


</body>
</html>