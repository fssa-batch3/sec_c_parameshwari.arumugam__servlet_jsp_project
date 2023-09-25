<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Form</title>
<link rel="stylesheet"
	href="/flowerybouquet-web/assets/css/updateform.css">
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
		let success = "<%=success%>
		";
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

	<h1>update Product Form</h1>

	<form action="UpdateProductServlet" method="post">

		<label for="id">Product Id:</label> <input type="number" id="id"
			name="productid" required><br> <label for="name">Product
			Name:</label> <input type="text" id="name" name="name" required><br>
		<br> <label for="image">ProductImage URL:</label> <input
			type="text" id="image" name="image" required><br> <label
			for="price">Product price:</label> <input type="number" id="price"
			name="price" required><br> <label for="category"
			name="category">Category</label> <input type="text" id="category"
			name="category" /> <br> <input type="submit" value="Update">
	</form>

<script>
		let error = "<%=error%>
		";
		Notify.error(error);
	</script>

</body>
</html>