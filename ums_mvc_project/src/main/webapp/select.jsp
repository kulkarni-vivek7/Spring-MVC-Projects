<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UMS - Search User</title>
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
        }

        input[type="number"] {
            width: 80%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #cccccc;
            border-radius: 5px;
            font-size: 16px;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }
        
        a>button
        {
        	margin-top: 10px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .no-data {
            font-size: 16px;
            color: #777777;
            text-align: center;
            margin-top: 20px;
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
        <h1>Search User</h1>
        <form action="search" method="post">
            <label for="userId">Enter User ID:</label>
            <input type="number" id="userId" name="userId" placeholder="Enter user ID" required>
            <button type="submit">Search</button>
        </form>
        
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
                <c:choose>
                    <c:when test="${not empty user}">
                        <tr>
                            <td>${user.id}</td>
                            <td>${user.name}</td>
                            <td>${user.email}</td>
                            <td>${user.password}</td>
                            <td>${user.phone}</td>
                            <td>${user.age}</td>
                        </tr>
                    </c:when>
                    <c:otherwise>
                        <tr>
                            <td colspan="6" class="no-data">No user found. Please search with a valid ID.</td>
                        </tr>
                    </c:otherwise>
                </c:choose>
            </tbody>
        </table>
        
        <a href="home.jsp"><button type="button" class="btn-back">Back</button></a>
    </div>
</body>
</html>
