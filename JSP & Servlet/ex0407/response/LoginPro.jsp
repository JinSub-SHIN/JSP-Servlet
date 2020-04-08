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

	if("장".equals(id) && "1234".equals(pwd)){
		
		//새로운 request, response생성되어 이동하므로 필요한 정보 전송한다.
		//response.sendRedirect("LoginOk.jsp?userName="+ URLEncoder.encode(userName, "UTF-8"));
		
		//forward방식으로 이동하기 - 메소드 이동...
		RequestDispatcher rd = request.getRequestDispatcher("LoginOk.jsp");
		rd.forward(request, response);
		
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