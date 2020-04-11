<%@page import="java.util.Date"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.Param"%>
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
	String id = request.getParameter("userId");
	String pwd = request.getParameter("userPwd");
	String userName = request.getParameter("userName");

	if("jang".equals(id) && "1234".equals(pwd)){
		
		//인증된 사용자의 정보를 session에 저장한다.
			
		session.setAttribute("jang", new Object[]{id, userName, new Date().toLocaleString()});
		
		response.sendRedirect("LoginOk.jsp?userName="+ URLEncoder.encode(userName, "UTF-8"));
		
		} else {
			
			out.println("<script>");
			out.println("alert('"+userName+"님 정보를 확인해줘라...')");
			out.println("history.back()");			
			out.println("</script>");
						
			//메시지 출력...
			%>				
				<%--<script>
					alert("<%=userName%>님 정보를 확인해주세요..");
					//location.href="LoginForm.html";
					history.back(); // 뒤로가기...
				</script> --%>				
			<%	
			
			//서버코드가 먼저 실행되기때문에 위의 스크립트가 실행되지 않으므로
			//이럴경우 자바스크립트 이동방식을 사용하여야 한다...
		//response.sendRedirect("LoginForm.html");
		
		
	}
	
%>




</body>
</html>