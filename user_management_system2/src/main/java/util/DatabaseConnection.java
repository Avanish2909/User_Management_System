package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    private static final String URL = "jdbc:postgresql://localhost:5432/user_management_system_db";
    private static final String USER = "postgres";
    private static final String PASSWORD = "Avanish@2606";

    static {
        try {
            // Load the PostgreSQL driver
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            throw new RuntimeException("Failed to load PostgreSQL driver.");
        }
    }

    public static Connection getConnection() throws SQLException {
        // Return a new database connection
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}