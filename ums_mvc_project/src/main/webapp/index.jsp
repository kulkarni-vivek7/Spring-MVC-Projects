<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Management System</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Oswald:wght@200..700&family=Pacifico&family=Parkinsans:wght@300..800&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap'
);

body {
	margin: 0;
	font-family: "Parkinsans", sans-serif;
	background-color: #f9f9f9;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	color: #333;
}

.container {
	text-align: center;
	background: #ffffff;
	padding: 40px 30px;
	border-radius: 10px;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
	border: 1px solid #e0e0e0;
}

h1 {
	font-size: 2.5rem;
	margin-bottom: 20px;
	color: #4CAF50;
	font-weight: bold;
}

.buttons {
	margin-top: 20px;
}

.btn {
	text-decoration: none;
	display: inline-block;
	background-color: #4CAF50;
	color: white;
	padding: 12px 25px;
	margin: 10px;
	border-radius: 5px;
	font-size: 1rem;
	font-weight: bold;
	border: none;
	cursor: pointer;
	transition: all 0.3s ease;
	box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
}

.btn:hover {
	background-color: #45a049;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
	transform: translateY(-2px);
}

.btn:focus {
	outline: none;
}
</style>
</head>
<body>
	<div class="container">
		<h1>User Management System</h1>
		<div class="buttons">
			<a href="login.jsp" class="btn">Login</a> <a href="register.jsp"
				class="btn">Register</a>
		</div>
	</div>
</body>
</html>

