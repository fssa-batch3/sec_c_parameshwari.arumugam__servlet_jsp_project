<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

    <link rel="stylesheet" href="../asset/Style/login.css">
</head>
<body>
	<form action="../FloweryLoginServlet" id="loginform" method="post">
		<img id="flo" src="../asset/IMG/index/login.jpg" alt="">
		<div class="login">
			<h2>Login</h2>
			<input name="email" type="email" placeholder="E-mail" id="email"
				pattern="^[a-zA-Z0-9][a-zA-Z0-9._%+-]*@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$">
			<br> <br> <input name="password" type="password"
				placeholder="Password" id="password"> <br> <a
				href="../signup.jsp"><h3>Create Account</h3></a> <br>
			<button type="submit" id="login">Login</button>
		</div>
	</form>
	<script src="../../asset/js/login.js"></script>
</body>
</html>