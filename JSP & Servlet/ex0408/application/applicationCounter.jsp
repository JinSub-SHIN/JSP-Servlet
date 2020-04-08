<%@page import="java.util.concurrent.atomic.AtomicInteger"%>
<%@page import="java.util.concurrent.atomic.AtomicBoolean"%>
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
	//application에 저장된 count수를 가져온다..	
	if(application.getAttribute("check") == null){
		application.setAttribute("check", 0);
	}

	int i = (int)application.getAttribute("check");
	
	//읽어온 값에 +1을 하고 다시 저장한다..
	if(session.isNew()){
		i++;
		application.setAttribute("check", i);
	}
	
	//최종값을 출력한다.
	
	
	
--%>

<%

	Object obj = application.getAttribute("check");

	if(application.getAttribute("check") == null){
		application.setAttribute("check", new AtomicInteger());
		obj = application.getAttribute("check");
	}

	AtomicInteger it = (AtomicInteger)obj;
	int check = it.get();
	
	//읽어온 값에 +1을 하고 다시 저장한다..
		if(session.isNew()){
			check = it.incrementAndGet();			
		}
		
		//최종값을 출력한다.
	
	
	
	
%>


<h3> 방문자 수 : <%=check %> 명</h3>


</body>
</html>