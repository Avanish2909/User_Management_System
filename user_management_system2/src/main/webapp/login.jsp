<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<!-- Link to login.css file -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/LoginForm/login.css">
    
</head>
<body>
	<!-- <form action="login" method="post">
        Username: <input type="text" name="username" required><br>
        Password: <input type="password" name="password" required><br>
        <input type="submit" value="Login">
    </form>
    <a href="signup.jsp">signup</a> -->
    
    <div class="sign-up-form">
		<img src="<%=request.getContextPath() %>/LoginForm/image/user.png">
		<h1>Login</h1>
		<form action="login" method="post">
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
			<button type="submit" class="signup-btn">Login</button>
			<hr>
			<p>Don't have an account ? <a href="signup.jsp">Register_Acccont</a></p>
		</form>
	</div>
</body>
</html>