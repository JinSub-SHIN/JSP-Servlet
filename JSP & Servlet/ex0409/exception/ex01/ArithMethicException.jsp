<%@ page isErrorPage="true" %>
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

</script>
</head>
<body>

<h1>예외발생...</h1>

<h3>exception : <%=exception %><br>
	exception.getmessage :<%=exception.getMessage() %> <br>
	exception.getclass : <%=exception.getClass() %><br>
	exception.getclass.getName :<%=exception.getClass().getSimpleName() %><br>
</h3>

<a href="exceptionFrom.jsp">원래페이지로 이동하기</a>


</body>
</html>