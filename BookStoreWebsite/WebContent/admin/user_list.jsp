<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" > 
<title>Manager Users - STB Book Store Administration</title>
			
</head>
<body>
	<jsp:directive.include file="header.jsp" />
	<div align="center">
		<h2>Users Management </h2>
		<a href="user_form.jsp">Create New Users</a>
	</div>
	<div align="center">
	<table border = "1" cellpadding="7">
			  <tr >
			    <th >Index</th>
			    <th >ID</th> 
			    <th >Email</th>
			    <th >Full Name</th>
			    <th >Actions</th>
			  </tr>
			  <c:forEach var="user" items= "${listUsers}" varStatus = "status">
			  	<tr>
			  		<td>${status.index + 1}</td>
			  		<td>${user.userId}</td>
			  		<td>${user.email}</td>
			  		<td>${user.fullName}</td>
			  		<td>
			  			<a href="">Edit</a> &nbsp;
			  			<a href="">Delete</a>
			  		</td>
			  		
			  	</tr>
			  </c:forEach>
			</table>
		<br>
	</div>
	<div align="center">
	
	</div>
	<div align="center">
	
	</div>
	
	<jsp:directive.include file="footer.jsp" />
</body>
</html>