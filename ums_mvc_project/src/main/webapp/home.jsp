<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>UMS - Home Page</title>
	<style type="text/css">
	
		/* General Reset */
		* {
			margin: 0;
			padding: 0;
			box-sizing: border-box;
		}
		
		body {
			font-family: Arial, sans-serif;
			background-color: #f4f4f9;
			display: flex;
			justify-content: center;
			align-items: center;
			height: 100vh;
			margin: 0;
		}
		
		/* Container Styles */
		.container {
			text-align: center;
			background: white;
			padding: 30px;
			border-radius: 8px;
			box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
			width: 300px;
		}
		
		/* Heading Style */
		h1 {
			margin-bottom: 20px;
			color: #333;
		}
		
		/* Button Container */
		.button-container {
			display: flex;
			flex-direction: column;
			gap: 15px;
		}
		
		/* Button Styles */
		button, #viewAll {
			padding: 10px 20px;
			font-size: 16px;
			border: none;
			border-radius: 5px;
			background-color: #4CAF50;
			color: white;
			cursor: pointer;
			transition: background-color 0.3s ease;
			width: 100%;
		}
		
		a
		{
			text-decoration: none;
		}
		
		button:hover, #viewAll:hover {
			background-color: #45a049;
		}
		
		.back-btn {
            background-color: #f44336;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 1rem;
            cursor: pointer;
            transition: all 0.3s ease;
            width: 100%;
        }

        .back-btn:hover {
            background-color: #b22222;
        }
	</style>
</head>
<body>
	<div class="container">
		<h1>UMS</h1>
		<div class="button-container">
			<a href="view"><button id="viewAll">View All Users</button></a>
			<button onclick="redirectTo('update.jsp')">Update User</button>
			<button onclick="redirectTo('delete.jsp')">Delete User</button>
			<button onclick="redirectTo('select.jsp')">Select User By
				ID</button>
			<a href="index.jsp"><button type="button" class="back-btn">Back</button></a>
		</div>
	</div>

	<script>
		function redirectTo(page) {
			window.location.href = page;
		}
	</script>
</body>
</html>
