<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="com.fssa.flowerybouquet.model.*"%>
	<%@page import="com.fssa.flowerybouquet.dao.ProductDao"%>
<%@page import="com.fssa.flowerybouquet.model.OrderDetail"%>
<%@page import="com.fssa.flowerybouquet.model.Order"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/asset/Style/Order/orderhistory.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0">
</head>
<body>

<%
	ArrayList<Order> orderDetails = (ArrayList<Order>) request.getAttribute("orderDetails");

	System.out.print(orderDetails + "got");
	%>
   
   <jsp:include page="/header.jsp"></jsp:include>

	<table>
		<thead>
			<tr>
			<th>Order id</th>
			<th>Order Total</th>
				<th>Product</th>
			
				<th>Product Name</th>
				<th>Order Date</th>
				
				<th>Delivery Address</th>
			</tr>
		</thead>
	</table>

	<div class="main_content">
	<%
			for (Order order : orderDetails) {
		
				for (OrderDetail product : order.getProductsList()) {
					
					Product products = ProductDao.getProductById(product.getProductId());
			%>
	
		<div class="content">
		 <h2 class="orderid"><%=order.getOrderId()%></h2>
		 <h4 class="rupees"><%=order.getTotalAmount()%></h4>
        <h3 class="order_date"><%=order.getOrderedDate()%></h3>
         <h6><%=products.getProductName()%></h6>
       <img class="flower" src="<%=products.getProductImageURL()%>">
         <p class="address"><%=order.getAddress()%></p>
         
       <button class="cancel">Cancel</button>
        

      </div>
      
<%
			}
			}
			%>

	</div>
	<!--  <script src="../../asset/js/orderhistory.js"></script> -->

</body>
</html>