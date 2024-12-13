package Authentification;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        // Get user input
        String nom = request.getParameter("nom");
        String email = request.getParameter("email");
        String motDePasse = request.getParameter("mot_de_passe");
        String confirmMotDePasse = request.getParameter("confirm_mot_de_passe");
        String role = "client"; // Default role
        
        // Check if passwords match
        if (!motDePasse.equals(confirmMotDePasse)) {
            request.setAttribute("errorMessage", "Les mots de passe ne correspondent pas.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/Register.jsp");
            dispatcher.forward(request, response);
            return;
        }

        String url = "jdbc:postgresql://localhost:5432/jee";
        String pwd = "qd;in";
        String username = "postgres";
        
        try {
            // Register the driver
            Class.forName("org.postgresql.Driver");

            // Establish connection
            Connection conn = DriverManager.getConnection(url, username, pwd);

            // Check if the email or name already exists
            String checkSql = "SELECT * FROM bdjee.utilisateurs WHERE email = ? OR nom = ?";
            PreparedStatement checkStmt = conn.prepareStatement(checkSql);
            checkStmt.setString(1, email);
            checkStmt.setString(2, nom);
            ResultSet rs = checkStmt.executeQuery();

            if (rs.next()) {
                // User with the same email or name already exists
                request.setAttribute("errorMessage", "L'utilisateur avec cet email ou nom existe déjà.");
                RequestDispatcher dispatcher = request.getRequestDispatcher("/Register.jsp");
                dispatcher.forward(request, response);
            } else {
                // Insert new user into the database
                String sql = "INSERT INTO bdjee.utilisateurs (nom, email, mot_de_passe, role) VALUES (?, ?, ?, ?)";
                PreparedStatement s = conn.prepareStatement(sql);
                s.setString(1, nom);
                s.setString(2, email);
                s.setString(3, motDePasse);
                s.setString(4, role);

                int rows = s.executeUpdate();

                if (rows > 0) {
                    request.setAttribute("successMessage", "Inscription réussie !");
                    RequestDispatcher dispatcher = request.getRequestDispatcher("/Register.jsp");
                    dispatcher.forward(request, response);
                } else {
                    request.setAttribute("errorMessage", "Echec de l'inscription. Veuillez réessayer.");
                    RequestDispatcher dispatcher = request.getRequestDispatcher("/Register.jsp");
                    dispatcher.forward(request, response);
                }

                s.close();
            }

            rs.close();
            conn.close();
        } catch (SQLException e) {
            out.println("<h3>Error: " + e.getMessage() + "</h3>");
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            out.println("<h3>PostgreSQL Driver not found: " + e.getMessage() + "</h3>");
            e.printStackTrace();
        } finally {
            out.close();
        }
    }

}
