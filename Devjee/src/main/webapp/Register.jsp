<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscription</title>
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

        input[type="email"], input[type="text"], input[type="password"] {
            padding: 12px;
            font-size: 16px;
            margin-bottom: 20px;
            border-radius: 4px;
            border: 1px solid #ccc;
            transition: 0.3s;
        }

        input[type="email"]:focus, input[type="text"]:focus, input[type="password"]:focus {
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
            <script type="text/javascript">
                // Redirect after a 3-second delay (3000 milliseconds)
                setTimeout(function() {
                    window.location.href = "Login.jsp"; // Redirect to login page
                }, 3000);
            </script>
        <% 
            }
        %>
    </div>
    <div>
        <h2>Registration form : </h2>
    </div>
    <form action="Register" method="post">
        <label for="email">Email :</label>
        <input type="email" id="email" name="email" required pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" title="Veuillez entrer une adresse email valide.">
        
        <label for="nom">Nom :</label>
        <input type="text" name="nom" required pattern="[a-zA-Z]+" title="Le nom ne doit contenir que des lettres sans espaces.">
        
        <label for="mot_de_passe">Mot de passe :</label>
        <input type="password" id="mot_de_passe" name="mot_de_passe" required pattern="(?=.*[A-Z])(?=.*\d)[A-Za-z\d]{8,}" title="Le mot de passe doit contenir au moins 8 caractères, une lettre majuscule et un chiffre.">
        
        <label for="confirm_mot_de_passe">Confirmer le mot de passe :</label>
        <input type="password" id="confirm_mot_de_passe" name="confirm_mot_de_passe" required title="Veuillez confirmer votre mot de passe.">
        
        <p>Do you have an account? <a href="Login.jsp">Login here!</a></p>
        
        <button type="submit">S'inscrire</button>
    </form>
</div>

</body>
</html>
