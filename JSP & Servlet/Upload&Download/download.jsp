<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
a{
	text-decoration: none;	
}
a:hover{
	color:red; font-style: italic; font-size: 30px;
}
</style>
<script type="text/javascript"></script>
</head>
<body>
<ul>
<h1>다운로드 목록</h1>
<c:forEach items="${fileNames}" var="fileName">

	<li><a href="downLoad?fileName=${fileName}">${fileName}</a></li>

</c:forEach>
</ul>
	

</body>
</html>