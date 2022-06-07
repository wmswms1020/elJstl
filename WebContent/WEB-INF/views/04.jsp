<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ page import="vo.UserVo" %>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>el, jstl</h1>
	<h2>el</h2>
	<h3>자바문법자바문법 request.attribute</h3>
	
	
	<h3>el문법</h3>
	<%
		UserVo userVo = (UserVo)request.getAttribute("userVo");
	
		int num = (int)request.getAttribute("num");
		String str = (String)request.getAttribute("str");
	%>
	번호 = <%=userVo.getNo() %> <br>
	이름 = <%=userVo.getName() %> <br>
	이메일 = <%=userVo.getEmail() %> <br>
	비밀번호 = <%=userVo.getPassword() %> <br>
	성별 = <%=userVo.getGender() %> <br>
	<br>
	num = <%=num %><br>
	str = <%=str %>
	
	<h3>el</h3>
	
	번호=${requestScope.userVo.no }<br>  <!-- no ==> getNO() -->
	이름=${requestScope.userVo.name }<br>
	이메일=${requestScope.userVo.email }<br>
	비밀번호=${requestScope.userVo.password }<br>
	성별=${requestScope.userVo.gender }<br>
	<br>
	num = ${requestScope.num }<br>
	str = ${requestScope.str }<br>
	
	<br>
	<br>
	<br>
	번호=${userVo.no }<br>  <!-- no ==> getNO() -->
	이름=${userVo.name }<br>
	이메일=${userVo.email }<br>
	비밀번호=${userVo.password }<br>
	성별=${userVo.gender }<br>
	<br>
	num = ${num }<br>
	str = ${str }<br>
	
	
	
</body>
</html>