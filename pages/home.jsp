<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flowery Bouquet Home Page</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/asset/Style/Home.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0">
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<div class="main">
		<img id="back"
			src="<%=request.getContextPath()%>/asset/IMG/index/flowers-bouquet-.jpg"
			alt="they are diffrent flower" width="1480px" height="350px">
		<div class="txt">
			<h1>Flowery Bouquet</h1>
		</div>
		<div class="txt1">
			<h2>
				LOVE BEINGS WITH<br>SOME FLOWERS
			</h2>
		</div>

	</div>
	<div class="main_box">
		<!-- <div class="sample">
       <div class="mixed">
           <a href="../pages/Mixed Bouquet"><img id="flower" src="..\asset\IMG\index\mixed.webp" alt="" "></a>
            <h2>Anniversary Bouquet</h2>
       </div>
       <div claas="cake">
           <img id="flower" src="..\asset\IMG\index\cake with flower.jpeg" alt=""  width="300px" height="300px">
            <h2>Birthday Cake With<br> Bouquet</h2>
       </div>
       <div class="red">
            <img  id="flower" src="..\asset\IMG\index\red.jpg" alt=""  width="300px" height="300px">
            <h2>Red Rose Bouquet</h2>
        </div>
        <div class="black">
            <img  id="flower"src="..\asset\IMG\index\blackforest.webp" alt="" width="300px" height="300px">
            <h2>Anniversary Bouquet With<br>cake</h2>
        </div>
     </div>
     <div class="example">
      <div class="yellow">
            <img  id="flower" src="..\asset\IMG\index\yellow.jpg" alt="" width="300px" height="300px">
            <h2>Yellow Bouquet</h2>
       </div>
       <div class="birth">
              <img  id="flower" src="..\asset\IMG\index\birthday.jpg" alt="" width="300px" height="300px">
            <h2>Birthday Bouquet</h2>
       </div>
       <div class="pink">
            <img  id="flower" src="..\asset\IMG\index\pink.jpg" alt="" width="300px" height="300px">
            <h2>Pink Bouquet</h2> 
       </div>      
       <div class="white">
           <img  id="flower" src="..\asset\IMG\index\white.jpg" alt="" width="300px" height="300px">
           <h2>White Rose Bouquet</h2>
       </div> -->
	</div>
	<footer>
		<div class="icon">
			<h3>Flowery Bouquet</h3>
			<h4>
				Feel Free to follow Us on our social<br> media handless all the
				links are<br> given below.
			</h4>
			<a href="https://www.facebook.com"> <Img
				src="<%=request.getContextPath()%>\asset\IMG\index\fb.png" alt=""
				width="30px" height="30px">
			</a> <a href="https://www.twitter.com"> <Img
				src="<%=request.getContextPath()%>\asset\IMG\index\twitter icon.png"
				alt="" width="30px" height="30px">
			</a> <a href="https://www.whatsapp.com"> <Img
				src="<%=request.getContextPath()%>\asset\IMG\index\whatsapp.png"
				alt="" width="30px" height="30px">
			</a> <a href="https://www.instagram.com"> <Img
				src="<%=request.getContextPath()%>\asset\IMG\index\insta icon.png"
				alt="" width="30px" height="30px">
			</a>
		</div>
		<div class="contact">
			<h3>Contact Info</h3>
			<p>+ 123-456-7890</p>
			<p>+111-222-3333</p>
			<p>Example@Gmail.com</p>
			<p>Chennai,India-600096</p>
		</div>
		<div class="links">
			<h3>Quick Links</h3>
			<div class="quick">
				<a href="<%=request.getContextPath()%>/Home.jsp">Home</a> <a
					href="<%=request.getContextPath()%>/pages/create.html">Anniversary</a>
				<a href="#">Birthday</a> <a href="#">Flower</a> <a href="#">Review</a>
			</div>
		</div>
		<div class="pay">
			<h3>Payment method</h3>
			<h4>All payment available</h4>
			<img
				src="<%=request.getContextPath()%>\asset\IMG\index\visa logo.png"
				alt="" width="50px" height="30px"></a> <img
				src="<%=request.getContextPath()%>\asset\IMG\index\rupay.png" alt=""
				width="50px" height="30px"></a> <img
				src="<%=request.getContextPath()%>\asset\IMG\index\paytm logo.png"
				alt="" width="50px" height="30px"></a> <img
				src="<%=request.getContextPath()%>\asset\IMG\index\mastercard.png"
				alt="" width="50px" height="30px"></a>
		</div>
	</footer>
	<!--  <script src="../asset/js/home.js">
		
	</script>-->





</body>
</html>