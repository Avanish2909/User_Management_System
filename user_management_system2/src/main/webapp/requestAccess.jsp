<% HttpSession session2 = request.getSession(false);
	if(session2 == null || session2.getAttribute("username") == null){
		response.sendRedirect("login.jsp");
		return;
	}
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Request Access</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/LoginForm/requestAccess.css">
    
</head>
<body>

<!-- <h2>Request Access Form</h2> -->

<%-- Display error messages if any --%>
<%
    String error = request.getParameter("error");
    if ("invalidUserId".equals(error)) {
%>
        <p style="color:red;">Invalid User ID. Please enter a valid number.</p>
<%
    } else if ("numberFormat".equals(error)) {
%>
        <p style="color:red;">An error occurred while processing your request. Please try again.</p>
<%
    }
%>

<div class="sign-up-form">
		<img src="<%=request.getContextPath() %>/LoginForm/image/user.png">
		<h1>Request Access form</h1>

		<%-- Start the request access form --%>
		<form action="requestAccess" method="post">
		    
		    <label for="userId">User ID:</label>
		    <input type="text" id="userId" name="userId" required>
		    <br><br>
		
		    <label for="softwareId">Software ID:</label>
		    <input type="text" id="softwareId" name="softwareId" required>
		    <br><br>
		
		    <label for="accessType">Access Type:</label>
		    <select id="accessType" name="accessType" required>
		        <option value="Read">Read</option>
		        <option value="Write">Write</option>
		        <option value="Admin">Admin</option>
		    </select>
		    <br><br>
		
		    <label for="reason">Reason for Access:</label>
		    <textarea id="reason" name="reason" rows="4" cols="50" required></textarea>
		    <br><br>
		
		    <input type="submit" value="Submit Request">
		</form>
		
		<!-- Success Popup -->
	    <!-- <div class="popup-overlay" id="successPopup">
	        <div class="popup-box">
	            <button class="close-btn" onclick="closePopup()">×</button>
	            <h2>Request Access Form fill Successfully</h2>
	            <a href="login.jsp" class="login-btn">Login</a>
	        </div>
	    </div> -->
	
	    <!-- JavaScript to show popup -->
	     <!-- JavaScript to show and close popup -->
	    <!-- <script>
	        // Function to show the success popup
	        function showSuccessPopup() {
	            document.getElementById("successPopup").style.display = "flex";
	        }
	
	        // Function to close the popup
	        function closePopup() {
	            document.getElementById("successPopup").style.display = "none";
	        }
	    </script> -->
</div>
</body>
</html>

