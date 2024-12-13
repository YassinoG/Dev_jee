package CRUD_books;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Cnx {

	public Cnx() {
		// TODO Auto-generated constructor stub
	}
	
	private static final String URL = "jdbc:postgresql://localhost:5432/jee";
    private static final String USER = "postgres";
    private static final String PASSWORD = "qd;in";

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);

}

}