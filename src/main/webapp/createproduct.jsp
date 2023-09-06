<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Create Form</title>
<link rel="stylesheet"
	href="/flowerybouquet-web/assets/css/productform.css">
</head>
<body>

	<h1>Product Create Form</h1>
	<div class="Productform">
		<form action="AddProductServlet" method="post">
			<label for="name">Product Name:</label> <input type="text" id="name"
				name="name" required><br> <br> <label for="image">ProductImage
				URL:</label> <input type="text" id="image" name="image" required><br>
			<label for="price">Product price:</label> <input type="number"
				id="price" name="price" required><br> <label
				for="category" name="category">Category</label> <input type="text"
				id="category" name="category" /> <br> 
				<button>Create</button>
		</form>
	</div>
</body>
</html>






