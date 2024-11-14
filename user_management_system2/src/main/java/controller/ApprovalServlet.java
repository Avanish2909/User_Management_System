package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import util.DatabaseConnection;

public class ApprovalServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Retrieve form parameters
            int requestId = Integer.parseInt(request.getParameter("requestId"));  // Updated to match form
            String action = request.getParameter("action");

            // Determine status based on action
            String status = action.equals("approve") ? "Approved" : "Rejected";

            // Update request status in the database
            try (Connection conn = DatabaseConnection.getConnection()) {
                String sql = "UPDATE requests SET status = ? WHERE id = ?";
                PreparedStatement statement = conn.prepareStatement(sql);
                statement.setString(1, status);
                statement.setInt(2, requestId);
                statement.executeUpdate();
            }

            // Redirect with success message
            response.sendRedirect("pendingRequests.jsp?success=Request processed successfully");
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("pendingRequests.jsp?error=Unable to process request");
        } catch (NumberFormatException e) {
            e.printStackTrace();
            response.sendRedirect("pendingRequests.jsp?error=Invalid request ID");
        }
    }
}