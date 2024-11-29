<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UMS - Update User</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 50%;
            margin: 50px auto;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            text-align: center;
        }

        h1 {
            margin-bottom: 20px;
            color: #333333;
        }

        form {
            margin-bottom: 20px;
        }

        label {
            font-size: 16px;
            margin-bottom: 10px;
            display: block;
            color: #555555;
            text-align: left;
        }

        input[type="text"], 
        input[type="email"], 
        input[type="number"] {
            width: 95%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #cccccc;
            border-radius: 5px;
            font-size: 16px;
        }

        button {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }

        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }

        .buttons {
            text-align: center;
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
    	<h2 id="msg">${msg }</h2>
        <h1>Update User</h1>
        <!-- Search Section -->
        <form action="searchUpdate" method="post">
            <div class="form-group">
                <label for="searchId">Enter User ID:</label>
                <input type="number" id="searchId" name="userId" placeholder="Enter user ID" required>
            </div>
            <div class="buttons">
                <button type="submit">Search</button>
            </div>
        </form>

        <!-- Update Form -->
        <form action="update" method="post">
            <div class="form-group">
                <label for="id">ID:</label>
                <input type="number" id="id" name="id" readonly value="${user.id}">
            </div>
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" value="${user.name}" placeholder="Enter name">
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" value="${user.email}" placeholder="Enter email">
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="text" id="password" name="password" value="${user.password}" placeholder="Enter password">
            </div>
            <div class="form-group">
                <label for="phone">Phone:</label>
                <input type="number" id="phone" name="phone" value="${user.phone}" placeholder="Enter phone number">
            </div>
            <div class="form-group">
                <label for="age">Age:</label>
                <input type="number" id="age" name="age" value="${user.age}" placeholder="Enter age">
            </div>
            <div class="buttons">
                <button type="submit">Update</button>
            </div>
        </form>
        
         <a href="home.jsp"><button type="button" class="btn-back">Back</button></a>
    </div>
    
    <script type="text/javascript">
	  	let msgEle = document.getElementById("msg");
		
		setTimeout(() => {
			msgEle.style.display = "none";
		}, 2000);
  	</script>
</body>
</html>
