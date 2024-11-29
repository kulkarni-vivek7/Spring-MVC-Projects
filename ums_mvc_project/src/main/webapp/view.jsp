<%@page import="org.jsp.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>UMS - All Users Records</title>
<style type="text/css">
	body {
		font-family: Arial, sans-serif;
		background-color: #f4f4f9;
	}
	
	.container {
		margin: auto;
		width: 80%;
		text-align: center;
		
		display: flex;
		flex-direction: column;
		align-items: center;
	}
	
	table {
		width: 100%;
		border-collapse: collapse;
		margin-top: 20px;
	}
	
	th, td {
		border: 1px solid #ddd;
		padding: 8px;
	}
	
	th {
		background-color: #007bff;
		color: white;
	}
	
	tr:nth-child(even) {
		background-color: #f2f2f2;
	}
	
	button {
		display: block;
		width: 30%;
		padding: 10px;
		font-size: 16px;
		font-weight: bold;
		color: #fff;
		background-color: #007bff;
		border: none;
		border-radius: 5px;
		cursor: pointer;
		text-align: center;
		margin-left:35%;
		margin-top: 20px;
	}
	
	a {
		width:30%;
		text-decoration: none;
	}
	
	button:hover {
		background-color: #0056b3;
	}
	
	.btn-back{
        background-color: #f44336;
    }
        
    .btn-back:hover {
		background-color: #b22222;
	}
</style>
</head>
<body>
	<div class="container">
		<h1>View All Users</h1>
		<table>
			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Email</th>
					<th>Password</th>
					<th>Phone</th>
					<th>Age</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="user" items="${users}">
					<tr>
						<td>${user.id}</td>
						<td>${user.name}</td>
						<td>${user.email}</td>
						<td>${user.password}</td>
						<td>${user.phone}</td>
						<td>${user.age}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<a href="home.jsp"><button type="button" class="btn-back">Back</button></a>
	</div>
</body>
</html>
