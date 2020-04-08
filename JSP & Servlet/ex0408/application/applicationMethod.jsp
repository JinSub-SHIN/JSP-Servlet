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

<h1> ServletContext - application 변수</h1>

<h3>
getContextPath :<%=application.getContextPath() %><p>
getRealPath :<%=application.getRealPath("/") %><p>
getMajorVersion :<%=application.getMajorVersion() %><p>
getMinorVersion	:<%=application.getMinorVersion() %><p>
getServerInfo :<%=application.getServerInfo() %><p>
</h3>

<hr>

<h3> application에 정보 저장하기...</h3>
<%
	application.setAttribute("message", "졸지맙시다");
	application.setAttribute("addr", "서울시 강남구...");
	
%>

<hr>
<h3> application에 정보 확인하기</h3>
메시지 :<%=application.getAttribute("message")%><p>
주소 :<%=application.getAttribute("addr") %><p>

<a href="../session/sessionGet.jsp">정보확인하러가장!</a>





</body>
</html>