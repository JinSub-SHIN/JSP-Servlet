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
	// Post방식에서는 인코딩처리를 해주어야 한다!
	request.setCharacterEncoding("UTF-8");
%>

<%
	String name = request.getParameter("name");
	String value = request.getParameter("blood");	
%>

<jsp:forward page='<%=value+".jsp" %>'>
	<jsp:param value="<%=name %>" name="name"/>	
</jsp:forward>



</body>
</html>