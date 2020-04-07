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
	String sum = request.getParameter("total");
	String name = request.getParameter("name");
%>


<h1>forwardResult.jsp 문서입니다.</h1>
<h2> 총합 : <%=sum %></h2>
<h2> 이름 : <%=name %></h2>


</body>
</html>