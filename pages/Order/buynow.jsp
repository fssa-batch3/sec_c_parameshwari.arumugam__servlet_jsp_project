<%@page import="com.fssa.flowerybouquet.util.Logger"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.fssa.flowerybouquet.model.Product"%>
<%@page import="com.fssa.flowerybouquet.dao.ProductDao"%>
<%@page import="com.fssa.flowerybouquet.model.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="../../asset/Style/Order/Buy Now.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
</head>
<body>

	<%
	User user = (User) request.getSession().getAttribute("logInUserDetails");
	System.out.print(user);
	int productId = Integer.parseInt(request.getParameter("productId"));
	Product product = ProductDao.getProductById(productId);

	String userName = "";
	String email = "";
	String address = "";
	String phoneNumber = "";
	String city = "";
	String state = "";
	String pincode = "";
	if (user != null) {
		userName = user.getFirstName() + " " + user.getLastName();
		email = user.getEmail();
		address = user.getAddress() + " " + user.getCity() + " " + user.getState() + " " + user.getPincode();
		phoneNumber = user.getPhonenumber();
		Logger.info(userName);
		Logger.info(user.getFirstName());
	}
	%>
	<!--main start-->

	<img id="google1" src="../../asset/IMG/index/google-pay (1).png"
		width="50px" />
	<br />
	<img id="delivery1"
		src="../../asset/IMG/index/cash-on-delivery (1).png" width="50px" />
	<form
		action="<%=request.getContextPath()%>/OrderServlet?productId=<%=productId%>"
		id="buynow" method="post">
		<div>
			<div class="main">
				<h1>Place your Order Now</h1>
			</div>
			<div class="details">

				<label for="name">Name<input type="text" id="ntext"
					placeholder="name" value="<%=userName%>" required /></label><br /> <br />
				<label for="name">User Email<input type="email" id="email"
					placeholder="UserEmail" value="<%=email%>" disabled required /></label><br />
				<br /> <label for="number">Phone Number<input
					type="pnumber" id="pnumber" placeholder="PhoneNumber"
					value="<%=phoneNumber%>" required name="phoneNumber" /></label><br /> <br />
				<label for="name">Address<input type="text" id="aname"
					placeholder="address" value="<%=address%>" required name="address" /></label><br />
				<br />


			</div>
		</div>

		<div class="pay">
			<h3>Payment Method</h3>
			<label for="gpay" id="upi">UPI</label> <input class="payment_option"
				type="radio" id="gpay" name="paymethod" value="gpay" required />
		</div>
		<hr>
		<div class="pay2">
			<label for="delivery" id="cashdelivery">Cash on delivery</label> <input
				class="payment_option" type="radio" id="delivery" name="paymethod"
				value="cash-on-delivery" required />
		</div>
		<div class="maincont">
			<div class="prodiv"></div>
		</div>
		<!-- </div> -->

		<div id="total_price">
			<div class="price" id="order_amount">
				<h2>Price Details(1 item)</h2>
				<img id="flower" src="<%=product.getProductImageURL()%>" alt="">
				<h4><%=product.getProductName()%></h4>
				<h6 class="price"><%=product.getProductPrice()%></h6>
				<div class="total">
					<p id="total_count"></p>
				</div>
				<div class="order">
					<p id="total_count1"></p>
				</div>
				<button id="continue_btn" type="submit">Place Order</button>
			</div>
		</div>
	</form>
	<!-- main end -->


	<!--  <script src="../../asset/js/buy_now.js"></script>-->
</body>
</html>