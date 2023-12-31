<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.fssa.flowerybouquet.model.Product"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/asset/Style/Anniversary/Anni bouquet.Css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0">
</head>
<body>

	<jsp:include page="/header.jsp"></jsp:include>


	<!-- </div> <div class="main-content">
     <div class="box1">
        <a href="Red Rose bouquet.html"><img id="flower" src="../asset/IMG/anniversary bouquet/red.webp" alt="" width="300px" height="300px"></a>
        <div class="color">
           <h2>Red Rose Bouquet</h2>
            <h3><span class="material-symbols-outlined">
            currency_rupee
            </span>900</h3>
            <div class="all">
                <i  id="star" class="fa-regular fa-star"></i>
                <i id="star" class="fa-regular fa-star"></i>
                <i id="star" class="fa-regular fa-star"></i>
                <i id="star"class="fa-regular fa-star"></i>
                <i  id="star" class="fa-regular fa-star"></i>
            </div>
         </div>
     </div>
     <div class="box2">
        <img id="flower" src="../asset/IMG/anniversary bouquet/light pink.jpg" alt="" width="300px" height="300px">
          <div class="color">
              <h2>Love Rose Bouquet</h2>
              <h3><span class="material-symbols-outlined">
              currency_rupee
              </span>700</h3>
              <div class="all">
                  <i  id="star" class="fa-regular fa-star"></i>
                  <i id="star" class="fa-regular fa-star"></i>
                  <i id="star" class="fa-regular fa-star"></i>
                  <i class="fa-regular fa-star"></i>
                  <i  class="fa-regular fa-star"></i>
              </div>
          </div>
      </div>
      <div class="box3">
        <img id="flower" src="../asset/IMG/anniversary bouquet/basket.jpg" alt="" width="300px" height="300px">
          <div class="color">
              <h2>Basket Rose Bouquet</h2>
              <h3><span class="material-symbols-outlined">
              currency_rupee
              </span>500</h3>
              <div class="all">
                  <i  id="star" class="fa-regular fa-star"></i>
                  <i id="star" class="fa-regular fa-star"></i>
                  <i id="star" class="fa-regular fa-star"></i>
                  <i id="star"class="fa-regular fa-star"></i>
                  <i   class="fa-regular fa-star"></i>
              </div>
          </div>
      </div>
      <div class="box4">
        <img id="flower" src="../asset/IMG/anniversary bouquet/yellow roses.jpg" alt="" width="300px" height="300px">
          <div class="color">
              <h2>Yellow Rose Bouquet</h2>
              <h3><span class="material-symbols-outlined">
              currency_rupee
              </span>1000</h3>
              <div class="all">
                  <i  id="star" class="fa-regular fa-star"></i>
                  <i id="star" class="fa-regular fa-star"></i>
                  <i id="star" class="fa-regular fa-star"></i>
                  <i id="star"class="fa-regular fa-star"></i>
                  <i  id="star" class="fa-regular fa-star"></i>
              </div>
          </div>
      </div>
      </div>
     <div class="main-content1">
     <div class="box5">
         <img id="flower" src="../asset/IMG/anniversary bouquet/dark pink.webp" alt="" width="300px" height="300px">
          <div class="color">
              <h2>Pink  Bouquet</h2>
              <h3><span class="material-symbols-outlined">
              currency_rupee
              </span>1200</h3>
              <div class="all">
                  <i  id="star" class="fa-regular fa-star"></i>
                  <i id="star" class="fa-regular fa-star"></i>
                  <i id="star" class="fa-regular fa-star"></i>
                  <i id="star"class="fa-regular fa-star"></i>
                  <i  id="star" class="fa-regular fa-star"></i>
              </div>
          </div>
      </div>
      <div class="box6">
         <img id="flower" src="../asset/IMG\anniversary bouquet/maroon.jpg" alt="" width="300px" height="300px">
          <div class="color">
              <h2>Maroon Rose Bouquet</h2>
              <h3><span class="material-symbols-outlined">
              currency_rupee
              </span>800</h3>
              <div class="all">
                  <i  id="star" class="fa-regular fa-star"></i>
                  <i id="star" class="fa-regular fa-star"></i>
                  <i id="star" class="fa-regular fa-star"></i>
                  <i id="star"class="fa-regular fa-star"></i>
                  <i  class="fa-regular fa-star"></i>
              </div>
          </div>
      </div>
      <div class="box7">
         <img id="flower" src="../asset/IMG/anniversary bouquet/white.jpg" alt="" width="300px" height="300px">
          <div class="color">
              <h2>White Love Bouquet</h2>
              <h3><span class="material-symbols-outlined">
              currency_rupee
              </span>600</h3>
              <div class="all">
                  <i  id="star" class="fa-regular fa-star"></i>
                  <i id="star" class="fa-regular fa-star"></i>
                  <i id="star" class="fa-regular fa-star"></i>
                  <i class="fa-regular fa-star"></i>
                  <i   class="fa-regular fa-star"></i>
              </div>
          </div>
      </div>
      <div class="box8">
         <img id="flower" src="../asset/IMG/anniversary bouquet/love bouquet.webp" alt="" width="300px" height="300px">
          <div class="color">
              <h2>Love Bouquet</h2>
              <h3><span class="material-symbols-outlined">
              currency_rupee
              </span>1100</h3>
              <div class="all">
                  <i  id="star" class="fa-regular fa-star"></i>
                  <i id="star" class="fa-regular fa-star"></i>
                  <i id="star" class="fa-regular fa-star"></i>
                  <i id="star"class="fa-regular fa-star"></i>
                  <i class="fa-regular fa-star"></i>
              </div>
          </div>
      </div>
     </div>
     <div class="main-content2">
      <div class="box9">
         <img id="flower" src="../asset/IMG/anniversary bouquet/12 rose.webp" alt="" width="300px" height="300px">
         <div class="color">
             <h2>12 Rose Bouquet</h2>
             <h3><span class="material-symbols-outlined">
             currency_rupee
             </span>1250</h3>
             <div class="all">
                 <i  id="star" class="fa-regular fa-star"></i>
                 <i id="star" class="fa-regular fa-star"></i>
                 <i id="star" class="fa-regular fa-star"></i>
                 <i id="star"class="fa-regular fa-star"></i>
                 <i  id="star" class="fa-regular fa-star"></i>
             </div>
         </div>
     </div>
     <div class="box10">
        <img id="flower" src="../asset/IMG/anniversary bouquet/pink.jpeg" alt="" width="300px" height="300px">
         <div class="color">
             <h2>Lovely Pink Bouquet</h2>
             <h3><span class="material-symbols-outlined">
             currency_rupee
             </span>850</h3>
             <div class="all">
                 <i  id="star" class="fa-regular fa-star"></i>
                 <i id="star" class="fa-regular fa-star"></i>
                 <i id="star" class="fa-regular fa-star"></i>
                 <i id="star"class="fa-regular fa-star"></i>
                 <i class="fa-regular fa-star"></i>
             </div>
         </div>
     </div>
     <div class="box11">
        <img id="flower" src="../asset/IMG/anniversary bouquet/bunch.jpg" alt="" width="300px" height="300px">
         <div class="color">
             <h2>Bunch Rose Bouquet</h2>
             <h3><span class="material-symbols-outlined">
             currency_rupee
             </span>500</h3>
             <div class="all">
                 <i  id="star" class="fa-regular fa-star"></i>
                 <i id="star" class="fa-regular fa-star"></i>
                 <i id="star" class="fa-regular fa-star"></i>
                 <i class="fa-regular fa-star"></i>
                 <i class="fa-regular fa-star"></i>
             </div>
         </div>
     </div>
     <div class="box12">
         <img id="flower" src="../asset/IMG/anniversary bouquet/crazy love.jpg" alt="" width="300px" height="300px">
         <div class="color">
             <h2> Crazy Love Bouquet</h2>
             <h3><span class="material-symbols-outlined">
             currency_rupee
             </span>900</h3>
             <div class="all">
                 <i  id="star" class="fa-regular fa-star"></i>
                 <i id="star" class="fa-regular fa-star"></i>
                 <i id="star" class="fa-regular fa-star"></i>
                 <i id="star"class="fa-regular fa-star"></i>
                 <i class="fa-regular fa-star"></i>
             </div>
         </div>
      </div> -->



	<div class="content_box">
		<%
		List<Product> productList = (List<Product>) request.getAttribute("productList");

		if (productList != null && !productList.isEmpty()) {

			for (Product product : productList) {
		%>

		<div class="red">
			<a href="ProductDetailsServlet?id=<%=product.getProductId()%>">
				<img id="flower" src="<%=product.getProductImageURL()%>"
				alt="Product Image">
			</a>
			<h2><%=product.getProductName()%></h2>
			<h3 class="price"><%=product.getProductPrice()%></h3>
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

	<footer>
		<div class="icon">
			<h3>Flowery Bouquet</h3>
			<h4>
				Feel Free to follow Us on our social<br> media handless all the
				links are<br> given below.
			</h4>
			<a href="https://www.facebook.com"> <Img
				src="<%=request.getContextPath()%>/asset/IMG\index/fb.png" alt=""
				width="30px" height="30px">
			</a> <a href="https://www.twitter.com"> <Img
				src="<%=request.getContextPath()%>/asset/IMG/index/twitter icon.png"
				alt="" width="30px" height="30px">
			</a> <a href="https://www.whatsapp.com"> <Img
				src="<%=request.getContextPath()%>/asset/IMG/index/whatsapp.png"
				alt="" width="30px" height="30px">
			</a> <a href="https://www.instagram.com"> <Img
				src="<%=request.getContextPath()%>/asset/IMG/index/insta icon.png"
				alt="" width="30px" height="30px">
			</a>
		</div>
		<div class="contact">
			<h3>Contact Info</h3>
			<p>+ 123-456-7890</p>
			<p>+111-222-3333</p>
			<p>Example@Gmail.com</p>
			<p>Chennai,india-600096</p>
		</div>
		<div class="links">
			<h3>Quick Links</h3>
			<a href="Home.html">Home</a> <a
				href="<%=request.getContextPath()%>/pages/Order/payment.html">Anniversary</a>
			<a href="#">Birthday</a> <a href="#">Flower</a> <a href="#">Review</a>
		</div>
		<div class="pay">
			<h3>Payment method</h3>
			<h4>All payment available</h4>
			<img
				src="<%=request.getContextPath()%>/asset/IMG\index/visa logo.png"
				alt="" width="50px" height="30px"></a> <img
				src="<%=request.getContextPath()%>/asset/IMG/index/rupay.png"
				alt="" width="50px" height="30px"></a> <img
				src="<%=request.getContextPath()%>/asset/IMG/index/paytm logo.png"
				alt="" width="50px" height="30px"></a> <img
				src="<%=request.getContextPath()%>/asset\IMG/index/mastercard.png"
				alt="" width="50px" height="30px"></a>
		</div>
	</footer>

	<!--  <script src="../../asset/js/anni_bouquet.js"></script> -->

</body>
</html>