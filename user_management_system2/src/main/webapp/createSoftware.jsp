<% 
    HttpSession session2 = request.getSession(false);
    if (session2 == null || session2.getAttribute("username") == null || !"Admin".equals(session2.getAttribute("role"))) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create Software</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/LoginForm/requestAccess.css">
    <!-- <style>
        /* Popup overlay */
        .popup-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            display: none; /* Hidden by default */
            justify-content: center;
            align-items: center;
        }

        /* Popup box */
        .popup-box {
            position: relative;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            width: 300px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        /* Popup text */
        .popup-box h2 {
            color: #4CAF50;
            margin-bottom: 10px;
        }

        /* Login button in popup */
        .popup-box .login-btn {
            background-color: #1c8adb;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            transition: background-color 0.3s;
        }

        .popup-box .login-btn:hover {
            background-color: #166dad;
        }

        /* Close button */
        .popup-box .close-btn {
            position: absolute;
            top: 10px;
            right: 10px;
            background: transparent;
            border: none;
            font-size: 16px;
            font-weight: bold;
            color: #333;
            cursor: pointer;
        }

        .popup-box .close-btn:hover {
            color: #000;
        }
    </style> -->
</head>
<body>
    <div class="sign-up-form">
		<img src="<%=request.getContextPath() %>/LoginForm/image/user.png">
		<h1>Create Software form</h1>

<!-- 	    <form action="createSoftware" method="post" onsubmit="event.preventDefault(); showSuccessPopup();">
 -->	        
 			<form action="createSoftware" method="post">
 			<label for="name">Software Name:</label>
	        <input type="text" id="name" name="name" required><br><br>
	        
	        <label for="description">Description:</label>
	        <textarea id="description" name="description"></textarea><br><br>
	        
	        <label>Access Levels:</label><br>
	        <input type="checkbox" name="access_levels" value="Read"> Read<br>
	        <input type="checkbox" name="access_levels" value="Write"> Write<br>
	        <input type="checkbox" name="access_levels" value="Admin"> Admin<br><br>
	        
	        <input type="submit" value="Create Software">
	    </form>
	    
	    <!-- Success Popup -->
	    <!-- Success Popup -->
	    <!-- <div class="popup-overlay" id="successPopup">
	        <div class="popup-box">
	            <button class="close-btn" onclick="closePopup()">×</button>
	            <h2>Successfully Created a Software</h2>
	            <a href="login.jsp" class="login-btn">Login</a>
	        </div>
	    </div>
	 -->
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
