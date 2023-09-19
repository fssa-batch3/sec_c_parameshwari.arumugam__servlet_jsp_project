<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="./asset/Style/Index.css">
</head>
<body>


	<form action="SignupServlet" method="post">
		<img id="flo" src="asset/IMG/index/sign up.jpg" alt="">
		<div class="login">
			<h2>Sign up</h2>
			<input type="text" name="first_name" id="first_name"
				pattern="[A-Za-z]{1,24}" title=" username is cannot contain space"
				placeholder=" FirstName" required> <br> <br> <input
				type="text" name="last_name" id="last_name" pattern="[A-Za-z]{1,24}"
				title="username is cannot contain space" placeholder=" LastName"
				required> <br> <br> <input type="email"
				name="email" id="email" placeholder="E-mail"
				pattern="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9-]{2,}[.][a-zA-Z]{2,4}$"
				required> <br> <br> <input type="password"
				name="password" id="password" placeholder="Password"
				pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,16}$"
				minlength="8" maxlength="16" required> <br> <br>
			<p>
				Already have a account?<a href="./pages/login.jsp">login</a>
			</p>
			<button type="submit">Sign up</button>
		</div>
	</form>

	<script src="asset/js/signin.js"></script>
	<script src="asset/js/main.js"></script>


</body>
</html>