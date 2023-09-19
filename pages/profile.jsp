<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="../asset/Style/profile.css"/>
</head>
<body>
	<form action="" id="profilepage">
		<div class="profile">
			<a href="../pages/Home.html"><i id="back"
				class="fa-sharp fa-solid fa-arrow-left"></i></a>
			<h1>Profile Page</h1>
			<div class="names">
				<input type="text" name="firstname" placeholder=" FirstName"
					id="first_name" class="text" pattern="[A-Za-z]{1,24}"
					title="username is cannot contain space" /><br />
				<br /> <input type="text" name="lastname" placeholder=" LastName"
					id="last_name" class="text" pattern="[A-Za-z]{1,24}"
					title="username is cannot contain space" /><br />
				<br /> <input name="email" type="email" placeholder="E-mail"
					id="email" /><br />
				<br /> <input name="date_of_birth" type="date" placeholder="DOB"
					id="date_of_birth" /><br />
				<br /> <input type="tel" id="phone_number" name="phone"
					placeholder="phone number" pattern="^[6-9][0-9]{9}$" required><br>
				<br> <input type="text" name="text" placeholder="address"
					id="address" class="text" pattern="[a-zA-Z0-9\s\-\,\#]+" required /><br>
				<br> <input type="text" name="text" placeholder="city"
					id="city" class="text" pattern="[A-Za-z]{1,24}" required /><br>
				<br> <input type="text" name="text" placeholder="state"
					id="state" class="text" pattern="[A-Za-z]{1,30}" required /><br>
				<br> <input type="text" name="pin" placeholder="pincode"
					id="pincode" class="text" pattern="[0-9]{6}" maxlength="6" required /><br>
				<br>
			</div>
			<button type="submit">save</button>
			<button type="button" onclick="delete_profile()">Delete</button>


			<img src="../asset/IMG/home page/profile2.jpg" alt="empty profile" />
		</div>
	</form>

	<a href="<%=request.getContextPath()%>/LogoutServlet">
		<button>Log Out</button>
	</a>
	<script src="../asset/js/profile.js"></script>
</body>
</html>