<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.fssa.flowerybouquet.model.Product"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Product Page</title>
<link rel="stylesheet" href="/flowerybouquet-web/assets/css/product.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer">
	<!-- Notify CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.css">
<!-- Notify Js script file -->
<script
	src="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.js">
	
</script>

</head>
<body>

<%
	String success = (String) request.getAttribute("success");
	if (success != null) {
	%>
	<script>
		let success = "<%=success%>";
		Notify.success(success);
	</script>
	<%
	}
	%>

	<%
	String error = (String) request.getAttribute("error");
	if (error != null) {
	%>
	
	<%
	}
	%>

	<header>
		<h3>Flowery Bouquet</h3>
		<div class="search">
			<input type="name" placeholder="Search" id="name">
		</div>
		<div class="cart">

			<i class="fa-solid fa-user"></i>

			<p id="cartcount"></p>
		</div>
	</header>
	<div class="content_box">
		<%
		List<Product> productList = (List<Product>) request.getAttribute("productList");

		if (productList != null && !productList.isEmpty()) {
		%>

		<%
		for (Product product : productList) {
		%>

		<div class="red">
			<img id="flower" src=<%=product.getProductImageURL()%>
				alt="undefined">
			<h2><%=product.getProductName()%></h2>
			<h3 class="price"><%=product.getProductPrice()%></h3>
			<button>Update</button>
			<button>Delete</button>
		</div>
		<%
		}
		%>

	</div>
	<%
	} else {
	%>
	<h1>No Product</h1>
	<%
	}
	%>
	
	<script>
		let error = "<%=error%>
		";
		Notify.error(error);
	</script>
</body>
</html>