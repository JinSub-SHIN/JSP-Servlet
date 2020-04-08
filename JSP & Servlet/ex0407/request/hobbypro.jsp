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

	//인코딩변환
<%	request.setCharacterEncoding("UTF-8");
	
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String [] hobby = request.getParameterValues("hobby");
	String addr = request.getRemoteAddr();
	String str = "";
	
	for(String h : hobby){
		str += h;
	}
%>
	
</script>
</head>
<body>

<h3>
	이름 : <%=name %><br>
	나이 : <%=age %><br>
	취미 : <%=str %><br>
	접속자 IP : <%=addr %><br>


</h3>



</body>
</html>