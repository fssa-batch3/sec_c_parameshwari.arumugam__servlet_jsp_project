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


</head>
<body>
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

	<h1>update Product Form</h1>

	<form action="UpdateProductServlet" method="post">

		<label for="name">Product Name:</label> <input type="text" id="name"
			name="name" required><br> <br> <label for="image">ProductImage
			URL:</label> <input type="text" id="image" name="image" required><br>
		<label for="price">Product price:</label> <input type="number"
			id="price" name="price" required><br> <label
			for="category" name="category">Category</label> <input type="text"
			id="category" name="category" /> <br> <input type="submit"
			value="Update">
	</form>


</body>
</html>