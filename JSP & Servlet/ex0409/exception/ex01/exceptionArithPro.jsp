<%@ page isErrorPage="true" %>
<%@ page errorPage="error.jsp" %>
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

	<%
		int num1 = Integer.parseInt(request.getParameter("num1"));
		
	%>
	
<h1>1000 나누기 <%=num1 %> = <%=1000/num1 %></h1>




</body>
</html>