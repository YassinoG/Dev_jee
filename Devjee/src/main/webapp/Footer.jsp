<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Footer</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
    
    <!-- Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
        }

        .footer {
            background-color: #000000;
            color: white;
            padding: 40px 30px;
            text-align: center;
            margin-top: 50px;
        }

        .footer .logo {
            font-size: 30px;
            font-weight: 600;
            margin-bottom: 20px;
        }

        .footer .social-icons {
            margin: 20px 0;
        }

        .footer .social-icons a {
            color: white;
            margin: 0 15px;
            font-size: 24px;
            text-decoration: none;
            transition: color 0.3s;
        }

        .footer .social-icons a:hover {
            color: #ffd700; /* Gold hover effect */
        }

        .footer .links {
            margin: 20px 0;
            list-style-type: none;
            padding: 0;
        }

        .footer .links li {
            display: inline-block;
            margin: 0 15px;
        }

        .footer .links a {
            color: white;
            font-size: 18px;
            text-decoration: none;
            transition: color 0.3s;
        }

        .footer .links a:hover {
            color: #ffd700; /* Gold hover effect */
        }

        .footer .contact {
            font-size: 16px;
            margin-top: 20px;
        }

        .footer .contact a {
            color: #16bbc4;
            text-decoration: none;
            font-weight: 500;
            transition: color 0.3s;
        }

        .footer .contact a:hover {
            color: #ffd700;
        }
    </style>
</head>
<body>

<div class="footer">
    <div class="logo">sidi anouer</div>
        <div class="social-icons">
        <a href="https://facebook.com" target="_blank"><i class="fab fa-facebook"></i></a>
        <a href="https://twitter.com" target="_blank"><i class="fab fa-twitter"></i></a>
        <a href="https://instagram.com" target="_blank"><i class="fab fa-instagram"></i></a>
        <a href="https://linkedin.com" target="_blank"><i class="fab fa-linkedin"></i></a>
    </div>
    <ul class="links">
        <li><a href="index.jsp">Accueil</a></li>
        <li><a href="about.jsp">À propos</a></li>
        <li><a href="services.jsp">Boutique</a></li>
        <li><a href="contact.jsp">Contact Us</a></li>
    </ul>
    <div class="contact">
        <p>Contact us at: <a href="mailto:contact@monsite.com">contact@monsite.com</a></p>
    </div>
    <p>&copy; 2024 MonSite. All rights reserved.</p>
</div>

</body>
</html>
