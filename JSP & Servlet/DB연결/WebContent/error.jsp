<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<%--@ page errorPage="" --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

	a{
		text-decoration: none;
	}

</style>

<script>

</script>
</head>
<body>

<h3> 예외 발생 : ${errMsg} <p> 

<a href="javascript:history.back()">뒤로가기</a> &nbsp;&nbsp;&nbsp;&nbsp;
<a href="index.html">메인으로</a>

</h3>
</body>
</html>