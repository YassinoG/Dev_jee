package Authentification;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        // Get user input
        String email = request.getParameter("email");
        String motDePasse = request.getParameter("mot_de_passe");
        
        String url = "jdbc:postgresql://localhost:5432/jee";
        String pwd = "qd;in";
        String username = "postgres";
        
        try {
            // Register the driver
            Class.forName("org.postgresql.Driver");

            // Establish connection
            Connection conn = DriverManager.getConnection(url, username, pwd);

            // Query to check user credentials
            String sql = "SELECT * FROM bdjee.utilisateurs WHERE email = ? AND mot_de_passe = ?";
            PreparedStatement s = conn.prepareStatement(sql);
            s.setString(1, email);
            s.setString(2, motDePasse);

            ResultSet rs = s.executeQuery();
            if (rs.next()) {
                // If credentials are correct, redirect or set a success message
                request.setAttribute("successMessage", "Login successful! Welcome " + email);
                request.getRequestDispatcher("Login.jsp").forward(request, response);
            } else {
                // If credentials are incorrect, set an error message
                request.setAttribute("errorMessage", "Invalid email or password.");
                request.getRequestDispatcher("Login.jsp").forward(request, response);
            }

            s.close();
            conn.close();
        } catch (Exception e) {
            // Handle errors for JDBC
            request.setAttribute("errorMessage", "Error: " + e.getMessage());
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        } finally {
            out.close();
        }
    }

}
