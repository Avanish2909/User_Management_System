<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignUp</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/LoginForm/login.css">
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
	<!-- <form action="signup" method="post">
        Username: <input type="text" name="username" required><br>
        Password: <input type="password" name="password" required><br>
        <input type="submit" value="Sign Up">
    </form> -->
    
    <div class="sign-up-form">
		<img src="<%=request.getContextPath() %>/LoginForm/image/user.png">
		<h1>SignUp</h1>
		<form action="signup" method="post" >
			<div class="ipx1">
				<input type="text" name="username" class="input-box" placeholder="Your User Name">
				<div class="m1">
					<img src="<%=request.getContextPath() %>/LoginForm/image/users.png" style="width: 30px; height: 30px; top: -30px; left: 120px; position: relative;">
				</div>
				
			</div>
			<div class="ipx1">
				<input type="password" name="password" class="input-box" placeholder="Your Password">
				<div class="m1">
					<img src="<%=request.getContextPath() %>/LoginForm/image/lock.png" style="width: 30px; height: 25px; top: -33px; left: 120px; position: relative;">
				</div>
				
			</div>
			<p><span><input type="checkbox"></span>I agree to the terms of services</p>
			<button type="submit" class="signup-btn">Sign Up</button>
			<hr>
			<p>Already You have an account ? <a href="signup.jsp">Login_Acccont</a></p>
		</form>
		
		<!-- Success Popup -->
	    <!-- <div class="popup-overlay" id="successPopup">
	        <div class="popup-box">
	            <button class="close-btn" onclick="closePopup()">×</button>
	            <h2>Successfully SignUp</h2>
	            <a href="login.jsp" class="login-btn">Login</a>
	        </div>
	    </div>
	
	    JavaScript to show popup
	     JavaScript to show and close popup
	    <script>
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