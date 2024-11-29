<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UMS - Login Page</title>
    <style>
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            background-color: #f9f9f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333;
        }

        .container {
            background: #ffffff;
            padding: 40px 30px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 300px;
            border: 1px solid #e0e0e0;
        }

        h1 {
            font-size: 2rem;
            margin-bottom: 20px;
            color: #4CAF50;
        }

        label {
            display: block;
            text-align: left;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input {
            width: 90%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1rem;
        }

        .btn {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 12px 20px;
            border-radius: 5px;
            font-size: 1rem;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.3s ease;
            width: 100%;
            margin-top: 10px;
        }

        .btn:hover {
            background-color: #45a049;
        }

        hr {
            margin: 20px 0;
            border: none;
            border-top: 1px solid #ddd;
        }

        .register-link {
            font-size: 0.9rem;
        }

        .register-link a {
            color: #4CAF50;
            text-decoration: none;
            font-weight: bold;
        }

        .register-link a:hover {
            text-decoration: underline;
        }

        .back-btn {
            background-color: #f44336;
            color: white;
            border: none;
            padding: 12px 20px;
            border-radius: 5px;
            font-size: 1rem;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.3s ease;
            width: 100%;
            margin-top: 10px;
        }

        .back-btn:hover {
            background-color: #e53935;
        }
        
        h1#msg {
		  text-align: center;
		  margin-bottom: 20px;
		  font-size: 18px;
		}
    </style>
</head>
<body>
    <div class="container">
    	<h1 id="msg" style="display: none;">${msg }</h1>
        <h1>Login</h1>
        <form action="login">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="Enter your email" required>
            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Enter your password" required>
            <button type="submit" class="btn">Login</button>
        </form>
        <hr>
        <p class="register-link">
            Don't Have an Account? <a href="register.jsp">Click Here to Register</a>
        </p>
        <hr>
        <a href="index.jsp"><button type="button" class="back-btn">Back</button></a>
    </div>
</body>

<script type="text/javascript">
  const success = ${success};
  const failed = ${failed}
  if (success || failed) {
    const msgEle = document.getElementById("msg");
    msgEle.style.display = "block"; // Display the success message
    
    // Hide the message after 2 seconds
    setTimeout(() => {
      msgEle.style.display = "none";
    }, 2000);
  }
  </script>
</html>
