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

<h1> 쿠기 정보 저장하기 </h1>
<%
	Cookie co1 = new Cookie("name1" , "value1");
	Cookie co2 = new Cookie("name2" , "value2");

	//옵션 설정..
	
	co1.setMaxAge(60*60*24); // 1일
	co2.setMaxAge(60*60*24*365); // 1년 ( 0 은 삭제, -1은 저장안됨)
	
	co1.setPath("/");
	
	response.addCookie(co1);
	response.addCookie(co2);
%>

<h2> 저장완료!</h2>
<a href="CookieGet.jsp">쿠키확인하러 가쥬아!</a>

</body>
</html>