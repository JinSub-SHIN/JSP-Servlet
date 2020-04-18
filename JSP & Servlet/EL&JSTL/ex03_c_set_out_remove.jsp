<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style></style>
<script type="text/javascript"></script>
</head>
<body>


<h2> &lt;c:set> , &lt;c:out> , &lt;c:remove> TEST </h2>
<c:out value="안녕"></c:out>
<c:out value="<h2>안녕</h2>" escapeXml="true"></c:out> <hr>
<c:out value="<h2>안녕</h2>" escapeXml="false"></c:out> <hr>

<c:set var="id" value="jang" scope="session"></c:set>
<c:set var="message" value="월요일이다" scope="application"></c:set>
<c:set var="age" value="20"></c:set>

아이디 : ${id } / <c:out value="${id}"></c:out><p>
메시지 : ${message } / <c:out value="${message}"></c:out><p>
나이 : ${age } / <c:out value="${age}"></c:out><p>

<%
	String addr="경기도 대왕판교로...";

	//addr을 표현언어로 사용하려면 xxxScope영역에 저장되어야한다...
%>

주소 : ${addr}

<a href="ex03_setResult.jsp">확인하러가자</a>

</body>
</html>