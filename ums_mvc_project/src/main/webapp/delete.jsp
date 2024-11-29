<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UMS - Delete User</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 40%;
            margin: 100px auto;
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

        label {
            font-size: 16px;
            margin-bottom: 10px;
            display: block;
            color: #555555;
        }

        input[type="number"] {
            width: 70%;
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
    	<h3 id="msg">${msg }</h3>
        <h1>Delete User</h1>
        <form action="delete" method="post">
            <label for="userId">Enter User ID:</label>
            <input type="number" id="userId" name="userId" placeholder="Enter user ID" required>
            <button type="submit">Delete</button>
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
