package controller;




import jakarta.annotation.security.RolesAllowed;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import util.DatabaseConnection;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class SoftwareServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String softwareName = request.getParameter("name");
        String description = request.getParameter("description");
        String accessLevels = String.join(", ", request.getParameterValues("access_levels"));

        try (Connection conn = DatabaseConnection.getConnection()) {
            String sql = "INSERT INTO software (name, description, access_levels) VALUES (?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, softwareName);
            statement.setString(2, description);
            statement.setString(3, accessLevels);
            statement.executeUpdate();

            response.sendRedirect("createSoftware.jsp?success=Software added successfully");
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("createSoftware.jsp?error=Unable to add software");
        }
    }
}
