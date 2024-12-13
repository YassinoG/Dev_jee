<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Accueil</title>
    <%@ include file="Navbar.jsp" %>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        .hero {
            display: flex;
            align-items: center;
            justify-content: center;
            height: calc(100vh - 120px); /* Adjust height considering navbar and footer */
            background: url('your-image.jpg') no-repeat center center/cover;
            text-align: center;
            color: white;
        }

        .hero h1 {
            font-size: 3rem;
            margin-bottom: 20px;
            color: #16bbc4;
        }

        .hero p {
            font-size: 1.2rem;
            margin-bottom: 30px;
            color: #16bbc4;
        }

        .hero a {
            display: inline-block;
            padding: 10px 20px;
            font-size: 1rem;
            font-weight: bold;
            color: #fff;
            background-color: #16bbc4;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        .hero a:hover {
            background-color: #13a1ab;
        }
    </style>
</head>
<body>
    <div class="hero">
        <div>
            <h1>Bienvenue à notre bibliothèque numérique</h1>
            <p>Découvrez, empruntez et téléchargez vos livres préférés !</p>
            <a href="books.jsp">Explorez nos livres</a>
        </div>
    </div>

<%@ include file="Footer.jsp" %>
</body>
</html>
