<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table{
	border: 1px solid;
	border-collapse: collapse;
	background-color: silver;
	
}

th,td{
	width: 150px;
	height: 60px;
	border:1px solid;
	text-align: center;

}

input[type=radio]{
	width: 15px;
	height: 15px;
}

</style>
<script type="text/javascript"></script>
</head>
<body>

<h1> &lt;c:forEach> TEST</h1>

<c:forEach begin="1" end="10" var="i">
	${i}
</c:forEach>

<hr>

<%
	String hobbys [] = {"등산", "수영", "낚시", "골프"};
%>

<c:forEach items="<%=hobbys %>" var="h" varStatus="state">
	${h} , ${state.index} , ${state.count}<br>
</c:forEach>

<hr>

<jsp:useBean id="bean" class="ex0414.jstl.ForEachBean"></jsp:useBean>

<!-- names는 select박스로 출력 -->

	<select>
		<option>--이름선택</option>
		<c:forEach items="${bean.names}" var="name">
		<option value="${name}">${name}</option>
		</c:forEach>
	</select><br>

<!-- menus는 check박스로 출력 -->
	<fieldset>
		<legend>메뉴선택</legend>
	
	<!-- getter 가 호출되는 것이다. -->
	<c:forEach items="${bean.menus}" var="menu">
	${menu}<input type="checkbox" value="${menu}">
	</c:forEach><br>
	</fieldset><p>

<!-- memberList는 테이블로 출력 -->

	<table>
	<thead>
		<tr><th>이름</th><th>나이</th><th>주소</th><th>전화번호</th></tr>
	</thead>
	<tbody>
		<c:forEach items="${bean.memberList}" var="list" varStatus="state">
		<tr><td>${list.id}</td><td>${list.age}</td><td>${list.addr}</td><td>${list.phone}</td></tr>
		</c:forEach>
	</tbody>
	</table><br>


<!-- map은 radio박스로 출력 -->

	<c:forEach items="${bean.map}" var="map">
	<input type="radio" value="${map.key}" name="a">${map.value}
	</c:forEach>


<hr>

가격 : 387654000000원

<fmt:formatNumber value="387654000000"></fmt:formatNumber>원
	






</body>
</html>