<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 결과 페이지</title>
</head>
<body>
	<h1>EL을 활용한 결과 페이지</h1>
	
<%-- 	<div style="border : 3px solid <%= request.getParameter("color") %>">
	
		<h3>이름 : <%= request.getParameter("userName") %></h3>
		<h3>나이 : <%= request.getParameter("age") %></h3>
		<h3>성별 : <%= request.getParameter("gender") %></h3>
		<h3>선호색상 : <%= request.getParameter("color") %></h3>
	
	</div>
 --%>	
	
	<div style="border : 3px solid ${param.color}">
	
		<h3>이름 : ${param.userName }</h3>
		<h3>나이 : ${param.age }</h3>
		<h3>성별 : ${param.gender }</h3>
		<h3>선호색상 : ${param.color }</h3>
	
	</div>
	

	
		
</body>
</html>