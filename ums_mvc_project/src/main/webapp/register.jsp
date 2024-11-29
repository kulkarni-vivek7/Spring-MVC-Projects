<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>UMS - Registration Page</title>
  <style>
    body {
	  font-family: Arial, sans-serif;
	  background-color: #f3f4f6;
	  margin: 0;
	  padding: 0;
	  display: flex;
	  flex-direction: column;
	  justify-content: center;
	  align-items: center;
	  min-height: 100vh; /* Ensure full-page height */
	  box-sizing: border-box;
	}
	
	.registration-container {
	  background-color: #ffffff;
	  padding: 30px;
	  border-radius: 8px;
	  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	  width: 100%;
	  max-width: 500px;
	  box-sizing: border-box;
	}
	
	.registration-container h1 {
	  text-align: center;
	  margin-bottom: 20px;
	  font-size: 24px;
	  color: #333;
	}
	
	.form-group {
	  display: flex;
	  flex-direction: column;
	  gap: 15px; /* Ensure consistent spacing between inputs */
	}
	
	.form-group input {
	  width: 100%;
	  padding: 10px;
	  border: 1px solid #ddd;
	  border-radius: 5px;
	  font-size: 16px;
	  box-sizing: border-box;
	}
	
	button {
	  display: block;
	  width: 100%;
	  padding: 10px;
	  font-size: 16px;
	  font-weight: bold;
	  color: #fff;
	  background-color: #4CAF50;
	  border: none;
	  border-radius: 5px;
	  cursor: pointer;
	  margin-bottom: 10px;
	  margin-top: 15px;
	}
	
	a {
	  text-decoration: none;
	}
	
	button:hover {
	  background-color: #45a049;
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
  <div class="registration-container">
    <h1>Register</h1>
    <form action="reg" method="POST" id="registrationForm">
      <div class="form-group">
        <input type="text" id="name" name="name" placeholder="Enter your name" required>
        <input type="email" id="email" name="email" placeholder="Enter your email" required>
        <input type="text" id="password" name="password" placeholder="Enter your password" required>
        <input type="number" id="phone" name="phone" placeholder="Enter your Phone Number" required>
        <input type="number" id="age" name="age" placeholder="Enter your age" required>
      </div>

      <button type="submit" class="register-button">Register</button>
      <a href="index.jsp"><button type="button" class="btn-back">Back</button></a>
    </form>
  </div>
</body>
</html>
