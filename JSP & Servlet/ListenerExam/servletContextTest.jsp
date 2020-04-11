<%@page import="java.util.Iterator"%>
<%@page import="java.util.Collection"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Map"%>
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

<h2>ServletContextListener TEST</h2>

<fieldset>
	<legend>나라선택</legend>
	<%		
		//나라정보를 가져오기
		Map<String, String> map = (Map<String, String>)application.getAttribute("map");
		for(String key : map.keySet()){
			String value = map.get(key);
			%>
			<input type="radio" name="nation" value="<%=key%>"><%=value %>
			<%
		}
		
	%>
	
</fieldset>

	<hr>
	application.getContextPath() : <%=application.getContextPath() %><br>
	<%=application.getAttribute("path") %> : <%=application.getAttribute("path") %><br>
	EL 언어로 : ${applicationScope.path} <br>
	EL 언어로 : ${path} <br>


</body>
</html>