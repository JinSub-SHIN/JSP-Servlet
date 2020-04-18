<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style></style>
<script type="text/javascript"></script>
</head>
<body>

<h1>&lt;c:if>, &lt;c:choose> TEST </h1>

<!-- 
	http://localhost:8888/step08_EL_JSTL/ex04_if_choose.jsp?age=20
 -->

<c:if test="${param.age>18}" var="re">
	<h3>${param.age}살은 성인입니다.</h3>
</c:if>

결과 : ${re}

<hr>

<c:choose>
	<c:when test="${param.age>18}">
		<h3 style="color:blue">${param.age}살은 성인입니다.</h3>	
	</c:when>
	<c:otherwise>
		<h3 style="color:red">${param.age}살은 미성년자입니다.</h3>
	</c:otherwise>
</c:choose>

<hr color="red">

<form action="ex04_if_choose.jsp" method="get" name="f">
	이름 : <input type="text" name="name" value="${param.name}">
	나이 : <input type="text" name="age" value="${param.age}">
	선택 :
	<select name="job" id="job">
		<option value="0">--선택--</option>
		<option value="학생">학생</option>
		<option value="개발자">개발자</option>
		<option value="백조">백조</option>
		<option value="백수">백수</option>		
	</select>
	<input type="submit" value="전송">
</form>

<h3>
<c:if test="${not empty param.name and param.job != null }">
	${param.name}님 나이는 ${param.age}이며 직업은 ${param.job} 입니다..
<hr>
<c:choose>
	<c:when test="${param.job == '학생' }">
		<h3>공부하세요~~</h3>
	</c:when>
	<c:when test="${param.job == '개발자' }">
		<h3>최고의 개발자가 되세요~</h3>
	</c:when>
	<c:when test="${param.job == '백조' }">
		<h3>노세 노세.. 젊어서 노세..</h3>
	</c:when>
	<c:when test="${param.job == '백수' }">
		<h3> 돈버세요...</h3>
	</c:when>
	<c:otherwise>
	<h3>선택사항없음</h3>
	</c:otherwise>
</c:choose>
</c:if>
</h3>

<script>
	document.f.job.value="${param.job}"
	
	//jQuery문법
	//$("select[name=job]").val("${param.job}")
</script>

</body>
</html>