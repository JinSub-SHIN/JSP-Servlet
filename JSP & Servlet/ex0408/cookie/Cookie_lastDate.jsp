<%@page import="java.util.Date"%>
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
	Cookie [] cookies = request.getCookies();
	String str = "";
	Date date = null;
		
	if(cookies != null){
	
	for(Cookie coo : cookies){		
		if(!"First".equals(coo.getName())){
		str = "당신은 처음 방문 하셨습니다";
		Cookie co = new Cookie("First" , Long.toString(System.currentTimeMillis()));
		co.setMaxAge(60*60*24*365);
		co.setPath("/");
		response.addCookie(co);
		date = new Date(System.currentTimeMillis());
		} else {							
			String value = coo.getValue();
			System.out.println(value);
			long lo = Long.parseLong(value);			
			date = new Date(lo);
			str = "당신의 마지막 접속일은" + date;
		}		
	}
	
	} else {
		
		str = "당신은 처음 방문 하셨습니다";
		Cookie co = new Cookie("First" , Long.toString(System.currentTimeMillis()));
		co.setMaxAge(60*60*24*365);
		co.setPath("/");
		response.addCookie(co);
		date = new Date(System.currentTimeMillis());
		
	}
	
	

%>

<h1><%=str %></h1>
<h2>현재접속시간 :<%=date %></h2>



</body>
</html>