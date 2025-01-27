<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h1>Welcome to Medical Store Mangement System</h1><hr/>
		<h1><a href = "addmed.jsp">Add Medicine</a></h1>
		<h1><a href = "searchmed.jsp">search Medicine</a></h1>
		<h1><a href = "findAll">View All Medicines</a></h1>
		<hr/>
		<table border ='1'>
			<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Type</th>
			<th>Brand</th>
			<th>Price per Unit</th>
			</tr>
			<tr>
			<td>${medicine.getId()}</td>
			<td>${medicine.getName()}</td>
			<td>${medicine.getType()}</td>
			<td>${medicine.getBrand()}</td>
			<td>${medicine.getPrice()}</td>
			</tr>
		</table>
	</center>
</body>
</html>