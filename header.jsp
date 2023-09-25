<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.fssa.flowerybouquet.model.User"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<header>
		<h3>Flowery Bouquet</h3>
		<!-- <img id="logoflower" src="../asset/IMG/index/flowerlogo.png.png" alt="flower logo" width="100px" height="100px"> -->
		<div class="search">
			<img
				src="<%=request.getContextPath()%>/asset/IMG/home page/search.png"
				alt="the search bar is there" width="13px" height="13px"> <input
				type="name" placeholder="Search" id="name">
		</div>
		<div class="cart">
			<a href="<%=request.getContextPath()%>/OrderHistoryServlet">
				<i class="fa-solid fa-lock"></i>
			</a> <a href="<%=request.getContextPath()%>/ProfileServlet"> <i
				class="fa-solid fa-user"></i>
			</a> <a href="<%=request.getContextPath()%>/pages/Order/Cart.html"> <i
				class="fa-solid fa-cart-plus"></i>
			</a>
			<p id="cartcount"></p>
		</div>
	</header>
	<div class="navbar">
		<a href="home.jsp">Home</a>
		<div class="dropdown">
			<button class="dropbtn">Anniversary</button>
			<div class="dropdown-menu">
				<a
					href="<%=request.getContextPath()%>/UserProductListServlet?category=AnniversaryBouquet">Bouquet</a>
				<a
					href="<%=request.getContextPath()%>/UserProductListServlet?category=AnniversaryBouquetWithCake">Bouquet
					with cake</a>
			</div>
		</div>
		<div class="dropdown">
			<button class="dropbtn">Birthday</button>
			<div class="dropdown-menu">
				<a
					href="<%=request.getContextPath()%>/UserProductListServlet?category=BirthdayBouquet">Bouquet</a>
				<a
					href="<%=request.getContextPath()%>/UserProductListServlet?category=BirthdayBouquetWithCake">Bouquet
					with cake</a>
			</div>
		</div>
		<div class="dropdown">
			<button class="dropbtn">Flower</button>
			<div class="dropdown-menu">
				<a
					href="<%=request.getContextPath()%>/UserProductListServlet?category=RedBouquet">Red</a>
				<a
					href="<%=request.getContextPath()%>/UserProductListServlet?category=PinkBouquet">Pink</a>
				<a
					href="<%=request.getContextPath()%>/UserProductListServlet?category=YellowBouquet">Yellow</a>
				<a
					href="<%=request.getContextPath()%>/UserProductListServlet?category=MixedBouquet">Mixed</a>
			</div>
		</div>
		<a href="<%=request.getContextPath()%>/pages/Review.jsp">Review</a>


		<%
		String user = (String) session.getAttribute("loggedInEmail");
		boolean isLoginIn = user != null;

		if (isLoginIn != false) {
		%>
		<%
		} else {
		%>
		<a href="<%=request.getContextPath()%>/pages/login.jsp" id="login">Login</a>

		<%
		}
		%>

		<%
		String loggedInEmail = (String) session.getAttribute("loggedInEmail");
		%>





	</div>

</body>
</html>