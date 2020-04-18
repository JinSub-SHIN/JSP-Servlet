<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    <% response.setHeader("Cache-Control","no-store"); %> <%-- 캐시 강제 삭제 --%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style></style>
<script src="../js/jquery-3.4.1.min.js"></script>
<!-- <script> -->
<!--  	$(function(){ -->
<!--  		//jquery로 로그아웃 로직 처리 -->
<!--  		$("button").click(function(){ -->
<!--  			if(confirm("로그아웃 하시겠습니까?")){ -->
<!--  				//세션의 정보를 삭제 -->
<!--  				//여기에 jsp문법으로 세션을 지우면 서버코드이므로 먼저 해석되어짐 = 서버코드 부분은 문서를 접근한 순간 이미 처리가 끝나있다 -->
<!--  				location.href="logout.jsp"; -->
<!--  			} -->
<!--  		});//end click -->		
<!--  	});//end ready -->
<!-- </script> -->
</head>
<body>

<c:choose>
	<c:when test="${not empty sessionScope.userId}">
	<h3>접속시간 : ${sessionScope.time}</h3>
	<h3>${sessionScope.userName}님 로그인중...</h3>
	<form action="logout.jsp">
	<button>로그아웃</button>
	</form>
	</c:when>
	<c:otherwise>
	<%	
		System.out.println("여기로옴");
		response.sendRedirect("LoginForm.html");
	%>
	</c:otherwise>
</c:choose>


<%--
	if(session.getAttribute("userId") != null){ //바로 로그인 성공 페이지 호출했을 때 세션 값 체크
		//스크립트로 얼럿부터 띄울수도 있음
		//접속시간, (이름)로그인중, 이미지, 로그아웃 버튼
		long time = session.getCreationTime();
		session.setAttribute("time", time);
		out.println("접속시간 : "+time+"<br>");
		out.println(session.getAttribute("userName")+"님 로그인 중...<br>");
		--%>
<!--  		<form action="logout.jsp">
			<button>로그아웃</button>
		</form> -->
		<%--
		
		
	}else{
		response.sendRedirect("LoginForm.html");
	}


--%>


</body>
</html>