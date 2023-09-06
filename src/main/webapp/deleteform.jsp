<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="/flowerybouquet-web/assets/css/deleteform.css">
</head>
<body>

<h1>Product Delete Form</h1>
	<div class="Productform">
		<form action="DeleteProductServlet" >
			<label for="id">Product Id:</label> <input type="number" id="id"
			name="productid" required>
				<button>Delete</button>
		</form>
	</div>

</body>
</html>