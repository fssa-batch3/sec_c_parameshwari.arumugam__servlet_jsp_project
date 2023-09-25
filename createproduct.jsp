<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Create Form</title>
<link rel="stylesheet"
	href="/flowerybouquet-web/assets/css/productform.css">
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



	<h1>Product Create Form</h1>
	<div class="Productform">
		<form action="AddProductServlet" method="post">
			<label for="name">Product Name:</label> <input type="text" id="name"
				name="name"  autofocus required><br> <br> <label
				for="image">ProductImage URL:</label> <input type="text" id="image"
				name="image" required><br> <label for="price">Product
				price:</label> <input type="number" id="price" name="price" required><br>
			<label for="category" name="category">Category</label> <input
				type="text" id="category" name="category" required /> <br>
			<button>Create</button>
		</form>
	</div>
	
	<script>
		let error = "<%=error%>";
		Notify.error(error);
	</script>
</body>
</html>






