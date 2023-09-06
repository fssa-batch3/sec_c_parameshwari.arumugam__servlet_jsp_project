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
			<i id="star" class="fa-regular fa-star"></i><i id="star"
				class="fa-regular fa-star"></i><i id="star"
				class="fa-regular fa-star"></i><i id="star"
				class="fa-regular fa-star"></i><i id="star"
				class="fa-regular fa-star"></i>
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

</body>
</html>