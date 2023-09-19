<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
			<a href="<%=request.getContextPath()%>/pages/Order/orderhistory.html">
				<i class="fa-solid fa-lock"></i>
			</a> <a href="<%=request.getContextPath()%>/pages/profile.jsp"> <i
				class="fa-solid fa-user"></i>
			</a> <a href="<%=request.getContextPath()%>/Order/Cart.html"> <i
				class="fa-solid fa-cart-plus"></i>
			</a>
			<p id="cartcount"></p>
		</div>
	</header>
	<div class="navbar">
		<a href="Home.html">Home</a>
		<div class="dropdown">
			<button class="dropbtn">Anniversary</button>
			<div class="dropdown-menu">
				<a
					href="<%=request.getContextPath()%>/pages/Anniversary/Anni-bouquet.html">Bouquet</a>
				<a href="../pages/Anniversary/Anni with Cake.html">Bouquet with
					cake</a>
			</div>
		</div>
		<div class="dropdown">
			<button class="dropbtn">Birthday</button>
			<div class="dropdown-menu">
				<a href="<%=request.getContextPath()%>/pages/Birthday/Bouquet.html">Bouquet</a> <a
					href="<%=request.getContextPath()%>/pages/Birthday/Birth with cake.html">Bouquet with cake</a>
			</div>
		</div>
		<div class="dropdown">
			<button class="dropbtn">Flower</button>
			<div class="dropdown-menu">
				<a href="../pages/Red Bouquet/Red.html">Red</a> <a
					href="../pages/Pink Bouquet/Pink.html">Pink</a> <a
					href="../pages/Yellow Bouquet/Yellow.html">Yellow</a> <a
					href="../pages/Mixed Bouquet/Mixed.html">Mixed</a>
			</div>
		</div>
		<a href="../pages/Review.html">Review</a>
		<a href="./pages/login.jsp" id="login">Login</a>

		<%
		String loggedInEmail = (String) session.getAttribute("loggedInEmail");
		
		
		%>

		<script>
        const loggedEmail = "<%=loggedInEmail%>";
      
         const loginbut= document.getElementById("login");
         
		if (loggedEmail != null) {
			loginbut.style.display="none";
		} else {
			loginbut.style.display="block";
		}
	</script>
		

	</div>

</body>
</html>