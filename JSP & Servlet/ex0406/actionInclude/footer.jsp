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

<%-- 
	<%
		//변수중복으로 에러발생
		String addr="경기도 판교...";
	%>
--%>

<%
	//parameter로 전송된 데이터 받기(request 전송)
	String addr = request.getParameter("address");
	String id = request.getParameter("id");
	
%>

<h3>footer.jsp 입니다</h3>
<!-- 
	에러가 발생하지만 include로 소스가 합쳐지기때문에
	변수를 공유하기떄문에 사용가능하다...	
 -->

<h1>주소 : <%=addr %> / <%=id %>
	<%--<%=addr --%></h1>



</body>
</html>