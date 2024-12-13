<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Navbar</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f7fc;
        }

        .navbar {
            background-color: #000000; /* Fond noir */
            padding: 20px 30px; /* Augmentation de la taille de la navbar */
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .navbar .logo {
            font-size: 30px; /* Augmenter la taille du logo */
            font-weight: 600;
            color: white;
        }

        .navbar .menu {
            display: flex;
            gap: 30px; /* Espacement plus large entre les éléments */
            list-style-type: none;
        }

        .navbar .menu a {
            color: white;
            text-decoration: none; /* Supprimer la décoration de texte */
            font-size: 20px; /* Augmenter la taille de la police des liens */
            font-weight: 500;
            transition: color 0.3s, background-color 0.3s;
            padding: 10px 15px; /* Ajouter un peu de padding pour les liens */
            border-radius: 5px;
        }

        .navbar .menu a:hover {
            color: black; /* Le texte devient noir au survol */
            background-color: white; /* Le fond devient blanc */
        }

        .navbar .auth a {
            color: white;
            text-decoration: none;
            padding: 12px 25px; /* Plus grand padding pour le bouton */
            background-color: black; /* Fond noir pour les boutons d'authentification */
            border-radius: 5px;
            border: 1px solid black;
            font-weight: 500;
            transition: all 0.3s;
        }

        .navbar .auth a:hover {
            background-color: white; /* Fond blanc au survol */
            color: black; /* Texte noir au survol */
        }

        .hamburger {
            display: none;
            flex-direction: column;
            gap: 5px;
            cursor: pointer;
        }

        .hamburger div {
            width: 25px;
            height: 4px;
            background-color: white;
            border-radius: 5px;
        }

        @media (max-width: 768px) {
            .navbar .menu {
                display: none;
                flex-direction: column;
                gap: 15px;
                position: absolute;
                top: 70px;
                right: 20px;
                background-color: #000000; /* Fond noir pour le menu mobile */
                padding: 20px;
                border-radius: 5px;
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            }

            .navbar .menu.active {
                display: flex;
            }

            .hamburger {
                display: flex;
            }

            .navbar .auth {
                display: none;
            }
        }
    </style>
</head>
<body>

<div class="navbar">
    <div class="logo">MonSite</div>
    <div class="menu">
        <a href="index.jsp">Accueil</a>
        <a href="services.jsp">Boutique</a>
        <a href="about.jsp">À propos</a>
        <a href="contact.jsp">Contact Us</a>
    </div>
    <div class="auth">
        <a href="Register.jsp">S'inscrire</a>
        <a href="Login.jsp">Se connecter</a>
    </div>
    <div class="hamburger" onclick="toggleMenu()">
        <div></div>
        <div></div>
        <div></div>
    </div>
</div>

<script>
    function toggleMenu() {
        document.querySelector('.navbar .menu').classList.toggle('active');
    }
</script>

</body>
</html>
