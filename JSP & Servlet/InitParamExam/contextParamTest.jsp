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
<h1>
	<!-- 태그로 인식하기떄문에 아래와 같은 특수문자 사용... -->
	&lt;context-param&gt; 에 설정된 정보 확인하기...<p>
	메시지 : <%=application.getInitParameter("message") %><p>
	나이 : <%=application.getInitParameter("age") %>
</h1>

<%
	
%>


</body>
</html>