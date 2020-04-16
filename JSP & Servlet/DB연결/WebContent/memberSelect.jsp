<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
  table{width:100%; border:5px double red}
  th,td{padding:5px; border: 1px solid pink ; text-align: center }
  a{text-decoration: none}
 </style>
<script src="js/jquery-3.4.1.min.js"></script>
<script>

	$(function(){
		
		$('button').on("click", function(){
						
			var id = document.getElementById("id").innerHTML;
			var pwd = document.getElementById("pwd").innerHTML;
			location.href="Delete?id="+id+"&pwd="+pwd;
			
		});
		
	});

</script>

</head>

<body>

<center>
 <h1>[ 회원 정보 LIST ]</h1>
<table cellspacing="0">
  <tr>
    <th colspan="9" style="text-align:right">
      <a href="memberForm.html">[ 회원가입 ]</a>&nbsp;&nbsp;&nbsp;
      <a href="index.html">[ 새로고침 ]</a>&nbsp;&nbsp;&nbsp;
    </th>
  </tr>
  <tr bgColor="pink">
    <th>번호</th>
    <th>아이디</th>
    <th>비밀번호</th>	
    <th>이름</th>
    <th>나이</th>
    <th>주소</th>
    <th>연락처</th>
    <th>가입일</th>
    <th>삭제</th>
  </tr>
   <c:forEach items="${list}" var="list" varStatus="state">
  	<tr>
  	<td>${state.count}</td><td id="id">${list.id}</td><td id="pwd">${list.pwd}</td><td>${list.name}</td><td>${list.age}</td>
  	<td>${list.addr}</td><td>${list.phone}</td><td>${list.joinDate}</td><td><button>삭제</button></td>
  	</tr>
  </c:forEach> 
</table>
<p>

<form name="search" action="find" method="post">
 <select name="keyField">
   <option value="0">--선택--</option>
   <option value="id">아이디</option>
   <option value="name">이름</option>
   <option value="addr">주소</option>
 </select>
 
<input type="text" name="keyWord"/>
<input type="button" value="검색" />  

</form>





</center>



</body>
</html>




