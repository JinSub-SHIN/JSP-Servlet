<%@page import="java.io.IOException"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.util.Date"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

</style>

<script src="../../js/jquery-3.4.1.min.js"></script>
<script>

	$(function(){
		
		$('button').click(function(){
			
			location.href="board_Form.html";
			
		});
		
	});

</script>
</head>
<body>

<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String subject = request.getParameter("subject");
	String content = request.getParameter("content");
	long lo = System.currentTimeMillis();
	String date = Long.toString(lo);
	
	String message = name+"\n\r"+subject+"\n\r"+content;
	
	String str = application.getRealPath("/");
	
	File file = new File("C:/Edu/WebWorkSpace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/step01_JspExam/");	
	FileOutputStream fos = null;
		
	if(!file.exists()){
		System.out.println("파일경로가없습니다");
	} else {		
		System.out.println("파일경로가있습니다");
	}	
	
	
	try{
		
		fos = new FileOutputStream(file);
		byte[] con = message.getBytes();
		
		fos.write(con);
		fos.flush();
		fos.close();
		
	} catch(IOException e){
		e.printStackTrace();
	} finally {
		try{
			if(fos != null) fos.close();
		} catch(IOException e){
			e.printStackTrace();
		}
	}
	
	
	
	
		
%>

<h5><%=str %></h5>
<ol>
	<li><%=name %></li>
	<li><%=subject %></li>
	<li><%=content %></li>
	<li><%=date %></li>
</ol>
<button>새글등록</button>



</body>
</html>