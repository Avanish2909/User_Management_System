package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import util.DatabaseConnection;


public class RequestServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Retrieve form data from requestAccess.jsp
        String userIdStr = request.getParameter("userId");
        String softwareIdStr = request.getParameter("softwareId");
        String accessType = request.getParameter("accessType");
        String reason = request.getParameter("reason");

        int userId;
        int softwareId;

        try {
            // Parse userId and softwareId as integers
            userId = Integer.parseInt(userIdStr);
            softwareId = Integer.parseInt(softwareIdStr);

            // Get database connection
            Connection conn = DatabaseConnection.getConnection();

            // SQL query to insert request details into the requests table
            String sql = "INSERT INTO requests (user_id, software_id, access_type, reason, status) VALUES (?, ?, ?, ?, ?)";

            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setInt(1, userId);
                stmt.setInt(2, softwareId);
                stmt.setString(3, accessType);
                stmt.setString(4, reason);
                stmt.setString(5, "Pending"); // Set initial status to "Pending"

                // Execute update
                int rowsInserted = stmt.executeUpdate();
                if (rowsInserted > 0) {
                    response.sendRedirect("requestAccess.jsp?success=1"); // Redirect to indicate success
                } else {
                    out.println("<h2>Failed to submit access request.</h2>");
                }
            }

        } catch (NumberFormatException e) {
            e.printStackTrace();
            response.sendRedirect("requestAccess.jsp?error=invalidUserId");

        } catch (SQLException e) {
            e.printStackTrace();
            out.println("<h2>Error: " + e.getMessage() + "</h2>");
        }
    }
}