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
		String name = request.getParameter("userName");
	
	%>
	
	<h1><%=name %>님 로그인되었습니다..</h1>


</body>
</html>