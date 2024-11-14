<% 
    HttpSession session2 = request.getSession(false);
    if (session2 == null || session2.getAttribute("username") == null || !"Manager".equals(session2.getAttribute("role"))) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, util.DatabaseConnection" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Pending Requests</title>
</head>
<body>
    <h2>Pending Access Requests</h2>

    <!-- Display success or error message if redirected from ApprovalServlet -->
    <% 
        String success = request.getParameter("success");
        String error = request.getParameter("error");
        if (success != null) { 
    %>
        <p style="color:green;"><%= success %></p>
    <% 
        } else if (error != null) { 
    %>
        <p style="color:red;"><%= error %></p>
    <% 
        } 
    %>

    <!-- Table to display pending access requests -->
    <table border="1">
        <tr>
            <th>Employee</th>
            <th>Software</th>
            <th>Access Type</th>
            <th>Reason</th>
            <th>Action</th>
        </tr>

        <%
            // Fetch pending requests from the database
            try (Connection conn = DatabaseConnection.getConnection()) {
                String sql = "SELECT r.id, u.username AS employee, s.name AS software, r.access_type, r.reason " +
                             "FROM requests r " +
                             "JOIN users u ON r.user_id = u.id " +
                             "JOIN software s ON r.software_id = s.id " +
                             "WHERE r.status = 'Pending'";
                PreparedStatement stmt = conn.prepareStatement(sql);
                ResultSet rs = stmt.executeQuery();

                // Iterate through the result set and display each pending request
                while (rs.next()) {
                    int requestId = rs.getInt("id");
                    String employee = rs.getString("employee");
                    String software = rs.getString("software");
                    String accessType = rs.getString("access_type");
                    String reason = rs.getString("reason");
        %>
                    <tr>
                        <td><%= employee %></td>
                        <td><%= software %></td>
                        <td><%= accessType %></td>
                        <td><%= reason %></td>
                        <td>
                            <form action="approveRequest" method="post">
                                <input type="hidden" name="requestId" value="<%= requestId %>">
                                <input type="submit" name="action" value="approve">
                                <input type="submit" name="action" value="reject">
                            </form>
                        </td>
                    </tr>
        <%
                }
            } catch (SQLException e) {
                e.printStackTrace();
        %>
                <p style="color:red;">Error loading pending requests. Please try again later.</p>
        <%
            }
        %>
    </table>
</body>
</html>
