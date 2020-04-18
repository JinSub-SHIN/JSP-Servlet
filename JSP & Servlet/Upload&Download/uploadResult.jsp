<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
</style>
<script type="text/javascript"></script>
</head>
<body>

<h1> Upload Result </h1>

<h3>
	작성자 : ${requestScope.name.name} <p>
	제목 : ${requestScope.name.subject} <p>
	첨부파일이름(OriginalName) : ${requestScope.name.originalName} <p>
	첨부파일이름(systemName) : ${requestScope.name.systemName} <p>
	파일용량 : <fmt:formatNumber value="${requestScope.name.fileSize}"></fmt:formatNumber>  <p>
	저장경로 : ${requestScope.name.saveDir} <p>
</h3>

</body>
</html>