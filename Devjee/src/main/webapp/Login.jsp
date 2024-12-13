<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f4f7fc;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            padding: 40px;
            width: 100%;
            max-width: 500px;
            transition: box-shadow 0.3s ease;
        }

        .container:hover {
            box-shadow: 3px 3px 3px 3px black; 
        }

        h3 {
            text-align: center;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            font-size: 16px;
            margin-bottom: 8px;
            color: #333;
        }

        input[type="email"], input[type="password"] {
            padding: 12px;
            font-size: 16px;
            margin-bottom: 20px;
            border-radius: 4px;
            border: 1px solid #ccc;
            transition: 0.3s;
        }

        input[type="email"]:focus, input[type="password"]:focus {
            border-color: #4CAF50;
            outline: none;
        }

        button {
            padding: 12px;
            background-color: #16bbc4;
            border: none;
            color: white;
            font-size: 16px;
            border-radius: 4px;
            cursor: pointer;
            transition: 0.3s;
        }

        button:hover {
            background-color: #14a6b1;
            box-shadow: 3px 3px 3px 3px gray;
        }

        .message {
            text-align: center;
            margin-bottom: 20px;
        }

        .message h3 {
            font-size: 18px;
            font-weight: 500;
            margin: 0;
        }

        .error {
            color: #e74c3c;
        }

        .success {
            color: #2ecc71;
        }

        h2 {
            text-align: center;
            font-weight: medium;
        }

        a {
            color: #16bbc4;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="container">
    <%-- Display error or success message --%>
    <div class="message">
        <% 
            String errorMessage = (String) request.getAttribute("errorMessage");
            String successMessage = (String) request.getAttribute("successMessage");
            if (errorMessage != null) {
        %>
            <h3 class="error"><%= errorMessage %></h3>
        <% 
            }
            if (successMessage != null) {
        %>
            <h3 class="success"><%= successMessage %></h3>
        <% 
            }
        %>
    </div>

    <h2>Login Form</h2>
    <form action="Login" method="post">
        <label for="email">Email :</label>
        <input type="email" id="email" name="email" required>
        
        <label for="mot_de_passe">Password :</label>
        <input type="password" id="mot_de_passe" name="mot_de_passe" required>
        
        <button type="submit">Login</button>
    </form>

    <p>Don't have an account? <a href="Register.jsp">Register here!</a></p>
</div>

</body>
</html>
