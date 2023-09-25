<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/asset/Style/Review.Css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0">
</head>
<body>
    
    <header>
        <h5>Flowery Bouquet</h5> 
        <div class="search">
            <img src="../asset/IMG/home page/search.png" alt="" width="13px" height="13px">
            <input type="name" placeholder="Search" id="name">
        </div> 
        <div class="cart">
         <a href="<%=request.getContextPath()%>/pages/Order/orderhistory.jsp">
           <i class="fa-solid fa-lock"></i>
         </a>
         <a href="<%=request.getContextPath()%>/pages/profile.jsp">
           <i class="fa-solid fa-user"></i>
        </a>
         <a href="<%=request.getContextPath()%>/Order/Cart.html">
           <i class="fa-solid fa-cart-plus"></i>
         </a>
         <p id="cartcount"></p>
    </header>
    <div class="navbar">
        <a href="<%=request.getContextPath()%>/home.jsp">Home</a>
        <div class="dropdown">
          <button class="dropbtn">Anniversary</button>
          <div class="dropdown-menu">
             <a href="<%=request.getContextPath()%>/UserProductListServlet?category=AnniversaryBouquet">Bouquet</a>
              <a href="<%=request.getContextPath()%>/UserProductListServlet?category=AnniversaryBouquetWithCake">Bouquet with cake</a>
           </div>
       </div>
       <div class="dropdown">
         <button class="dropbtn">Birthday</button>
         <div class="dropdown-menu">
             <a href="<%=request.getContextPath()%>/UserProductListServlet?category=BirthdayBouquet">Bouquet</a>
             <a href="<%=request.getContextPath()%>/UserProductListServlet?category=BirthdayBouquetWithCake">Bouquet with cake</a>
         </div>
      </div>
       <div class="dropdown">
         <button class="dropbtn">Flower</button>
         <div class="dropdown-menu">
            <a href="<%=request.getContextPath()%>/UserProductListServlet?category=RedBouquet">Red</a>
             <a href="<%=request.getContextPath()%>/UserProductListServlet?category=PinkBouquet">Pink</a>
             <a href="<%=request.getContextPath()%>/UserProductListServlet?category=YellowBouquet">Yellow</a>
              <a href="<%=request.getContextPath()%>/UserProductListServlet?category=MixedBouquet">Mixed</a>
           </div>
        </div>
       <a href="<%=request.getContextPath()%>/pages/Review.jsp">Review</a>
    </div>
    
    <h2>Customer Review</h2>
    <div class="customer-part">
      <div class="review1">
           <h3>S</h3>
          <h4>Shabana</h4>
          <div class="all">
            <i id="star" class="fa-solid fa-star"></i>
            <i id="star" class="fa-solid fa-star"></i>
            <i id="star" class="fa-solid fa-star"></i>
            <i id="star"class="fa-solid fa-star"></i>
            <i id="star" class="fa-solid fa-star"></i>
         </div>
         <p>I order bouquet with cake on my friend birthday.Delivered at minight 12am thank you</p>
        </div>
        <div class="review1">
            <h3>M</h3>
           <h4>Maddy</h4>
           <div class="all">
             <i id="star" class="fa-solid fa-star"></i>
             <i id="star" class="fa-solid fa-star"></i>
             <i id="star" class="fa-solid fa-star"></i>
             <i id="star"class="fa-solid fa-star"></i>
             <i class="fa-solid fa-star"></i>
          </div>
          <p>Fresh flowers time on delivery.Good quality I order Red color bouquet on my Mother birthday.</p>
         </div>
         <div class="review1">
            <h3>A</h3>
           <h4>Andros</h4>
           <div class="all">
             <i id="star" class="fa-solid fa-star"></i>
             <i id="star" class="fa-solid fa-star"></i>
             <i id="star" class="fa-solid fa-star"></i>
             <i id="star"class="fa-solid fa-star"></i>
             <i id="star" class="fa-solid fa-star"></i>
          </div>
          <p>It was a wonderful experience.The cake was obsolutey tasted yummy.</p>
         </div>
    </div>
  <div class="customer-part1">
     <div class="review2">
        <h3>S</h3>
       <h4>Santhosh</h4>
       <div class="all">
         <i id="star" class="fa-solid fa-star"></i>
         <i id="star" class="fa-solid fa-star"></i>
         <i id="star" class="fa-solid fa-star"></i>
         <i id="star"class="fa-solid fa-star"></i>
         <i class="fa-solid fa-star"></i>
      </div>
      <p>This was great services the flower quality is excellent.I order Anniversary bouquet on my Wife.</p>
     </div>
     <div class="review2">
         <h3>J</h3>
         <h4>Jasmine</h4>
         <div class="all">
           <i id="star" class="fa-solid fa-star"></i>
            <i id="star" class="fa-solid fa-star"></i>
            <i id="star" class="fa-solid fa-star"></i>
           <i class="fa-solid fa-star"></i>
           <i class="fa-solid fa-star"></i>
        </div>
       <p>Safe and fast delivery. Cake condition is also good.thank you Flower Bouquet and specially thanks to San (delivery guy) Who delivered the cake safely.</p>
     </div>
   </div>
    
    
</body>
</html>