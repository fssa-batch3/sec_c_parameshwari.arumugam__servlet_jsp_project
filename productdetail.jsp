<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.fssa.flowerybouquet.model.Product"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="/flowerybouquet-web/assets/css/productdetail.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0">
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>

	<%
	Product product = (Product) request.getAttribute("product");
	%>
<legend>
	<div class="red">
		<img id="flower" src=<%=product.getProductImageURL()%> alt="undefined">
		<h1><%=product.getProductName()%></h1>
		<h6 class="price"><%=product.getProductPrice()%></h6>

		<button id="buy_now">Add to cart</button>
		<a href="<%=request.getContextPath()%>\pages\Order\buynow.jsp?productId=<%=product.getProductId()%>"><button id="buy_now"
				class="buy_now">Buy Now</button></a>
	</div>
</legend>
	<footer>
		<div class="icon">
			<h3>Flowery Bouquet</h3>
			<h4>
				Feel Free to follow Us on our social<br> media handless all the
				links are<br> given below.
			</h4>
			<a href="https://www.facebook.com"> <Img
				src="<%=request.getContextPath()%>\asset\IMG\index\fb.png" alt=""
				width="30px" height="30px">
			</a> <a href="https://www.twitter.com"> <Img
				src="<%=request.getContextPath()%>\asset\IMG\index\twitter icon.png"
				alt="" width="30px" height="30px">
			</a> <a href="https://www.whatsapp.com"> <Img
				src="<%=request.getContextPath()%>\asset\IMG\index\whatsapp.png"
				alt="" width="30px" height="30px">
			</a> <a href="https://www.instagram.com"> <Img
				src="<%=request.getContextPath()%>\asset\IMG\index\insta icon.png"
				alt="" width="30px" height="30px">
			</a>
		</div>
		<div class="contact">
			<h3>Contact Info</h3>
			<p>+ 123-456-7890</p>
			<p>+111-222-3333</p>
			<p>Example@Gmail.com</p>
			<p>Chennai,India-600096</p>
		</div>
		<div class="links">
			<h3>Quick Links</h3>
			<div class="quick">
				<a href="<%=request.getContextPath()%>/Home.jsp">Home</a> <a
					href="<%=request.getContextPath()%>/pages/create.html">Anniversary</a>
				<a href="#">Birthday</a> <a href="#">Flower</a> <a href="#">Review</a>
			</div>
		</div>
		<div class="pay">
			<h3>Payment method</h3>
			<h4>All payment available</h4>
			<img
				src="<%=request.getContextPath()%>\asset\IMG\index\visa logo.png"
				alt="" width="50px" height="30px"></a> <img
				src="<%=request.getContextPath()%>\asset\IMG\index\rupay.png" alt=""
				width="50px" height="30px"></a> <img
				src="<%=request.getContextPath()%>\asset\IMG\index\paytm logo.png"
				alt="" width="50px" height="30px"></a> <img
				src="<%=request.getContextPath()%>\asset\IMG\index\mastercard.png"
				alt="" width="50px" height="30px"></a>
		</div>
	</footer>
</body>
</html>