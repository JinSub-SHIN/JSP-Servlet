<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	response.setHeader("Cache-Control", "no-store");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

</style>

<script src="../../../js/jquery-3.4.1.min.js"></script>

<script>


	addEventListener("load" , function(){
		
		var btn = document.getElementById("logout");
		
		btn.addEventListener("click", function(){
			
			if(confirm("로그아웃 하시겠습니까?")){
				location.href="Logout.jsp";
			} else {
				
			}			
			
		});
	
		
		
	});

</script>
</head>
<body>

	<%
		Object[] arry = (Object[])session.getAttribute("jang");
		
	%>

	<%	
	if(session.getAttribute("jang") != null){
		%>
		<h1><%=arry[1] %>님 로그인되었습니다..</h1>
		<h1>접속시간 : <%=arry[2] %></h1>
		<img src="images/poo.png">
		<button id="logout">로그아웃</button>
		<% 
	}	
	else{
		%>		
		<script>
		alert("로그인부터 하고오세요");
		location.href="LoginForm.jsp";
		</script>
		<%
	}
	%>
	
	


</body>
</html>